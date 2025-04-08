//
//  SearchInputMolecule.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 7/04/25.
//

import SwiftUI

public struct SearchTextFieldMolecule: View {
    @Environment(\.theme)
    private var theme: ThemeManager
    
    @Binding
    private var text: String
    
    private let size: DSSize
    
    private let onCommit: () -> Void
    
    public init(
        text: Binding<String>,
        size: DSSize = .large,
        onCommit: @escaping () -> Void
    ) {
        self._text = text
        self.size = size
        self.onCommit = onCommit
    }
    
    public var body: some View {
        TextFieldAtom(
            icon: IconAtom(
                icon: .search,
                color: theme.current.secondaryColor
            ),
            size: size,
            placeholder: "Buscar",
            text: $text,
            onCommit: onCommit
        )
    }
}
