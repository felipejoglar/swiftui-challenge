//
//  URLImage.swift
//  MySoothe
//
//  Created by Felipe Joglar on 12/23/21.
//

import SwiftUI

/// Custom Image component that loads its content from the given url.
///
/// https://stackoverflow.com/a/68988991/7609264
public struct URLImage : View {
    private let url: String
    private let placeholder: String
    private let isCenterCropped: Bool
    
    @ObservedObject var imageLoader = ImageLoader()
    @State private var contentUiImage: UIImage? = nil
    
    public init(url: String, placeholder: String, isCenterCropped: Bool = false) {
        self.url = url
        self.placeholder = placeholder
        self.isCenterCropped = isCenterCropped
    }
    
    public var body: some View {
        buildInnerImage()
            .centerCropped()
            .onAppear {
                imageLoader.loadImage(from: url)
            }
            .onReceive(imageLoader.$image) { uiImage in
                self.contentUiImage = uiImage
            }
    }
    
    @ViewBuilder
    private func buildInnerImage() -> Image {
        self.contentUiImage == nil ? Image(placeholder) : Image(uiImage: self.contentUiImage!)
    }
}

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    
    func loadImage(from urlString: String) {
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.image = UIImage(data: data)
            }
        }
        task.resume()
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        let urlImage = URLImage(url: "", placeholder: "")
        
        Group {
            urlImage
            urlImage
                .preferredColorScheme(.dark)
        }
        .frame(width: 200, height: 200)
        .previewLayout(.sizeThatFits)
    }
}
