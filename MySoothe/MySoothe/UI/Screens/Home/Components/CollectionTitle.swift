//
//  CollectionTitle.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/28/21.
//

import SwiftUI
import Components

struct CollectionTitle: View {
    let label: LocalizedStringKey
    
    var body: some View {
        Text(label)
            .frame(height: 40, alignment: .bottomLeading)
            .font(Theme.fonts.h2)
            .textCase(.uppercase)
            .foregroundColor(Theme.colors.onBackground)
            .padding(.horizontal, 16)
    }
}

struct CollectionTitle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CollectionTitle(label: "My soothe")
            CollectionTitle(label: "My soothe")
                .preferredColorScheme(.dark)
        }
        .fillMaxWidth()
        .padding(.vertical, 16)
        .background(Theme.colors.background)
        .previewLayout(.sizeThatFits)
    }
}
