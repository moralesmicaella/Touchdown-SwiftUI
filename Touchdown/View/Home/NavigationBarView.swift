//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/21/22.
//

import SwiftUI

struct NavigationBarView: View {
  // MARK: - PROPERTIES
  @State private var isAnimating: Bool = false
  
  // MARK: - BODY
  var body: some View {
    HStack {
      Button {
      } label: {
        Image(systemName: "magnifyingglass")
          .font(.title)
          .foregroundColor(.black)
      }
      .buttonStyle(.plain)
      
      Spacer()
      
      LogoView()
        .opacity(isAnimating ? 1 : 0)
        .offset(x: 0, y: isAnimating ? 0 : -25)
        .animation(.easeOut(duration: 0.5), value: isAnimating)
        .onAppear {
          isAnimating = true
        }
      
      Spacer()
      
      Button {
      } label: {
        ZStack {
          Image(systemName: "cart")
            .font(.title)
            .foregroundColor(.black)
          
          Circle()
            .fill(Color.red)
            .frame(width: 14, height: 14, alignment: .center)
            .offset(x: 13, y: -10)
        }
      }
      .buttonStyle(.plain)
      
    }
  }
}

// MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBarView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
