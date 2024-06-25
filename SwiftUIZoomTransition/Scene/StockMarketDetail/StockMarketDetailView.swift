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
        VStack {
            Image(stock.image)
                .resizable()
                .frame(width: 150, height: 150)
                .scaledToFit()
            
            VStack(alignment: .center, spacing: 10) {
                Text(stock.title)
                    .bold()
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
                
                Text(stock.description)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center)
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    StockMarketDetailView(stock: .init(id: 1, title: "Dummy Title", description: "Dummy Description", image: "stock_market_1"))
}
