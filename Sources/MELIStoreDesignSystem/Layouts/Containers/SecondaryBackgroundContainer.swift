//
//  SecondaryBackgroundContainer.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 7/04/25.
//

import SwiftUI

public struct SecondaryBackgroundContainer<Content: View>: View {
    
    @Environment(\.theme)
    private var theme: ThemeManager
    
    private var content: Content
    
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    public var body: some View {
        ZStack {
            content
        }
        .frame(maxWidth: .infinity)
        .background(
            theme.current.secondaryColor
        )
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    SecondaryBackgroundContainer {
        Text("Hello")
            .foregroundStyle(.white)
    }
}
