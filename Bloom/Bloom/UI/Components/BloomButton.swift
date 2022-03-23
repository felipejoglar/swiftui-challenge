//
//  BloomButton.swift
//  Bloom
//
//  Created by Felipe Joglar on 3/23/22.
//

import SwiftUI

struct BloomButton: View {
    private let text: LocalizedStringKey
    private let backgroundColor: Color
    private let onBackgroundColor: Color
    private let onClick: () -> Void
    
    private let MIN_HEIGHT: CGFloat = 48
    
    init(
        text: LocalizedStringKey,
        backgroundColor: Color = Theme.colors.secondary,
        onBackgroundColor: Color = Theme.colors.onSecondary,
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
                .padding()
                .frame(maxWidth: .infinity, minHeight: MIN_HEIGHT, maxHeight: 72)
                .background(backgroundColor)
                .foregroundColor(onBackgroundColor)
                .cornerRadius(MIN_HEIGHT)
        }
        .buttonStyle(.plain)
    }
}

struct BloomButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BloomButton(text: "Bloom button")
            BloomButton(text: "Bloom button")
                .preferredColorScheme(.dark)
        }
        .padding()
        .previewLayout(.sizeThatFits)
        .background(Theme.colors.background)
    }
}
