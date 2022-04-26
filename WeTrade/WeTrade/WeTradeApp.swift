//
//  WeTradeApp.swift
//  WeTrade
//
//  Created by Felipe Joglar on 7/4/22.
//

import SwiftUI

@main
struct WeTradeApp: App {
    
    let tabs = [
        TabContent(
            title: Res.strings.homeMenuAccount,
            content: AnyView(HomeScreen(stocks: Repository.stocks))
        ),
        TabContent(
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
        TabContent(
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
    
    var body: some Scene {
        WindowGroup {
            HomeContainer(tabs: tabs)
        }
    }
}
