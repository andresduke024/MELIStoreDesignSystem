//
//  ListBottomMessageMolecule.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 9/04/25.
//

import SwiftUI

public struct ListBottomMessageMolecule: View {
    
    @Environment(\.theme)
    private var theme: ThemeManager
    
    private let text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        HStack(
            alignment: .center,
            spacing: DSSpacing.spacing12
        ) {
            IconAtom(
                icon: .message,
                color: theme.current.primaryColor
            )
            
            CalloutTextAtom(
                text,
                color: theme.current.secondaryColor
            )
        }
        .padding()
    }
}
