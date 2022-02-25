//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/24/22.
//

import SwiftUI

struct HeaderDetailView: View {
  // MARK: - PROPERTIES
  @EnvironmentObject var shop: Shop
  
  // MARK: - BODY
  var body: some View {
    VStack(alignment: .leading, spacing: 6) {
      Text("Protective Gear")
      
      Text(shop.selectedProduct?.name ?? sampleProduct.name)
        .font(.largeTitle)
        .fontWeight(.black)
    }
    .foregroundColor(.white)
  }
}

// MARK: - PREVIEW
struct HeaderDetailView_Previews: PreviewProvider {
  static var previews: some View {
    HeaderDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
      .background(Color.gray)
      .environmentObject(Shop())
  }
}
