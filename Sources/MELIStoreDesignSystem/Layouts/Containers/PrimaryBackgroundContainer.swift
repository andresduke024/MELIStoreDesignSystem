//
//  PrimaryBackgroundContainer.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 7/04/25.
//

import SwiftUI

public struct PrimaryBackgroundContainer<Content: View>: View {
    
    @Environment(\.theme)
    private var theme: ThemeManager
    
    private let edgesIgnoringSafeArea: Edge.Set
    private var content: Content
    
    public init(
         ignoresSafeAreaFor edgesIgnoringSafeArea: Edge.Set = [],
        @ViewBuilder content: () -> Content
    ) {
        self.edgesIgnoringSafeArea = edgesIgnoringSafeArea
        self.content = content()
    }
    
    public var body: some View {
        ZStack {
            theme.current.primaryColor
                .ignoresSafeArea(edges: edgesIgnoringSafeArea)
            
            content
                .frame(maxWidth: .infinity)
                .padding(.horizontal, DSSpacing.spacing16)
                .padding(.vertical, DSSpacing.spacing16)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    PrimaryBackgroundContainer {
        Text("Hello")
            .foregroundStyle(.white)
    }
}
