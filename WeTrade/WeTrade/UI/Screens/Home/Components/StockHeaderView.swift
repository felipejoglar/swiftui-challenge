//
//  StockHeaderView.swift
//  WeTrade
//
//  Created by Felipe Joglar on 26/4/22.
//

import SwiftUI

struct StockHeaderView: View {
    
    var body: some View {
        Text(Res.strings.homeAccountPositionsTitle)
            .font(Theme.fonts.subtitle1)
            .foregroundColor(Theme.colors.onSurface)
            .frame(height: 64)
            .fillMaxWidth()
    }
}

struct StockHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StockHeaderView()
            StockHeaderView()
                .preferredColorScheme(.dark)
        }
        .padding()
        .previewLayout(.sizeThatFits)
        .background(Theme.colors.surface)
    }
}
