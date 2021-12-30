//
//  FillMaxSize.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/15/21.
//

import SwiftUI

struct FillMaxSize: ViewModifier {
    private let alignment: Alignment
    
    init(alignment: Alignment) {
        self.alignment = alignment
    }
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: alignment)
    }
}

extension View {
    func fillMaxSize(alignment: Alignment = .center) -> some View {
        return self.modifier(FillMaxSize(alignment: alignment))
    }
}
