//
//  LoginScreen.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/16/21.
//

import SwiftUI
import Components

struct LoginScreen: View {
    var onLoginClick: () -> Void
    
    @State private var email: String = String()
    @State private var password: String = String()
    
    var body: some View {
        MySootheContainer {
            Image(Res.images.loginBackground)
                .centerCropped()
            
            VStack {
                Text(Res.strings.logIn)
                    .font(Theme.fonts.h1)
                    .foregroundColor(Theme.colors.onBackground)
                    .textCase(.uppercase)
                    .fillMaxWidth()
                    .frame(height: 200, alignment: .bottom)
                    .padding(.bottom, 24)
                
                MySootheTextField(Res.strings.logInEmailLabel, text: $email)
                    .keyboardType(.emailAddress)
                    .padding(.horizontal, 16)
                
                MySootheTextField(Res.strings.logInPasswordLabel, text: $password, type: .password)
                    .padding(.horizontal, 16)
                
                MySootheButton(text: Res.strings.logIn) {
                    onLoginClick()
                }
                    .padding(.horizontal, 16)
                
                (Text(Res.strings.logInNoAccountQuestion) +
                 Text(Res.strings.signUp).underline())
                    .font(Theme.fonts.body1)
                    .foregroundColor(Theme.colors.onBackground)
                    .fillMaxWidth()
                    .padding(.horizontal, 16)
                    .frame(height: 32)
                
                Spacer()
            }
            .fillMaxSize()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen(onLoginClick: {})
        LoginScreen(onLoginClick: {})
            .preferredColorScheme(.dark)
    }
}
