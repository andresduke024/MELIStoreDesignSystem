//
//  SecondaryIconButtonMolecule.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 6/04/25.
//

import SwiftUI

public struct SecondaryIconButtonMolecule: View {
    
    @Environment(\.theme)
    private var theme: ThemeManager
    
    private let icon: DSIcons
    private let onPress: () -> Void
    
    public init(
        icon: DSIcons,
        onPress: @escaping () -> Void
    ) {
        self.icon = icon
        self.onPress = onPress
    }
    
    public var body: some View {
        Button(action: onPress) {
            IconAtom(
                icon: icon,
                color: theme.current.secondaryColor
            )
        }.buttonStyle(
            IconButtonStyle(
                backgroundColor: theme.current.secondaryBackgroundColor,
            )
        )
    }
}

#Preview {
    SecondaryIconButtonMolecule(icon: .search) {}
}
