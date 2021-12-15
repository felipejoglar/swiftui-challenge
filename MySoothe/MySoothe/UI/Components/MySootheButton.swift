//
//  MySootheButton.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/15/21.
//

import SwiftUI

struct MySootheButton: View {
    private let text: LocalizedStringKey
    private let backgroundColor: Color
    private let onBackgroundColor: Color
    private let onClick: () -> Void
    
    init(
        text: LocalizedStringKey,
        backgroundColor: Color = Theme.colors.primary,
        onBackgroundColor: Color = Theme.colors.onPrimary,
        onClick: @escaping () -> Void = {}
    ) {
        self.text = text
        self.backgroundColor = backgroundColor
        self.onBackgroundColor = onBackgroundColor
        self.onClick = onClick
    }
    
    var body: some View {
        Button(action: onClick) {
            Text(text)
                .font(Theme.fonts.button)
                .textCase(.uppercase)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: 72)
                .background(backgroundColor)
                .foregroundColor(onBackgroundColor)
                .cornerRadius(16)
        }
        .buttonStyle(.plain)
    }
}

struct MySootheButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MySootheButton(text: "My Soothe")
            MySootheButton(text: "My Soothe")
                .preferredColorScheme(.dark)
        }
        .padding()
    }
}

