//
//  HeaderOrganism.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 8/04/25.
//

import SwiftUI

public struct HeaderOrganism<Content: View>: View {
    
    @Environment(\.theme)
    private var theme: ThemeManager
    
    private let title: String
    private let onBackPress: () -> Void
    private let content: Content?
    
    public init(
        title: String,
        onBackPress: @escaping () -> Void,
        content: (() -> Content)? = nil
    ) {
        self.title = title
        self.onBackPress = onBackPress
        self.content = content?()
    }
    
    public var body: some View {
        VStack(spacing: DSSpacing.spacing16) {
            ZStack(
                alignment: .center,
            ) {
                HStack {
                    SecondaryIconButtonMolecule(
                        icon: DSIcons.back,
                        onPress: onBackPress
                    )
                    
                    Spacer()
                }
                
                TitleTextAtom(
                    title,
                    color: theme.current.onPrimaryColor
                )
            }
            
            if let content {
                content.padding(.bottom, DSSpacing.spacing4)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, DSSpacing.spacing8)
        .background(theme.current.primaryColor)
    }
}

#Preview {
    HeaderOrganism(
        title: "Title",
        onBackPress: {}
    ) {
        Text("Content")
    }
}
