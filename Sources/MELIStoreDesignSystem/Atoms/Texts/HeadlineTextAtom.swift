//
//  HeadlineTextAtom.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 7/04/25.
//

import SwiftUI

public struct HeadlineTextAtom: View {
    private let text: String
    private let color: Color
    private let weight: Font.Weight
    
    public init(
        _ text: String,
        color: Color,
        weight: Font.Weight = .regular
    ) {
        self.text = text
        self.color = color
        self.weight = weight
    }
    
    public var body: some View {
        Text(text)
            .multilineTextAlignment(.center)
            .font(.headline)
            .fontWeight(weight)
            .foregroundStyle(color)
    }
}

#Preview {
    HeadlineTextAtom(
        "",
        color: .black
    )
}
