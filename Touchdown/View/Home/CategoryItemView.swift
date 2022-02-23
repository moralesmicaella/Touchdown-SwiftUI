//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/22/22.
//

import SwiftUI

struct CategoryItemView: View {
  // MARK: - PROPERTIES
  let category: Category
  
  // MARK: - BODY
  var body: some View {
    Button(action: {}) {
      HStack(alignment: .center, spacing: 6) {
        Image(category.image)
          .renderingMode(.template)
          .resizable()
          .scaledToFit()
          .frame(width: 30, height: 30, alignment: .center)
          .foregroundColor(.gray)
        
        Text(category.name.uppercased())
          .fontWeight(.light)
          .foregroundColor(.gray)
          .multilineTextAlignment(.center)
          .minimumScaleFactor(0.5)
          .frame(width: 80, height: 30, alignment: .leading)
      }
      .padding()
      .background(Color.white.cornerRadius(12))
      .background(
        RoundedRectangle(cornerRadius: 12)
          .stroke(Color.gray, lineWidth: 1)
      )
    }
    .buttonStyle(.plain)
  }
}

// MARK: - PREVIEW
struct CategoryItemView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryItemView(category: categories[13])
      .previewLayout(.sizeThatFits)
      .padding()
      .background(colorBackground)
  }
}
