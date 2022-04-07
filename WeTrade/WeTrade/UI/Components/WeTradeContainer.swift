//
//  WeTradeContainer.swift
//  WeTrade
//
//  Created by AsturianCoder on 8/4/22.
//

import SwiftUI
import Components

struct WeTradeContainer<Content: View>: View {
    private let background: Color
    private let content: () -> Content
    
    init(
        background: Color = Theme.colors.background,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.background = background
        self.content = content
    }
    
    var body: some View {
        ZStack(content: content)
            .fillMaxSize()
            .background(background)
            .ignoresSafeArea()
    }
}

struct WeTradeContainer_Previews: PreviewProvider {
    static var previews: some View {
        WeTradeContainer {
            Text("Hello, world!")
        }
        WeTradeContainer {
            Text("Hello, world!")
        }
        .preferredColorScheme(.dark)
    }
}
