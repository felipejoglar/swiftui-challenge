//
//  MySootheApp.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/15/21.
//

import SwiftUI

@main
struct MySootheApp: App {
    private let tabs = [
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
    
    var body: some Scene {
        WindowGroup {
            HomeContainer(tabs: tabs)
        }
    }
}
