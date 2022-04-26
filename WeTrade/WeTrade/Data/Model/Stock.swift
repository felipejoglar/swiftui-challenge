//
//  Stock.swift
//  WeTrade
//
//  Created by Felipe Joglar on 22/4/22.
//

import Foundation

struct Stock  : Identifiable {
    let id : UUID = UUID()
    let price: String
    let percentDelta: String
    let name: String
    let company: String
    let graph: String
}
