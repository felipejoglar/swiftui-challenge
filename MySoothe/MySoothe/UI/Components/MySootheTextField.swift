//
//  MySootheTextField.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/17/21.
//

import SwiftUI
import Components

struct MySootheTextField: View {
    
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
                .accentColor(Theme.colors.onSurface)
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

struct MySootheTextField_Previews: PreviewProvider {
    @State static var text: String = String()
    
    static var previews: some View {
        let view = MySootheTextField("My Soothe", text: $text)
        let viewWithIcon = MySootheTextField("My Soothe", text: $text, leadingIcon: Res.icons.search)
        
        Group {
            view
            view.preferredColorScheme(.dark)
            viewWithIcon
            viewWithIcon.preferredColorScheme(.dark)
        }
        .padding()
        .previewLayout(.sizeThatFits)
        .background(Theme.colors.background)
    }
}
