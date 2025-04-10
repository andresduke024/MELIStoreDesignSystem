//
//  SearchHeaderOrganism.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 6/04/25.
//

import SwiftUI

public struct SearchHeaderOrganism: View {
    
    @Environment(\.theme)
    private var theme: ThemeManager
    
    @Binding
    private var searchText: String
    private let title: String
    private let searchError: String?
    private let onBackPress: () -> Void
    private let onSearchChanged: (Bool) -> Void
    private let onSearchCommit: () -> Void
    
    public init(
        title: String,
        searchError: String?,
        searchText: Binding<String>,
        onBackPress: @escaping () -> Void,
        onSearchChanged:  @escaping (Bool) -> Void,
        onSearchCommit: @escaping () -> Void
    ) {
        self.title = title
        self.searchError = searchError
        self._searchText = searchText
        self.onBackPress = onBackPress
        self.onSearchChanged = onSearchChanged
        self.onSearchCommit = onSearchCommit
    }
    
    public var body: some View {
        HeaderOrganism(title: title, onBackPress: onBackPress) {
            SearchTextFieldMolecule(
                text: $searchText,
                size: .medium,
                onEditingChange: onSearchChanged,
                onCommit: onSearchCommit,
                error: searchError
            )
        }
    }
}

#Preview {
    SearchHeaderOrganism(
        title: "Title",
        searchError: nil,
        searchText: .constant(""),
        onBackPress: {},
        onSearchChanged: { _ in },
        onSearchCommit: {}
    )
}
