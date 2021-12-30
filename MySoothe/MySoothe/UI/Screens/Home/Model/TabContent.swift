//
//  SwiftUIView.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/29/21.
//

import SwiftUI

struct TabContent : Identifiable {
    let id = UUID()
    let title: LocalizedStringKey
    let icon: String
    let content: AnyView
}
