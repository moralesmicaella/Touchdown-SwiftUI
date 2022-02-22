//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Micaella Morales on 2/21/22.
//

import Foundation

extension Bundle {
  func decodeJSON<T: Codable>(_ file: String) -> T {
    guard let url = self.url(forResource: file, withExtension: "json") else {
      fatalError("Failed to locate \(file) in bundle.")
    }
    
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) from bundle.")
    }
    
    let decoder = JSONDecoder()
    
    guard let decodedData = try? decoder.decode(T.self, from: data) else {
      fatalError("Failed to decode \(file) from bundle.")
    }
    
    return decodedData
  }
}
