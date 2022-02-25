//
//  Shop.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/24/22.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? = nil
}
