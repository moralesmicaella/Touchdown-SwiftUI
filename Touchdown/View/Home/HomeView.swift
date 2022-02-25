//
//  HomeView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/21/22.
//

import SwiftUI

struct HomeView: View {
  // MARK: - PROPERTIES
  @EnvironmentObject var shop: Shop
  
  // MARK: - BODY
  var body: some View {
    VStack {
      if !shop.showingProduct && shop.selectedProduct == nil {
        VStack {
        NavigationBarView()
          .padding()
          .background(.white)
          .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
        
        ScrollView(.vertical, showsIndicators: false) {
          VStack {
            FeaturedTabView()
              .frame(minHeight: 256)
              .padding(.vertical, 10)
            
            CategoryGridView()
            
            TitleView(title: "Helmets")
            
            LazyVGrid(columns: gridLayout, spacing: 15) {
              ForEach(products) { product in
                ProductItemView(product: product)
                  .onTapGesture {
                    feedback.impactOccurred()
                    withAnimation(.easeOut) {
                      shop.selectedProduct = product
                      shop.showingProduct = true
                    }
                  }
              }
            }
            .padding(.horizontal, 15)
            
            TitleView(title: "Brands")
            
            BrandGridView()
            
            FooterView()
              .padding(.horizontal)
          }
        }
      }
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
      } else {
        ProductDetailView()
      }
    }
  }
}

// MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
      .environmentObject(Shop())
  }
}
