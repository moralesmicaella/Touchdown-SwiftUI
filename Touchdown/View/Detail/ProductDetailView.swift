//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/24/22.
//

import SwiftUI

struct ProductDetailView: View {
  // MARK: - PROPERTIES
  @EnvironmentObject var shop: Shop
  
  // MARK: - BODY
  var body: some View {
    VStack(alignment: .leading, spacing: 5) {
      NavigationBarDetailView()
        .padding(.horizontal)
      
      HeaderDetailView()
        .padding(.horizontal)
      
      TopPartDetailView()
        .padding(.horizontal)
        .zIndex(1)
      
      VStack(alignment: .center, spacing: 0) {
        RatingsSizesDetailView()
          .padding(.top, -20)
          .padding(.bottom, 10)
        
        ScrollView(.vertical, showsIndicators: false) {
          Text(shop.selectedProduct?.description ?? sampleProduct.description)
            .font(.system(.body, design: .rounded))
            .foregroundColor(.gray)
            .multilineTextAlignment(.leading)
        }
        
        QuantityFavoriteDetailView()
          .padding(.vertical, 10)
        
        AddToCartDetailView()
          .padding(.bottom, 10)
      }
      .padding(.horizontal)
      .background(
        Color.white
          .clipShape(CustomShape())
          .padding(.top, -105)
          .ignoresSafeArea(.all, edges: .bottom)
      )
      
    }
    .zIndex(0)
    .background(
      Color(
        red: shop.selectedProduct?.red ?? sampleProduct.red,
        green: shop.selectedProduct?.green ?? sampleProduct.green,
        blue: shop.selectedProduct?.blue ?? sampleProduct.blue
      ).ignoresSafeArea(.all, edges: .all)
    )
  }
}

// MARK: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView()
      .environmentObject(Shop())
  }
}
