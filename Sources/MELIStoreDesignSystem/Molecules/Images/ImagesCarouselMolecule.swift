//
//  ImagesCarouselMolecule.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 8/04/25.
//

import SwiftUI

public struct ImagesCarouselMolecule: View {
    private let images: [String]

    public init(
        images: [String]
    ) {
        self.images = images
    }
    
    public var body: some View {
        TabView {
            ForEach(images, id: \.self) { url in
                ImageAtom(url: url)
                    .scaledToFill()
            }
        }
        .tabViewStyle(
            PageTabViewStyle(indexDisplayMode: .automatic)
        )
        .clipShape(
            RoundedRectangle(cornerRadius: DSRadius.radius16)
        )
    }
}

#Preview {
    ImagesCarouselMolecule(images: [])
}
