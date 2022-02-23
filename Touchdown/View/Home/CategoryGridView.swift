//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/22/22.
//

import SwiftUI

struct CategoryGridView: View {
  // MARK: - BODY
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing) {
        Section {
          ForEach(categories) { category in
            CategoryItemView(category: category)
          }
        } header: {
          SectionView(rotationDirection: .counterclockwise)
        } footer: {
          SectionView(rotationDirection: .clockwise)
        }

      }
      .frame(height: 140)
      .padding(.horizontal, 15)
      .padding(.vertical, 10)
    }
  }
}

// MARK: - PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryGridView()
      .previewLayout(.sizeThatFits)
      .padding()
      .background(colorBackground)
  }
}
