//
//  Repository.swift
//  WeTrade
//
//  Created by AsturianCoder on 22/4/22.
//

import Foundation

struct Repository {
    
    static let stocks = [
        Stock(
            price: "$7,918",
            percentDelta: "-0.54%",
            name: "ALK",
            company: "Alaska Air Group, Inc.",
            graph: Res.images.homeAlk
        ),
        Stock(
            price: "$1,293",
            percentDelta: "+4.18%",
            name: "BA",
            company: "Boeing Co.",
            graph: Res.images.homeBa
        ),
        Stock(
            price: "$893.50",
            percentDelta: "-0.54%",
            name: "DAL",
            company: "Delta Airlines Inc.",
            graph: Res.images.homeDal
        ),
        Stock(
            price: "$12,301",
            percentDelta: "+2.51%",
            name: "EXPE",
            company: "Expedia Group Inc.",
            graph: Res.images.homeExp
        ),
        Stock(
            price: "$12,301",
            percentDelta: "+1.38%",
            name: "EADSY",
            company: "Airbus SE",
            graph: Res.images.homeEadsy
        ),
        Stock(
            price: "$8,521",
            percentDelta: "+1.56%",
            name: "JBLU",
            company: "Jetblue Airways Corp.",
            graph: Res.images.homeJblu
        ),
        Stock(
            price: "$521",
            percentDelta: "+2.75%",
            name: "MAR",
            company: "Marriott International Inc.",
            graph: Res.images.homeMar
        ),
        Stock(
            price: "$5,481",
            percentDelta: "+0.14%",
            name: "CCL",
            company: "Carnival Corp",
            graph: Res.images.homeCcl
        ),
        Stock(
            price: "$9,184",
            percentDelta: "+1.69%",
            name: "RCL",
            company: "Royal Caribbean Cruises",
            graph: Res.images.homeRcl
        ),
        Stock(
            price: "$654",
            percentDelta: "+3.23%",
            name: "TRVL",
            company: "Travelocity Inc.",
            graph: Res.images.homeTrvl
        )
    ]
}
