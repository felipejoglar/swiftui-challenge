//
//  LogInScreen.swift
//  Bloom
//
//  Created by Felipe Joglar on 3/23/22.
//

import SwiftUI

struct LogInScreen: View {
    var onLoginClick: () -> Void = {}
    
    @State private var email: String = String()
    @State private var password: String = String()
    
    var body: some View {
        BloomContainer {
            VStack {
                Text(Res.strings.logInTitle)
                    .font(Theme.fonts.h1)
                    .foregroundColor(Theme.colors.onBackground)
                    .fillMaxWidth()
                    .frame(height: 184, alignment: .bottom)
                
                BloomTextField(Res.strings.logInEmailLabel, text: $email)
                    .keyboardType(.emailAddress)
                
                BloomTextField(Res.strings.logInPasswordLabel, text: $password, type: .password)
                
                (Text(Res.strings.logInPoliciesDisclaimerFirst) +
                 Text(Res.strings.logInTOS).underline() +
                 Text(Res.strings.logInPoliciesDisclaimerSecond) +
                  Text(Res.strings.logInPrivacy).underline())
                    .multilineTextAlignment(.center)
                    .font(Theme.fonts.body2)
                    .foregroundColor(Theme.colors.onBackground)
                    .fillMaxWidth()
                    .padding(.bottom, 8)
                
                BloomButton(
                    text: Res.strings.logIn
                ) {
                    onLoginClick()
                }
                .fillMaxWidth()
                
                Spacer()
            }
            .padding(.horizontal, 16)
        }
    }
}

struct LogInScreen_Previews: PreviewProvider {
    static var previews: some View {
        LogInScreen()
        LogInScreen()
            .preferredColorScheme(.dark)
    }
}
