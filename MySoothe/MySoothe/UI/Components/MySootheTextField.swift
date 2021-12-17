//
//  MySootheTextField.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/17/21.
//

import SwiftUI

struct MySootheTextField: View {
    
    enum TextFieldType {
        case text
        case password
    }
    
    private let hint: LocalizedStringKey
    private let text: Binding<String>
    private let type: TextFieldType
    
    init(_ titleKey: LocalizedStringKey, text: Binding<String>, type: TextFieldType = .text) {
        self.hint = titleKey
        self.text = text
        self.type = type
    }
    
    var body: some View {
        let textField = getTextField()
        
        textField
            .frame(height: 56)
            .padding(.horizontal, 24)
            .font(Theme.fonts.body1)
            .overlay(
                Rectangle()
                    .frame(height: 2, alignment: .bottom)
                    .foregroundColor(Theme.colors.onSurface)
                    .offset(x: 0, y: 27)
            )
            .background(Theme.colors.surface)
            .foregroundColor(Theme.colors.onSurface)
            .cornerRadius(4, corners: .topLeft)
            .cornerRadius(4, corners: .topRight)
            .padding(.horizontal, 16)
            .accentColor(Theme.colors.onSurface)
    }
    
    @ViewBuilder
    private func getTextField() -> some View {
        switch type {
        case .password:
            SecureField(hint, text: text)
        case .text:
            TextField(hint, text: text)
        }
    }
}

