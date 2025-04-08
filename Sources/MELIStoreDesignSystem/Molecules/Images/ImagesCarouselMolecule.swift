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
        #if os(iOS)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        #endif
        .clipShape(
            RoundedRectangle(cornerRadius: DSRadius.radius16)
        )
    }
}

#Preview {
    ImagesCarouselMolecule(images: [])
}
