//
//  HomeView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/21/22.
//

import SwiftUI

struct HomeView: View {
  // MARK: - BODY
  var body: some View {
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
          
          FooterView()
            .padding(.horizontal)
        }
      }
    }
    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
  }
}

// MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
