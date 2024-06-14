//
//  StockMarketDetailView.swift
//  SwiftUIZoomTransition
//
//  Created by Melih Çulha on 14.06.2024.
//

import SwiftUI

struct StockMarketDetailView: View {
    
    let stock: StockMarketModel
    
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    StockMarketDetailView(stock: .init(title: "Dummy Title", description: "Dummy Description", image: "stock_market_1"))
}
