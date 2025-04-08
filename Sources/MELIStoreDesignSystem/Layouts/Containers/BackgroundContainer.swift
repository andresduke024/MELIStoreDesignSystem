//
//  BackgroundContainer.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 7/04/25.
//

import SwiftUI

public struct BackgroundContainer<Content: View>: View {
    
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
        .padding(.horizontal, DSSpacing.spacing16)
        .padding(.vertical, DSSpacing.spacing16)
        .background(
            RoundedRectangle(cornerRadius: DSRadius.radius24)
                .fill(theme.current.backgroundColor)
        )
    }
}

#Preview {
    BackgroundContainer {
        Text("Hello")
    }
    .padding()
    .background(Color.black)
}
