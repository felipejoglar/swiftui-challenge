//
//  ColectionItem.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/27/21.
//

import SwiftUI
import Components

struct CollectionItem: View {
    let collection: Collection
    
    var body: some View {
        VStack(spacing: 0) {
            URLImage(url: collection.imageURL, placeholder: "")
                .frame(width: 88, height: 88)
                .clipShape(Circle())
            Text(collection.name)
                .font(Theme.fonts.h3)
                .foregroundColor(Theme.colors.onSurface)
                .padding(.horizontal, 8)
                .frame(width: 88, height: 24, alignment: .bottom)
                
        }
    }
}

struct CollectionItem_Previews: PreviewProvider {
    static var previews: some View {
        let collection = Repository.alignYourBodyCollections[0]
        Group {
            CollectionItem(collection: collection)
            CollectionItem(collection: collection)
                .preferredColorScheme(.dark)
        }
        .padding()
        .background(Theme.colors.background)
        .previewLayout(.sizeThatFits)
    }
}
