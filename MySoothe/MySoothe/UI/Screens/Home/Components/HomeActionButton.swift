//
//  HomeActionButton.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/29/21.
//

import SwiftUI

struct HomeActionButton: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Theme.colors.primary)
                .frame(width: 56, height: 56)
            Image(systemName: Res.icons.homeCircleButton)
                .frame(width: 24, height: 24)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Theme.colors.onPrimary)
        }
    }
}

struct HomeActionButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeActionButton()
            HomeActionButton()
                .preferredColorScheme(.dark)
        }
        .padding()
        .previewLayout(.sizeThatFits)
        .background(Theme.colors.background)
    }
}
