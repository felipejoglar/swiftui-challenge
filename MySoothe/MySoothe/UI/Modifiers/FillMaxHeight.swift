//
//  FillMaxHeight.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/16/21.
//

import SwiftUI

struct FillMaxHeight: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(maxHeight: .infinity)
    }
}

extension View {
    func fillMaxHeight() -> some View {
        return self.modifier(FillMaxHeight())
    }
}

