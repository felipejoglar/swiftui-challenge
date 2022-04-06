//
//  HomeScreen.swift
//  Bloom
//
//  Created by Felipe Joglar on 3/24/22.
//

import SwiftUI
import Components

struct HomeScreen: View {
    let categories: [Category]
    let plants: [Plant]
    
    @State private var query: String = String()
    
    var body: some View {
        BloomContainer {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    BloomTextField(Res.strings.homeSearchLabel, text: $query, leadingIcon: Res.icons.search)
                        .padding(.top, 40)
                        .padding(.horizontal, 16)
                    
                    Themes(
                        title: Res.strings.homeBrowseThemesSectionTitle,
                        categories: categories
                    )
                    
                    Plants(
                        title: Res.strings.homeBrowseGardenSectionTitle,
                        plants: plants
                    )
                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(categories: Repository.categories, plants: Repository.plants)
        HomeScreen(categories: Repository.categories, plants: Repository.plants)
            .preferredColorScheme(.dark)
    }
}
