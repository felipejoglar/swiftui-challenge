//
//  Collections.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/28/21.
//

import SwiftUI

struct Collections: View {
    let title: LocalizedStringKey
    let collections: [Collection]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            CollectionTitle(label: title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(
                    rows: [GridItem(.flexible())],
                    spacing: 8) {
                        ForEach(collections) { collection in
                            CollectionItem(collection: collection)
                        }
                    }
                    .padding(.horizontal, 16)
                    .frame(height: 120)
            }
            .padding(.vertical, 8)
        }
    }
}

struct Collections_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Collections(
                title: Res.strings.homeCollectionsAlignBodyTitle,
                collections: Repository.alignYourBodyCollections
            )
            Collections(
                title: Res.strings.homeCollectionsAlignBodyTitle,
                collections: Repository.alignYourBodyCollections
            )
                .preferredColorScheme(.dark)
        }
        .padding(.vertical, 16)
        .background(Theme.colors.background)
        .previewLayout(.sizeThatFits)
    }
}

