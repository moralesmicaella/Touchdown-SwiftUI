//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/24/22.
//

import SwiftUI

struct AddToCartDetailView: View {
  // MARK: - PROPERTIES
  @EnvironmentObject var shop: Shop
  
  // MARK: - BODY
  var body: some View {
    Button {
      feedback.impactOccurred()
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
        red: shop.selectedProduct?.red ?? sampleProduct.red,
        green: shop.selectedProduct?.green ?? sampleProduct.green,
        blue: shop.selectedProduct?.blue ?? sampleProduct.blue
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
      .environmentObject(Shop())
  }
}
