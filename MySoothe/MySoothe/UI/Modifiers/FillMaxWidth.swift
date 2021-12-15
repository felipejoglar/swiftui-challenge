//
//  FillMaxWidth.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/15/21.
//

import SwiftUI

struct FillMaxWidth: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
    }
}

extension View {
    func fillMaxWidth() -> some View {
        return self.modifier(FillMaxWidth())
    }
}

