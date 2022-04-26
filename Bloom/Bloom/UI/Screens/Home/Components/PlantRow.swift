//
//  PlantRow.swift
//  Bloom
//
//  Created by Felipe Joglar on 6/4/22.
//

import SwiftUI
import Components

struct PlantRow: View {
    let plantModel: PlantViewModel
    
    @State private var isSelected: Bool = false
    
    init(plantModel: PlantViewModel) {
        self.plantModel = plantModel
        self.isSelected = plantModel.isSelected
    }
    
    var body: some View {
        HStack(
            spacing: 0
        ) {
            URLImage(url: plantModel.plant.imageUrl, placeholder: Res.images.placeholder)
                .aspectRatio(1.0, contentMode: .fit)
                .cornerRadius(4)
            
            VStack(
                alignment: .leading,
                spacing: 0
            ) {
                
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(plantModel.plant.name)
                            .font(Theme.fonts.h2)
                            .foregroundColor(Theme.colors.onSurface)
                            .frame(height: 24, alignment: .bottom)
                        Text(plantModel.plant.description)
                            .font(Theme.fonts.body1)
                            .foregroundColor(Theme.colors.onSurface)
                    }
                    .padding(.horizontal, 16)
                    
                    Spacer()
                    
                    Toggle("", isOn: $isSelected)
                        .labelsHidden()
                        .toggleStyle(BloomCheckboxToggleStyle())
                        .fillMaxHeight()
                }
                .fillMaxWidth()
                
                Spacer()
                
                Divider()
                    .frame(height: 1)
                    .background(Color.gray)
                    .padding(.leading, 8)
            }
        }
        .frame(height: 72)
    }
}

private struct BloomCheckboxToggleStyle: ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack() {
            Button(action: {
                configuration.isOn.toggle()
            }, label: {
                Group {
                    if configuration.isOn {
                        ZStack {
                            RoundedRectangle(cornerRadius: 4)
                                .fill(Theme.colors.secondary)
                            Image(systemName: Res.icons.done)
                                .foregroundColor(Theme.colors.onSecondary)
                                .frame(width: 18, height: 18)
                        }
                    } else {
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.gray, lineWidth: 1)
                    }
                }
                .frame(width: 24, height: 24)
                
            })
            .frame(width: 48, height: 48)
        }
    }
}

struct PlantRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlantRow(plantModel: Repository.plants.first!.toViewModel())
            PlantRow(plantModel: Repository.plants.first!.toViewModel())
                .preferredColorScheme(.dark)
        }
        .padding(16)
        .background(Theme.colors.background)
        .previewLayout(.sizeThatFits)
    }
}
