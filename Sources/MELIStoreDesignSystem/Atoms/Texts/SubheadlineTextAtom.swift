//
//  SubHeadlineTextAtom.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 8/04/25.
//

import SwiftUI

public struct SubheadlineTextAtom: View {
    private let text: String
    private let color: Color
    private let weight: Font.Weight
    private let align: TextAlignment
    
    public init(
        _ text: String,
        color: Color,
        weight: Font.Weight = .regular,
        align: TextAlignment = .center
    ) {
        self.text = text
        self.color = color
        self.weight = weight
        self.align = align
    }
    
    public var body: some View {
        Text(text)
            .multilineTextAlignment(align)
            .font(.subheadline)
            .fontWeight(weight)
            .foregroundStyle(color)
    }
}

#Preview {
    SubheadlineTextAtom(
        "",
        color: .black
    )
}
