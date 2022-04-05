//
//  Repository.swift
//  Bloom
//
//  Created by Felipe Joglar on 3/24/22.
//

import Foundation

struct Repository {
    
    static let plants = [
        Plant(
            name: "Monstera",
            imageUrl: "https://images.pexels.com/photos/3097770/pexels-photo-3097770.jpeg?auto=compress&cs=tinysrgb&h=480&w=800"
        ),
        Plant(
            name: "Aglaonema",
            imageUrl: "https://images.pexels.com/photos/4751978/pexels-photo-4751978.jpeg?auto=compress&cs=tinysrgb&h=480&w=800"
        ),
        Plant(
            name: "Peace lili",
            imageUrl: "https://images.pexels.com/photos/4425201/pexels-photo-4425201.jpeg?auto=compress&cs=tinysrgb&h=480&w=800"
        ),
        Plant(
            name: "Fiddle leaf tree",
            imageUrl: "https://images.pexels.com/photos/6208087/pexels-photo-6208087.jpeg?auto=compress&cs=tinysrgb&h=480&w=800"
        ),
        Plant(
            name: "Snake plant",
            imageUrl: "https://images.pexels.com/photos/2123482/pexels-photo-2123482.jpeg?auto=compress&cs=tinysrgb&h=480&w=800"
        ),
        Plant(
            name: "Pothos",
            imageUrl: "https://images.pexels.com/photos/1084199/pexels-photo-1084199.jpeg?auto=compress&cs=tinysrgb&h=480&w=800"
        )
    ]
    
    static let categories = [
        Category(
            name: "Desert chic",
            imageUrl: "https://images.pexels.com/photos/2132227/pexels-photo-2132227.jpeg?auto=compress&cs=tinysrgb&h=480&w=800"
        ),
        Category(
            name: "Tiny terrariums",
            imageUrl: "https://images.pexels.com/photos/1400375/pexels-photo-1400375.jpeg?auto=compress&cs=tinysrgb&h=480&w=800"
        ),
        Category(
            name: "Jungle vibes",
            imageUrl: "https://images.pexels.com/photos/5699665/pexels-photo-5699665.jpeg?auto=compress&cs=tinysrgb&h=480&w=800"
        ),
        Category(
            name: "Easy care",
            imageUrl: "https://images.pexels.com/photos/6208086/pexels-photo-6208086.jpeg?auto=compress&cs=tinysrgb&h=480&w=800"
        ),
        Category(
            name: "Statements",
            imageUrl: "https://images.pexels.com/photos/3511755/pexels-photo-3511755.jpeg?auto=compress&cs=tinysrgb&h=480&w=800"
        )
    ]
}
