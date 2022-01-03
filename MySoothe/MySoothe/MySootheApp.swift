//
//  MySootheApp.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/15/21.
//

import SwiftUI

@main
struct MySootheApp: App {
    @StateObject var navigation = Navigation()

    var body: some Scene {
        WindowGroup {
            NavigationView(with: navigation)
        }
    }
}
