//
//  Title3TextAtom.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 7/04/25.
//

import SwiftUI

public struct Title3TextAtom: View {
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
            .font(.title3)
            .foregroundStyle(color)
    }
}

#Preview {
    Title3TextAtom(
        "Hello",
        color: .black
    )
}
