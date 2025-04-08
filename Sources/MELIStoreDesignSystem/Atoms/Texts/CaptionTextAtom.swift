//
//  CaptionTextAtom.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 6/04/25.
//

import SwiftUI

public struct CaptionTextAtom: View {
    
    private let text: String
    private let color: Color
    
    public init(
        _ text: String,
        color: Color
    ) {
        self.text = text
        self.color = color
    }
    
    public var body: some View {
        Text(text)
            .font(.caption)
            .fontWeight(.regular)
            .foregroundStyle(color)
    }
}

#Preview {
    VStack {
        CaptionTextAtom(
            "Hello world",
            color: .black
        )
    }
}
