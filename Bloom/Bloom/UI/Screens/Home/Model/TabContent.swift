//
//  TabContent.swift
//  Bloom
//
//  Created by AsturianCoder on 6/4/22.
//

import SwiftUI

struct TabContent : Identifiable {
    let id = UUID()
    let title: LocalizedStringKey
    let icon: String
    let content: AnyView
}
