//
//  ContentView.swift
//  SwiftUIZoomTransition
//
//  Created by Melih Çulha on 13.06.2024.
//

import SwiftUI

struct StockMarketView: View {
    
    @State private var viewModel: StockMarketViewModel = .init()
    @Namespace var animation
    
    var body: some View {
        NavigationStack(path: $viewModel.path) {
            List(viewModel.stocks) { stock in
                StockRow(stock: stock)
                    .onTapGesture { viewModel.path.append(stock) }
                    .matchedTransitionSource(id: stock.id, in: animation)
            }
            .navigationDestination(for: StockMarketModel.self) { stock in
                StockMarketDetailView(stock: stock)
                    .navigationTransition(.zoom(sourceID: stock.id, in: animation))
            }
        }
    }
}

#Preview {
    StockMarketView()
}
