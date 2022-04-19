//
//  WeTradeTextField.swift
//  WeTrade
//
//  Created by AsturianCoder on 19/4/22.
//

import SwiftUI

struct WeTradeTextField: View {

    enum TextFieldType {
        case text
        case password
    }
    
    private let hint: LocalizedStringKey
    private let text: Binding<String>
    private let type: TextFieldType
    private let leadingIcon: String?
    
    init(
        _ titleKey: LocalizedStringKey,
        text: Binding<String>,
        type: TextFieldType = .text,
        leadingIcon: String? = nil
    ) {
        self.hint = titleKey
        self.text = text
        self.type = type
        self.leadingIcon = leadingIcon
    }
    
    @ViewBuilder
    var body: some View {
        ZStack(alignment: .leading) {
            getTextField()
                .frame(height: 56)
                .padding(.horizontal, leadingIcon != nil ? 40 : 24)
                .foregroundColor(Theme.colors.onSurface)
                .font(Theme.fonts.body1)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Theme.colors.textFieldBorder, lineWidth: 2)
                )
                .cornerRadius(4, corners: .allCorners)
            if leadingIcon != nil { getLeadingIcon(name: leadingIcon!) }
        }
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
    
    @ViewBuilder
    private func getLeadingIcon(name: String) -> some View {
        Image(systemName: name)
            .foregroundColor(Theme.colors.onSurface)
            .frame(width: 18, height: 18)
            .padding(.leading, 16)
    }
}

struct WeTradeTextField_Previews: PreviewProvider {
    @State static var text: String = String()
    
    static var previews: some View {
        let view = WeTradeTextField("We Trade", text: $text)
        let viewWithIcon = WeTradeTextField("We Trade", text: $text, leadingIcon: Res.icons.mailOutline)
        
        Group {
            view
            view.preferredColorScheme(.dark)
            viewWithIcon
            viewWithIcon.preferredColorScheme(.dark)
        }
        .padding()
        .previewLayout(.sizeThatFits)
        .background(Theme.colors.surface)
    }
}
