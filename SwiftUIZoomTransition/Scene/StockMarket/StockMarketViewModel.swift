//
//  StockMarketViewModel.swift
//  SwiftUIZoomTransition
//
//  Created by Melih Çulha on 13.06.2024.
//

import SwiftUI

@Observable final class StockMarketViewModel {
    
    let stocks: [StockMarketModel]
    
    init() {
        let jsonDecoder: JSONDecoder = JSONDecoder()
        let path = Bundle.main.url(forResource: "dummy_data", withExtension: "json")!
        let data = try! Data(contentsOf: path)
        self.stocks = try! jsonDecoder.decode([StockMarketModel].self, from: data)
    }
    
}
