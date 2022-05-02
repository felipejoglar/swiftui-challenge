//
//  HomeContainer.swift
//  WeTrade
//
//  Created by Felipe Joglar on 22/4/22.
//

import SwiftUI

struct HomeContainer: View {
    let tabs: [TabItem]
    let stocks: [Stock]
    
    @State private var bottomSheetShown = false
    @State private var selectedTab: Int = 0
    
    var body: some View {
        WeTradeContainer {
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    TabView(
                        selection: $selectedTab,
                        tabs: tabs.map({ $0.title})
                    ) { title, isSelected in
                        VStack {
                            Spacer()
                            Text(title)
                                .textCase(.uppercase)
                                .font(Theme.fonts.button)
                                .foregroundColor(isSelected ? Theme.colors.onBackground : Theme.colors.onBackground.opacity(0.5))
                                .padding(.bottom, 8)
                        }
                    }.fillMaxWidth()
                    
                    tabs[selectedTab].content
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
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        let tabs = [
            TabItem(
                title: Res.strings.homeMenuAccount,
                content: AnyView(HomeScreen())
            ),
            TabItem(
                title: Res.strings.homeMenuWatchlist,
                content: AnyView(
                    WeTradeContainer {
                        Text(Res.strings.homeMenuWatchlist)
                            .textCase(.uppercase)
                            .font(Theme.fonts.h1)
                            .foregroundColor(Theme.colors.onBackground)
                    }
                )
            ),
            TabItem(
                title: Res.strings.homeMenuProfile,
                content: AnyView(
                    WeTradeContainer {
                        Text(Res.strings.homeMenuProfile)
                            .textCase(.uppercase)
                            .font(Theme.fonts.h1)
                            .foregroundColor(Theme.colors.onBackground)
                    }
                )
            )
        ]
        
        HomeContainer(tabs: tabs, stocks: Repository.stocks)
        HomeContainer(tabs: tabs, stocks: Repository.stocks)
            .preferredColorScheme(.dark)
    }
}
