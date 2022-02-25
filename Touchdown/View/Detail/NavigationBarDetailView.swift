//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/24/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
  // MARK: - BODY
  var body: some View {
    HStack {
      Button {
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
  }
}
