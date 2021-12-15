//
//  MySootheContainer.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/15/21.
//

import SwiftUI

struct MySootheContainer<Content: View> : View {
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

struct MySootheContainer_Previews: PreviewProvider {
    static var previews: some View {
        MySootheContainer {
            Text("Hello, world!")
        }
        MySootheContainer {
            Text("Hello, world!")
        }
        .preferredColorScheme(.dark)
    }
}
