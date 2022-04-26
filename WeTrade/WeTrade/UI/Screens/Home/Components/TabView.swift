//
//  TabView.swift
//  WeTrade
//
//  Created by AsturianCoder on 26/4/22.
//

import SwiftUI

struct TabView<Label: View>: View {
    @Binding var selection: Int
    
    let tabs: [LocalizedStringKey]
    let label: (LocalizedStringKey, Bool) -> Label
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            ForEach(tabs) {
                self.tab(title: $0)
            }
        }
        .frame(height: 80, alignment: .bottom)
    }
    
    private func tab(title: LocalizedStringKey) -> some View {
        let index = self.tabs.firstIndex(of: title)!
        let isSelected = index == selection
        return Button(action: {
            withAnimation {
                self.selection = index
            }
        }) {
            label(title, isSelected)
                .fillMaxWidth()
        }
        .fillMaxSize()
    }
}

extension LocalizedStringKey : Identifiable {
    public var id: UUID {
        UUID()
    }
}
