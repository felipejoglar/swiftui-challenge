//
//  ContentView.swift
//  WeTrade
//
//  Created by AsturianCoder on 7/4/22.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        WeTradeContainer {
            Image(Res.images.welcomeBackground)
                .centerCropped()
            
            Image(Res.images.logo)
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
