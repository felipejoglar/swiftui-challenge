//
//  WelcomeScreen.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/15/21.
//

import SwiftUI

struct WelcomeScreen: View {
    
    var body: some View {
        MySootheContainer {
            Image(Res.images.welcomeBackground)
                .centerCropped()
            
            VStack {
                Image(Res.images.logo)
                    .padding(.bottom, 24)
                
                MySootheButton(text: Res.strings.signUp) { 
                }
                .fillMaxWidth()
                
                MySootheButton(
                    text: Res.strings.logIn,
                    backgroundColor: Theme.colors.secondary,
                    onBackgroundColor: Theme.colors.onSecondary
                ) {
                }
                .fillMaxWidth()
            }
            .padding(.horizontal, 16)
            .fillMaxWidth()
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
