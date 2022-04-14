//
//  WeTradeButton.swift
//  WeTrade
//
//  Created by Felipe Joglar on 4/14/22.
//

import SwiftUI

struct WeTradeButton: View {
    private let text: LocalizedStringKey
    private let backgroundColor: Color
    private let onBackgroundColor: Color
    private let onClick: () -> Void
    
    private let MIN_HEIGHT: CGFloat = 48
    
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
                .frame(maxWidth: .infinity, minHeight: MIN_HEIGHT, maxHeight: MIN_HEIGHT)
                .background(backgroundColor)
                .foregroundColor(onBackgroundColor)
                .cornerRadius(MIN_HEIGHT)
        }
        .buttonStyle(.plain)
    }
}

struct WeTradeButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WeTradeButton(text: "We Trade button")
            WeTradeButton(text: "We Trade button")
                .preferredColorScheme(.dark)
        }
        .padding()
        .previewLayout(.sizeThatFits)
        .background(Theme.colors.background)
    }
}

