//
//  Constant.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/21/22.
//

import SwiftUI

// Data
let players: [Player] = Bundle.main.decodeJSON("player")
let categories: [Category] = Bundle.main.decodeJSON("category")
let products: [Product] = Bundle.main.decodeJSON("product")
let brands: [Brand] = Bundle.main.decodeJSON("brand")
let sampleProduct: Product = products[0]

// Color
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// Image name
let logoLineal: String = "logo-lineal"
let logoDark: String = "logo-dark"

// Layout
let columnSpacing: CGFloat = 10
var gridLayout: [GridItem] {
  return Array(repeating: GridItem(.flexible()), count: 2)
}
