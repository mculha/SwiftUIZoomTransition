//
//  ContentView.swift
//  SwiftUIZoomTransition
//
//  Created by Melih Çulha on 13.06.2024.
//

import SwiftUI

struct StockMarketView: View {
    
    @State private var viewModel: StockMarketViewModel = .init()
    
    var body: some View {
        
        List(viewModel.stocks) { stock in
            StockRow(stock: stock)
        }
    }
}

#Preview {
    StockMarketView()
}

struct StockRow: View {
    let stock: StockMarketModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(stock.image)
                .resizable()
                .frame(width: 60, height: 60)
                .scaledToFit()
            
            VStack(alignment: .leading, spacing: 10) {
                Text(stock.title)
                    .bold()
                    .font(.system(size: 20))
                
                Text(stock.description)
                    .font(.system(size: 14))
                    .lineLimit(3)
                
            }
        }
        .padding()
        .listRowBackground(Color.clear)
        .listRowSeparator(.hidden)
        .listRowInsets(EdgeInsets(top: 10, leading: 2, bottom: 10, trailing: 2))
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(.gray.opacity(0.4), lineWidth: 1)
        )
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 15))
        .shadow(color: .gray.opacity(0.3), radius: 1, x: 0, y: 2)
    }
}
