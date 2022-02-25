//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/24/22.
//

import SwiftUI

struct TopPartDetailView: View {
  // MARK: - PROPERTIES
  @State private var isAnimating: Bool = false
  
  // MARK: - BODY
  var body: some View {
    HStack(alignment: .center, spacing: 6) {
      VStack(alignment: .leading, spacing: 6) {
        Text("Price")
          .fontWeight(.semibold)
        
        Text(sampleProduct.formattedPrice)
          .font(.largeTitle)
          .fontWeight(.black)
          .scaleEffect(1.35, anchor: .leading)
      }
      .offset(y: isAnimating ? -50 : -75)
      
      Spacer()
      
      Image(sampleProduct.image)
        .resizable()
        .scaledToFit()
        .offset(y: isAnimating ? 0 : -35)
    }
    .onAppear {
      withAnimation(.easeOut(duration: 0.75)) {
        isAnimating = true
      }
    }
  }
}

// MARK: - PREVIEW
struct TopPartDetailView_Previews: PreviewProvider {
  static var previews: some View {
    TopPartDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
