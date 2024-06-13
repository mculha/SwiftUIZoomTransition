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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    StockMarketView()
}
