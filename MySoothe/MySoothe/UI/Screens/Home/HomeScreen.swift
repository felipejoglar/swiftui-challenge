//
//  HomeScreen.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/18/21.
//

import SwiftUI

struct HomeScreen: View {
    let favoriteCollections: [Collection]
    let alignYourMindCollections: [Collection]
    let alignYourBodyCollections: [Collection]
    
    @State private var query: String = String()
    
    var body: some View {
        MySootheContainer {
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    Spacer()
                        .frame(height: 56)
                    MySootheTextField(
                        Res.strings.homeCollectionsSearchLabel,
                        text: $query,
                        leadingIcon: Res.icons.search
                    )
                        .padding(.horizontal, 16)
                    FavoriteCollections(favoriteCollections: favoriteCollections)
                    Collections(title: Res.strings.homeCollectionsAlignBodyTitle, collections: alignYourBodyCollections)
                    Collections(title: Res.strings.homeCollectionsAlignMindTitle, collections: alignYourMindCollections)
                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(
            favoriteCollections: Repository.favoriteCollections,
            alignYourMindCollections: Repository.alignYourMindCollections,
            alignYourBodyCollections: Repository.alignYourBodyCollections
        )
        HomeScreen(
            favoriteCollections: Repository.favoriteCollections,
            alignYourMindCollections: Repository.alignYourMindCollections,
            alignYourBodyCollections: Repository.alignYourBodyCollections
        )
            .preferredColorScheme(.dark)
    }
}
