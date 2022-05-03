//
//  LoginScreen.swift
//  WeTrade
//
//  Created by Felipe Joglar on 19/4/22.
//

import SwiftUI

struct LoginScreen: View {
    var onLoginClick: () -> Void
    
    @State private var email: String = String()
    @State private var password: String = String()
    
    var body: some View {
        WeTradeContainer(
            background: Theme.colors.surface,
            alignment: .top
        ) {
            VStack {
                Image(Res.images.loginBackground)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 32)
                
                WeTradeTextField(
                    Res.strings.loginEmailHint,
                    text: $email, leadingIcon:
                        Res.icons.mailOutline
                )
                .keyboardType(.emailAddress)
                .padding(.horizontal, 16)
                
                WeTradeTextField(
                    Res.strings.loginPasswordHint,
                    text: $password,
                    leadingIcon: Res.icons.password
                )
                .padding(.horizontal, 16)
                .padding(.bottom, 8)
                
                WeTradeButton(text: Res.strings.logIn) {
                    onLoginClick()
                }
                .padding(.horizontal, 16)
                
                Spacer()
            }
            
            Text(Res.strings.loginTitle)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.white)
                .font(Theme.fonts.h2)
                .frame(height: 152, alignment: .bottom)
                .padding(.horizontal, 32)
        }
        .onAppear {
            setStatusBarStyle(.lightContent)
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen(onLoginClick: {})
        LoginScreen(onLoginClick: {})
            .preferredColorScheme(.dark)
    }
}
