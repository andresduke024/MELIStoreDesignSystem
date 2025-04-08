//
//  Title2TextAtom.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 7/04/25.
//

import SwiftUI

public struct Title2TextAtom: View {
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
            .multilineTextAlignment(.center)
            .fontWeight(.medium)
            .font(.title2)
            .foregroundStyle(color)
    }
}

#Preview {
    Title2TextAtom(
        "Hello",
        color: .black
    )
}
