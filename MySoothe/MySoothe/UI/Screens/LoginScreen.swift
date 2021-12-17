//
//  LoginScreen.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/16/21.
//

import SwiftUI

struct LoginScreen: View {
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
                
                MySootheTextField(Res.strings.logInPasswordLabel, text: $password, type: .password)
                
                MySootheButton(text: Res.strings.logIn)
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
        LoginScreen()
        LoginScreen()
            .preferredColorScheme(.dark)
    }
}
