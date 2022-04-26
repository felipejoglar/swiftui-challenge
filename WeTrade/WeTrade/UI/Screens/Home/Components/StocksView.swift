//
//  StocksView.swift
//  WeTrade
//
//  Created by AsturianCoder on 26/4/22.
//

import SwiftUI

struct StocksView: View {
    let stocks: [Stock]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 0) {
                ForEach(stocks) { stock in
                    StockView(stock: stock)
                }
            }
            .padding(.horizontal, 16)
        }
    }
}

struct StocksView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StocksView(stocks: Repository.stocks)
            StocksView(stocks: Repository.stocks)
                .preferredColorScheme(.dark)
        }
        .padding()
        .previewLayout(.sizeThatFits)
        .background(Theme.colors.surface)
    }
}
