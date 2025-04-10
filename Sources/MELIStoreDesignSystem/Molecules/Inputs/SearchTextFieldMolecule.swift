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
    
    private let onEditingChange: (Bool) -> Void
    
    private let onCommit: () -> Void
    
    private let error: String?
    
    public init(
        text: Binding<String>,
        size: DSSize = .large,
        onEditingChange: @escaping (Bool) -> Void,
        onCommit: @escaping () -> Void,
        error: String? = nil
    ) {
        self._text = text
        self.size = size
        self.onEditingChange = onEditingChange
        self.onCommit = onCommit
        self.error = error
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
            onEditingChange: onEditingChange,
            onCommit: onCommit,
            error: error
        )
    }
}
