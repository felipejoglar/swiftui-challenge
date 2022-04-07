//
//  Themes.swift
//  Bloom
//
//  Created by AsturianCoder on 5/4/22.
//

import SwiftUI
import Components

struct Themes: View {
    let title: LocalizedStringKey
    let categories: [Category]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(title)
                .frame(height: 40, alignment: .bottom)
                .font(Theme.fonts.h1)
                .foregroundColor(Theme.colors.onBackground)
                .padding(.horizontal, 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(
                    rows: [GridItem(.flexible())],
                    spacing: 8
                ) {
                    ForEach(categories) { category in
                        ZStack {
                            RoundedRectangle(cornerRadius: 4)
                                .fill(Theme.colors.surface)
                            VStack(spacing: 0) {
                                URLImage(url: category.imageUrl, placeholder: Res.images.placeholder)
                                    .frame(width: 136, height: 96)
                                
                                Text(category.name)
                                    .fillMaxSize()
                                    .padding(.horizontal, 8)
                                    .font(Theme.fonts.h2)
                                    .foregroundColor(Theme.colors.onSurface)
                            }
                        }
                        .frame(width: 136, height: 136)
                        .shadow(radius: 1, y: 1)
                    }
                }
                .frame(height: 152)
                .padding(.horizontal, 16)
            }
        }
    }
}

struct Themes_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Themes(
                title: Res.strings.homeBrowseThemesSectionTitle,
                categories: Repository.categories
            )
            Themes(
                title: Res.strings.homeBrowseThemesSectionTitle,
                categories: Repository.categories
            )
            .preferredColorScheme(.dark)
        }
        .padding(.vertical, 16)
        .background(Theme.colors.background)
        .previewLayout(.sizeThatFits)
    }
}

