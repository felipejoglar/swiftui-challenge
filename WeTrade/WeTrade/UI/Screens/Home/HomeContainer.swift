//
//  HomeContainer.swift
//  WeTrade
//
//  Created by Felipe Joglar on 22/4/22.
//

import SwiftUI

struct HomeContainer: View {
    let tabs: [TabItem]
    
    @State private var selectedTab: Int = 0
    
    var body: some View {
        WeTradeContainer {
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
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        let tabs = [
            TabItem(
                title: Res.strings.homeMenuAccount,
                content: AnyView(HomeScreen(stocks: Repository.stocks))
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
        
        HomeContainer(tabs: tabs)
        HomeContainer(tabs: tabs)
            .preferredColorScheme(.dark)
    }
}
