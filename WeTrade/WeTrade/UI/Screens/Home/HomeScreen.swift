//
//  HomeScreen.swift
//  WeTrade
//
//  Created by Felipe Joglar on 26/4/22.
//

import SwiftUI

struct HomeScreen: View {
    let stocks: [Stock]
    
    @State private var bottomSheetShown = false
    private let filterOptions = [
        Res.strings.homeAccountFilterWeek,
        Res.strings.homeAccountFilterETFs,
        Res.strings.homeAccountFilterStocks,
        Res.strings.homeAccountFilterFunds,
        Res.strings.homeAccountFilterCrypto,
        Res.strings.homeAccountFilterNFTs
    ]
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text(Res.strings.homeAccountBalance)
                    .font(Theme.fonts.subtitle1)
                    .foregroundColor(Theme.colors.onBackground)
                    .frame(height: 32, alignment: .bottom)
                
                Text(Res.strings.homeAccountTotal)
                    .font(Theme.fonts.h1)
                    .foregroundColor(Theme.colors.onBackground)
                    .frame(height: 64, alignment: .bottom)
                
                Text(Res.strings.homeAccountTodayDiff)
                    .font(Theme.fonts.subtitle1)
                    .foregroundColor(Theme.colors.custom1)
                    .frame(height: 36, alignment: .bottom)
                
                WeTradeButton(text: Res.strings.homeAccountTransact)
                    .padding(.horizontal, 16)
                    .padding(.top, 24)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(filterOptions.indices, id: \.self) { index in
                            let filterName = filterOptions[index]
                            let image = (index == 0) ? Res.icons.expandMore : nil
                            FilterView(filterName: filterName, image: image)
                        }
                    }
                    .padding(.horizontal, 16)
                }
                .padding(.top, 8)
                
                Image(Res.images.homeIllos)
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    .padding(.bottom, 32)
                
                
                Spacer()
            }
            
            BottomSheetView(
                isOpen: self.$bottomSheetShown,
                maxHeight: geometry.size.height,
                headerView: { StockHeaderView() },
                content: { StocksView(stocks: stocks) }
            )
        }
    }
}

struct HomeContent_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeScreen(stocks: Repository.stocks)
            HomeScreen(stocks: Repository.stocks)
                .preferredColorScheme(.dark)
        }
        .padding(.top, 48)
        .ignoresSafeArea()
        .background(Theme.colors.background)
    }
}
