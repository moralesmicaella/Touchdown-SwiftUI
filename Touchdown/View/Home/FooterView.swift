//
//  FooterView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/21/22.
//

import SwiftUI

struct FooterView: View {
  // MARK: - BODY
  var body: some View {
    VStack(alignment: .center, spacing: 20) {
      Text("We offer the most cutting edge, comfortable, lightweight, and durable football helmets in the market at affordable prices.")
        .multilineTextAlignment(.center)
        .layoutPriority(2)
      
      Image(logoLineal)
        .renderingMode(.template)
        .foregroundColor(.gray)
        .layoutPriority(0)
      
      Text("Copyright © Micaella Morales\nAll right reserved")
        .font(.footnote)
        .fontWeight(.bold)
        .multilineTextAlignment(.center)
        .layoutPriority(1)
    }
    .foregroundColor(.gray)
    .padding()
  }
}

// MARK: - PREVIEW
struct FooterView_Previews: PreviewProvider {
  static var previews: some View {
    FooterView()
      .previewLayout(.sizeThatFits)
      .background(colorBackground)
  }
}
