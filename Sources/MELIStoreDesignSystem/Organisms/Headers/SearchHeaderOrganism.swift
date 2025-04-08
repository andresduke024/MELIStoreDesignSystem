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
    private let onBackPress: () -> Void
    private let onSearchCommit: () -> Void
    
    public init(
        title: String,
        searchText: Binding<String>,
        onBackPress: @escaping () -> Void,
        onSearchCommit: @escaping () -> Void
    ) {
        self.title = title
        self._searchText = searchText
        self.onBackPress = onBackPress
        self.onSearchCommit = onSearchCommit
    }
    
    public var body: some View {
        HeaderOrganism(title: title, onBackPress: onBackPress) {
            SearchTextFieldMolecule(
                text: $searchText,
                size: .medium,
                onCommit: onSearchCommit
            )
        }
    }
}

#Preview {
    SearchHeaderOrganism(
        title: "Title",
        searchText: .constant(""),
        onBackPress: {},
        onSearchCommit: {}
    )
}
