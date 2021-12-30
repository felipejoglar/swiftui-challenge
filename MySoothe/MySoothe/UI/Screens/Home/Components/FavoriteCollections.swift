//
//  FavoriteCollections.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/28/21.
//

import SwiftUI

struct FavoriteCollections: View {
    let favoriteCollections: [Collection]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            CollectionTitle(label: Res.strings.homeCollectionsFavoriteTitle)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(
                    rows: [GridItem(.flexible(maximum: 56)), GridItem(.flexible(maximum: 56))],
                    spacing: 8) {
                        ForEach(favoriteCollections) { collection in
                            FavoriteCollectionItem(collection: collection)
                        }
                    }
                    .padding(.horizontal, 16)
                    .frame(height: 120)
            }
            .padding(.vertical, 8)
        }
    }
}

struct FavoriteCollections_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FavoriteCollections(favoriteCollections: Repository.favoriteCollections)
            FavoriteCollections(favoriteCollections: Repository.favoriteCollections)
                .preferredColorScheme(.dark)
        }
        .padding(.vertical, 16)
        .background(Theme.colors.background)
        .previewLayout(.sizeThatFits)
    }
}
