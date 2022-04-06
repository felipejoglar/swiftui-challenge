//
//  PlantViewModel.swift
//  Bloom
//
//  Created by AsturianCoder on 6/4/22.
//

import Foundation

struct PlantViewModel: Identifiable {
    let id: UUID
    var plant: Plant
    var isSelected: Bool
}

extension Plant {
    
    func toViewModel() -> PlantViewModel {
        return PlantViewModel(
            id: self.id,
            plant: self,
            isSelected: false
        )
    }
}
