//
//  FavoriteCollectionItem.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/27/21.
//

import SwiftUI
import Components

struct FavoriteCollectionItem: View {
    let collection: Collection
    
    var body: some View {
        HStack(spacing: 0) {
            URLImage(url: collection.imageURL, placeholder: "")
                .frame(width: 56)
            Text(collection.name)
                .fillMaxSize(alignment: .leading)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .font(Theme.fonts.h3)
                .foregroundColor(Theme.colors.onSurface)
        }
        .background(Theme.colors.surface)
        .frame(width: 192, height: 56)
        .cornerRadius(4)
    }
}

struct FavoriteCollectionItem_Previews: PreviewProvider {
    static var previews: some View {
        let collection = Repository.favoriteCollections[0]
        Group {
            FavoriteCollectionItem(collection: collection)
            FavoriteCollectionItem(collection: collection)
                .preferredColorScheme(.dark)
        }
        .padding()
        .background(Theme.colors.background)
        .previewLayout(.sizeThatFits)
    }
}
