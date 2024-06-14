//
//  StockMarketModel.swift
//  SwiftUIZoomTransition
//
//  Created by Melih Çulha on 13.06.2024.
//

struct StockMarketModel: Decodable, Identifiable, Hashable {
    
    var id: String {
        return title
    }
    
    let title: String
    let description: String
    let image: String
}
