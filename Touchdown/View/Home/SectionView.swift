//
//  SectionView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/22/22.
//

import SwiftUI

struct SectionView: View {
  // MARK: - PROPERTIES
  enum RotationDirection: Double {
    case clockwise = 90
    case counterclockwise = -90
  }
  let rotationDirection: RotationDirection
  
  // MARK: - BODY
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 12)
        .fill(colorGray)
        .frame(width: 85)
      
      VStack {
        Spacer()
        
        Text("Categories".uppercased())
          .font(.footnote)
          .fontWeight(.bold)
          .foregroundColor(.white)
          .frame(width: 100)
          .rotationEffect(Angle(degrees: rotationDirection.rawValue))
        
        Spacer()
      }
    }
  }
}

// MARK: - PREVIEW
struct SectionView_Previews: PreviewProvider {
  static var previews: some View {
    SectionView(rotationDirection: .counterclockwise)
      .previewLayout(.fixed(width: 120, height: 240))
      .padding()
      .background(colorBackground)
  }
}
