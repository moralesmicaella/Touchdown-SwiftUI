//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/24/22.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
  // MARK: - PROPERTIES
  @State var counter: Int = 0
  
  // MARK: - BODY
  var body: some View {
    HStack(alignment: .center, spacing: 6) {
      Button {
        if counter > 0 {
          counter -= 1
        }
      } label: {
        Image(systemName: "minus.circle")
      }
      .buttonStyle(.plain)
      
      Text("\(counter)")
        .fontWeight(.semibold)
        .frame(minWidth: 36)
      
      Button {
        if counter < 100 {
          counter += 1
        }
      } label: {
        Image(systemName: "plus.circle")
      }
      .buttonStyle(.plain)

      Spacer()
      
      Button {
      } label: {
        Image(systemName: "heart.circle")
          .foregroundColor(.pink)
      }
      .buttonStyle(.plain)

    }
    .font(.system(.title, design: .rounded))
    .foregroundColor(.black)
    .imageScale(.large)
  }
}

// MARK: - PREVIEW
struct QuantityFavoriteDetailView_Previews: PreviewProvider {
  static var previews: some View {
    QuantityFavoriteDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
