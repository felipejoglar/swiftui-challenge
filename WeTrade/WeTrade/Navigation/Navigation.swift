//
//  Navigation.swift
//  WeTrade
//
//  Created by Felipe Joglar on 26/4/22.
//

import SwiftUI

class Navigation : ObservableObject {
    @Published var currentView: AnyView?
    
    private var welcomeScreen: AnyView?
    private var loginScreen: AnyView?
    private var homeScreen: AnyView?
    
    private let tabs = [
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
