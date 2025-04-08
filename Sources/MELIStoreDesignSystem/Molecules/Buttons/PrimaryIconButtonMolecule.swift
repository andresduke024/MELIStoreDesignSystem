//
//  IconButtonMolecule.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 6/04/25.
//

import SwiftUI

public struct PrimaryIconButtonMolecule: View {
    
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
                color: theme.current.onPrimaryColor
            )
        }.buttonStyle(
            IconButtonStyle(
                backgroundColor: theme.current.primaryColor,
            )
        )
    }
}

#Preview {
    PrimaryIconButtonMolecule(icon: .search) {}
}
