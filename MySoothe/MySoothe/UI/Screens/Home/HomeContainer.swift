//
//  HomeContainer.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/29/21.
//

import SwiftUI

struct HomeContainer: View {
    private let tabs: [TabContent]
    
    init(tabs: [TabContent]) {
        self.tabs = tabs
        UITabBar.appearance().backgroundColor = UIColor(Theme.colors.background)
    }
    
    var body: some View {
        TabView {
            ForEach(tabs) { tab in
                tab.content
                    .tabItem {
                        Label(tab.title, systemImage: tab.icon)
                            .textCase(.uppercase)
                            .font(Theme.fonts.caption)
                    }
            }
        }
        .accentColor(Theme.colors.onBackground)
        .overlay(HomeActionButton().padding(.bottom, 21), alignment: .bottom)
    }
}

struct HomeContainer_Previews: PreviewProvider {
    static var previews: some View {
        let tabs = [
            TabContent(
                title: Res.strings.homeContainerHomeTabTitle,
                icon: Res.icons.homeTab,
                content: AnyView(
                    HomeScreen(
                        favoriteCollections: Repository.favoriteCollections,
                        alignYourMindCollections: Repository.alignYourMindCollections,
                        alignYourBodyCollections: Repository.alignYourBodyCollections
                    )
                )
            ),
            TabContent(
                title: Res.strings.homeContainerProfileTabTitle,
                icon: Res.icons.profileTab,
                content: AnyView(
                    MySootheContainer {
                        Text(Res.strings.homeContainerProfileTabTitle)
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
