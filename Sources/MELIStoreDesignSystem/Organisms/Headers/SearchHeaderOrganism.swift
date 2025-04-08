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
            
            SearchTextFieldMolecule(
                text: $searchText,
                size: .medium,
                onCommit: onSearchCommit
            )
            .padding(.bottom, DSSpacing.spacing4)
        }
        .padding()
        .background(theme.current.primaryColor)
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
