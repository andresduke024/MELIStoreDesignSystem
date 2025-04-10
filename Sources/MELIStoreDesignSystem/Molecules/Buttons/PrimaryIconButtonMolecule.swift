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
    private let size: DSSize
    
    public init(
        icon: DSIcons,
        size: DSSize = .large,
        onPress: @escaping () -> Void
    ) {
        self.icon = icon
        self.size = size
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
                size: size
            )
        )
    }
}

#Preview {
    PrimaryIconButtonMolecule(icon: .search) {}
}
