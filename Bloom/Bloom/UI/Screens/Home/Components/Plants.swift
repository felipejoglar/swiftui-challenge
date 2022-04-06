//
//  Plants.swift
//  Bloom
//
//  Created by AsturianCoder on 6/4/22.
//

import SwiftUI
import Components

struct Plants: View {
    let title: LocalizedStringKey
    let plants: [Plant]
    
    var body: some View {
        VStack {
            HStack(
                alignment: .bottom
            ) {
                Text(title)
                    .frame(height: 40, alignment: .bottom)
                    .font(Theme.fonts.h1)
                    .foregroundColor(Theme.colors.onBackground)
                    .padding(.horizontal, 16)
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: Res.icons.filterList)
                        .resizable()
                        .foregroundColor(Theme.colors.onBackground)
                        .frame(width: 24, height: 24)
                        .padding(.horizontal, 16)
                }
            }
            .padding(.bottom, 8)
            
            LazyVStack(
                alignment: .leading,
                spacing: 8
            ) {
                ForEach(plants) { plant in
                    PlantRow(plantModel: plant.toViewModel())
                }
            }
            .padding(.horizontal, 16)
        }
    }
}

struct Plants_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Plants(
                title: Res.strings.homeBrowseGardenSectionTitle,
                plants: Repository.plants
            )
            Plants(
                title: Res.strings.homeBrowseGardenSectionTitle,
                plants: Repository.plants
            )
            .preferredColorScheme(.dark)
        }
        .padding(.vertical, 16)
        .background(Theme.colors.background)
        .previewLayout(.sizeThatFits)
    }
}
