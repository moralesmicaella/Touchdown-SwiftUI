//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/24/22.
//

import SwiftUI

struct AddToCartDetailView: View {
  // MARK: - BODY
  var body: some View {
    Button {
    } label: {
      Spacer()
      Text("Add to cart".uppercased())
        .font(.system(.title2, design: .rounded))
        .fontWeight(.bold)
        .foregroundColor(.white)
      Spacer()
    }
    .buttonStyle(.plain)
    .padding(15)
    .background(
      Color(
        red: sampleProduct.red,
        green: sampleProduct.green,
        blue: sampleProduct.blue
      )
        .clipShape(Capsule())
    )
    
  }
}

// MARK: - PREVIEW
struct AddToCartDetailView_Previews: PreviewProvider {
  static var previews: some View {
    AddToCartDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}