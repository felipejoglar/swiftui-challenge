//
//  Plant.swift
//  Bloom
//
//  Created by Felipe Joglar on 3/24/22.
//

import Foundation

struct Plant : Identifiable {
    let id : UUID = UUID()
    let name: String
    let description: String = "This is a description"
    let imageUrl: String
}
