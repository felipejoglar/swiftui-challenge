//
//  ContentView.swift
//  WeTrade
//
//  Created by AsturianCoder on 7/4/22.
//

import SwiftUI

struct WelcomeScreen: View {
    var onLoginClick: () -> Void
    
    var body: some View {
        WeTradeContainer {
            Image(Res.images.welcomeBackground)
                .centerCropped()
            
            Image(Res.images.logo)
            
            VStack {
                Spacer()
                
                HStack {
                    WeTradeButton(text: Res.strings.welcomeGetStarted)
                    
                    WeTradeOutlinedButton(text: Res.strings.logIn) {
                        onLoginClick()
                    }
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 48)
            }
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen(onLoginClick: {})
        WelcomeScreen(onLoginClick: {})
            .preferredColorScheme(.dark)
    }
}
