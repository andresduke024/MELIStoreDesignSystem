//
//  ImageAtom.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 7/04/25.
//

import SwiftUI

public struct ImageAtom: View {
    private let image: ImageProtocol?
    private let url: String?
    
    public init(image: ImageProtocol) {
        self.image = image
        self.url = nil
    }
    
    public init(url: String) {
        self.url = url
        self.image = nil
    }
    
    public var body: some View {
        let bundleImage = Image(
            image?.name ?? DSImages.imageNotFound.name,
            bundle: image?.bundle ?? .module
        )
        .resizable()
        
        if let url, !url.isEmpty {
            AsyncImage(url: URL(string: url)) { phase in
                switch phase {
                case .failure: bundleImage
                case .success(let image): image.resizable()
                default: ProgressView()
                }
            }
        } else {
            bundleImage
        }
    }
}
