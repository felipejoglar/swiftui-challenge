//
//  WeTradeOutlinedButton.swift
//  WeTrade
//
//  Created by Felipe Joglar on 4/14/22.
//

import SwiftUI

struct WeTradeOutlinedButton: View {
    private let text: LocalizedStringKey
    private let onClick: () -> Void
    
    private let MIN_HEIGHT: CGFloat = 48
    
    init(
        text: LocalizedStringKey,
        onClick: @escaping () -> Void = {}
    ) {
        self.text = text
        self.onClick = onClick
    }
    
    var body: some View {
        Button(action: onClick) {
            Text(text)
                .font(Theme.fonts.button)
                .textCase(.uppercase)
                .padding()
                .frame(maxWidth: .infinity, minHeight: MIN_HEIGHT, maxHeight: MIN_HEIGHT)
                .foregroundColor(Theme.colors.primary)
                .overlay(
                    Capsule(style: .continuous)
                        .stroke(Theme.colors.primary, lineWidth: 1)
                )
        }
        .buttonStyle(.plain)
    }
}

struct WeTradeOutlinedButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WeTradeOutlinedButton(text: "We Trade button")
            WeTradeOutlinedButton(text: "We Trade button")
                .preferredColorScheme(.dark)
        }
        .padding()
        .previewLayout(.sizeThatFits)
        .background(Theme.colors.background)
    }
}
