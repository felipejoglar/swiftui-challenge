//
//  Navigation.swift
//  MySoothe
//
//  Created by Felipe Joglar on 1/3/22.
//

import SwiftUI

class Navigation : ObservableObject {
    @Published var currentView: AnyView?
    
    private var welcomeScreen: AnyView?
    private var loginScreen: AnyView?
    private var homeScreen: AnyView?
    
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
    
    init() {
        homeScreen = AnyView(HomeContainer(tabs: tabs))
        loginScreen = AnyView(LoginScreen(onLoginClick: loginScreenClick))
        welcomeScreen = AnyView(WelcomeScreen(onLoginClick: welcomeScreenClick))
        
        currentView = AnyView(self.welcomeScreen)
    }
    
    private func loginScreenClick() {
        withAnimation {
            self.currentView = self.homeScreen
        }
    }
    
    private func welcomeScreenClick() {
        withAnimation {
            self.currentView = self.loginScreen
        }
    }
}
