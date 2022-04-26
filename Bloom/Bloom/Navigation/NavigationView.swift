//
//  NavigationView.swift
//  Bloom
//
//  Created by Felipe Joglar on 6/4/22.
//

import SwiftUI

struct NavigationView: View {
    @ObservedObject var navigation: Navigation
    
    init(with navigation: Navigation) {
        self.navigation = navigation
    }
    
    var body: some View {
        navigation.currentView?
            .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .opacity))
            .id(UUID())
    }
}


struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView(with: Navigation())
        NavigationView(with: Navigation())
            .preferredColorScheme(.dark)
    }
}
