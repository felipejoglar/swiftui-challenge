//
//  BloomApp.swift
//  Bloom
//
//  Created by Felipe Joglar on 3/22/22.
//

import SwiftUI

@main
struct BloomApp: App {
    @StateObject var navigation = Navigation()
    
    var body: some Scene {
        WindowGroup {
            NavigationView(with: navigation)
        }
    }
}
