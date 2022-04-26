//
//  StockView.swift
//  WeTrade
//
//  Created by AsturianCoder on 26/4/22.
//

import SwiftUI

struct StockView: View {
    let stock: Stock
    
    var body: some View {
        VStack(spacing: 0) {
            Divider()
            HStack {
                VStack(spacing: 0) {
                    Text(stock.price)
                        .font(Theme.fonts.body1)
                        .foregroundColor(Theme.colors.onSurface)
                        .frame(height: 24, alignment: .bottom)
                    Text(stock.percentDelta)
                        .font(Theme.fonts.body1)
                        .foregroundColor(stock.color)
                        .padding(.bottom, 16)
                }
                .frame(width: 64, alignment: .leading)
                VStack(alignment: .leading, spacing: 0) {
                    Text(stock.name)
                        .font(Theme.fonts.h3)
                        .foregroundColor(Theme.colors.onSurface)
                        .frame(height: 24, alignment: .bottom)
                    Text(stock.company)
                        .font(Theme.fonts.body1)
                        .foregroundColor(Theme.colors.onSurface)
                        .padding(.bottom, 16)
                }
                Spacer()
                Image(stock.graph)
            }
        }
    }
}

private extension Stock {
    
    var color: Color {
        if percentDelta.contains("-") {
            return Theme.colors.custom2
        } else {
            return Theme.colors.custom1
        }
    }
}

struct StockView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StockView(stock: Repository.stocks.first!)
            StockView(stock: Repository.stocks.first!)
                .preferredColorScheme(.dark)
        }
        .padding()
        .previewLayout(.sizeThatFits)
        .background(Theme.colors.surface)
    }
}
