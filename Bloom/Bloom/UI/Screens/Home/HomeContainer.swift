//
//  HomeContainer.swift
//  Bloom
//
//  Created by Felipe Joglar on 6/4/22.
//

import SwiftUI

struct HomeContainer: View {
    private let tabs: [TabContent]
    
    init(tabs: [TabContent]) {
        self.tabs = tabs
        UITabBar.appearance().backgroundColor = UIColor(Theme.colors.primary)
    }
    
    var body: some View {
        TabView {
            ForEach(tabs) { tab in
                tab.content
                    .tabItem {
                        Label(tab.title, systemImage: tab.icon)
                            .font(Theme.fonts.caption)
                    }
            }
        }
        .accentColor(Theme.colors.onPrimary)
    }
}

struct HomeContainer_Previews: PreviewProvider {
    static var previews: some View {
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
        
        HomeContainer(tabs: tabs)
        HomeContainer(tabs: tabs)
            .preferredColorScheme(.dark)
    }
}
