//
//  FilterView.swift
//  WeTrade
//
//  Created by Felipe Joglar on 25/4/22.
//

import SwiftUI

struct FilterView: View {
    private let filterName: LocalizedStringKey
    private let image: String?
    
    private let HEIGHT: CGFloat = 40
    
    init(filterName: LocalizedStringKey, image: String? = nil) {
        self.filterName = filterName
        self.image = image
    }
    
    @ViewBuilder
    var body: some View {
        getText()
            .font(Theme.fonts.body1)
            .padding()
            .frame(minHeight: HEIGHT, maxHeight: HEIGHT)
            .foregroundColor(Theme.colors.onBackground)
            .overlay(
                Capsule(style: .continuous)
                    .stroke(Theme.colors.onBackground, lineWidth: 1)
            )
    }
    
    @ViewBuilder
    private func getText() -> some View {
        if image == nil {
            Text(filterName)
        } else {
            Text(filterName) + Text(Image(systemName: image!))
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FilterView(filterName: "Filter")
            FilterView(filterName: "Filter")
                .preferredColorScheme(.dark)
            FilterView(filterName: "Filter", image: Res.icons.expandMore)
            FilterView(filterName: "Filter", image: Res.icons.expandMore)
                .preferredColorScheme(.dark)
        }
        .padding()
        .previewLayout(.sizeThatFits)
        .background(Theme.colors.background)
    }
}
