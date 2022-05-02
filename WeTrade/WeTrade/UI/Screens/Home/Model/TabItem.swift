//
//  TabItem.swift
//  WeTrade
//
//  Created by AsturianCoder on 2/5/22.
//

import SwiftUI

struct TabItem : Identifiable {
    let id = UUID()
    let title: LocalizedStringKey
    let content: AnyView
}
