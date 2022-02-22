//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/21/22.
//

import SwiftUI

struct FeaturedTabView: View {
  // MARK: - BODY
  var body: some View {
    TabView {
      ForEach(players) { player in
        FeaturedItemView(player: player)
          .padding(.top, 10)
          .padding(.horizontal, 15)
      }
    }
    .tabViewStyle(.page)
  }
}

// MARK: - PREVIEW
struct FeaturedTabView_Previews: PreviewProvider {
  static var previews: some View {
    FeaturedTabView()
      .background(Color.gray)
  }
}
