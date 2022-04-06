//
//  BloomApp.swift
//  Bloom
//
//  Created by Felipe Joglar on 3/22/22.
//

import SwiftUI

@main
struct BloomApp: App {
    
    let tabs = [
        TabContent(
            title: Res.strings.homeMenuHome,
            icon: Res.icons.home,
            content: AnyView(
                HomeScreen(
                    categories: Repository.categories,
                    plants: Repository.plants
                )
            )
        ),
        TabContent(
            title: Res.strings.homeMenuFavorites,
            icon: Res.icons.favoriteBorder,
            content: AnyView(
                BloomContainer {
                    Text(Res.strings.homeMenuFavorites)
                        .font(Theme.fonts.h1)
                        .foregroundColor(Theme.colors.onBackground)
                }
            )
        ),
        TabContent(
            title: Res.strings.homeMenuProfile,
            icon: Res.icons.accountCircle,
            content: AnyView(
                BloomContainer {
                    Text(Res.strings.homeMenuProfile)
                        .font(Theme.fonts.h1)
                        .foregroundColor(Theme.colors.onBackground)
                }
            )
        ),
        TabContent(
            title: Res.strings.homeMenuCart,
            icon: Res.icons.shoppingCart,
            content: AnyView(
                BloomContainer {
                    Text(Res.strings.homeMenuCart)
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
