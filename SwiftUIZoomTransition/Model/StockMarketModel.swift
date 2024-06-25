//
//  StockMarketModel.swift
//  SwiftUIZoomTransition
//
//  Created by Melih Çulha on 13.06.2024.
//

import Foundation

struct StockMarketModel: Decodable, Identifiable, Hashable {
    
    var id: Int
    let title: String
    let description: String
    let image: String
}
