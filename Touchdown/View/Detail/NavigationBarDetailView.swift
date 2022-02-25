//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/24/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
  // MARK: - PROPERTIES
  @EnvironmentObject var shop: Shop
  
  // MARK: - BODY
  var body: some View {
    HStack {
      Button {
        feedback.impactOccurred()
        withAnimation(.easeIn) {
          shop.selectedProduct = nil
          shop.showingProduct = false
        }
      } label: {
        Image(systemName: "chevron.left")
          .font(.title)
          .foregroundColor(.white)
      }
      .buttonStyle(.plain)
      
      Spacer()
      
      Button {
      } label: {
        Image(systemName: "cart")
          .font(.title)
          .foregroundColor(.white)
      }
      .buttonStyle(.plain)

    }
  }
}

// MARK: - PREVIEW
struct NavigationBarDetailView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBarDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
      .background(Color.gray)
      .environmentObject(Shop())
  }
}
