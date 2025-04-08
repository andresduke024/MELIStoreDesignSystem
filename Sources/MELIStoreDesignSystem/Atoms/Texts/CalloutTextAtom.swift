//
//  CalloutTextAtom.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 6/04/25.
//

import SwiftUI

public struct CalloutTextAtom: View {
    
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
            .font(.callout)
            .fontWeight(.medium)
            .foregroundStyle(color)
    }
}

#Preview {
    VStack {
        CalloutTextAtom(
            "Hello world",
            color: .black
        )
    }
}
