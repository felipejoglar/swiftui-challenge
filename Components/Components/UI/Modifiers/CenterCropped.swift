//
//  CenterCropped.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/17/21.
//

import SwiftUI

/// Center and crops an image:
/// Scale the image uniformly (maintain the image's aspect ratio) so that both dimensions (width and height) of the image will be
/// equal to or larger than the corresponding dimension of the view (minus padding). The image is then centered in the view.
///
/// https://stackoverflow.com/a/63651228/7609264
public extension Image {
    func centerCropped() -> some View {
        GeometryReader { geo in
            self
            .resizable()
            .scaledToFill()
            .frame(width: geo.size.width, height: geo.size.height)
            .clipped()
        }
    }
}
