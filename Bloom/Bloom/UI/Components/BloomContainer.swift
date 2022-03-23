//
//  BloomContainer.swift
//  Bloom
//
//  Created by Felipe Joglar on 3/23/22.
//

import SwiftUI
import Components

struct BloomContainer<Content: View> : View {
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

struct BloomContainer_Previews: PreviewProvider {
    static var previews: some View {
        BloomContainer {
            Text("Hello, world!")
        }
        BloomContainer {
            Text("Hello, world!")
        }
        .preferredColorScheme(.dark)
    }
}
