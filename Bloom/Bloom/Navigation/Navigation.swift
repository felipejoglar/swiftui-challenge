//
//  Navigation.swift
//  Bloom
//
//  Created by Felipe Joglar on 6/4/22.
//

import SwiftUI

class Navigation : ObservableObject {
    @Published var currentView: AnyView?
    
    private var welcomeScreen: AnyView?
    private var loginScreen: AnyView?
    private var homeScreen: AnyView?
    
    private let tabs = [
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
    
    init() {
        homeScreen = AnyView(HomeContainer(tabs: tabs))
        loginScreen = AnyView(LogInScreen(onLoginClick: loginScreenClick))
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
