//
//  WeTradeApp.swift
//  WeTrade
//
//  Created by Felipe Joglar on 7/4/22.
//

import SwiftUI

@main
struct WeTradeApp: App {
    @StateObject var navigation = Navigation()

    var body: some Scene {
        WindowGroup {
            NavigationView(with: navigation)
        }
    }
}
