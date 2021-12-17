//
//  CornerRadius.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/17/21.
//

import SwiftUI

/// Custom modifier to individualy set the corner radius of a view.
///
/// https://stackoverflow.com/a/58606176/7609264
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
