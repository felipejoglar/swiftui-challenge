//
//  ContentView.swift
//  WeTrade
//
//  Created by AsturianCoder on 7/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        WeTradeContainer {
            Text("Hello, world!")
                .foregroundColor(Theme.colors.onBackground)
                .font(Theme.fonts.h1)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}
