//
//  ContentView.swift
//  Bloom
//
//  Created by Felipe Joglar on 3/22/22.
//

import SwiftUI

struct WelcomeScreen: View {
    var onLoginClick: () -> Void = {}
    
    var body: some View {
        BloomContainer(
            background: Theme.colors.primary
        ) {
            Image(Res.images.welcomeBackground)
                .centerCropped()
            
            VStack {
                Image(Res.images.welcomeIllos)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 312)
                    .offset(x: 88)
                
                Image(Res.images.logo)
                    .padding(.top, 48)
                
                Text("Beautiful home garden solutions")
                    .font(Theme.fonts.subtitle1)
                    .foregroundColor(Theme.colors.onBackground)
                    .fillMaxWidth()
                    .frame(height: 32, alignment: .bottom)
                    .padding(.bottom, 40)
                
                BloomButton(
                    text:"Create account"
                )
                .fillMaxWidth()
                
                BloomButton(
                    text: "Log in",
                    backgroundColor: Theme.colors.transparent,
                    onBackgroundColor: Theme.colors.onBackground
                ) {
                    onLoginClick()
                }
                .fillMaxWidth()
                
                Spacer()
            }
            .padding(.top, 136)
            .padding(.horizontal, 16)
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
        WelcomeScreen()
            .preferredColorScheme(.dark)
    }
}
