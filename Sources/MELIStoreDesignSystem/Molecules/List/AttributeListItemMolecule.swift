//
//  AttributeListItem.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 8/04/25.
//

import SwiftUI

public struct AttributeListItemMolecule: View {

    @Environment(\.theme)
    private var theme: ThemeManager

    private let title: String?
    private let icon: DSIcons
    private let useDivider: Bool
    private let attributes: [AttributeUIModel]

    public init(
        title: String? = nil,
        icon: DSIcons,
        useDivider: Bool,
        attributes: [AttributeUIModel]
    ) {
        self.title = title
        self.icon = icon
        self.useDivider = useDivider
        self.attributes = attributes
    }

    public var body: some View {
        VStack(
            alignment: .leading,
            spacing: DSSpacing.spacing8
        ) {
            if useDivider { Divider() }

            if let title {
                Title2TextAtom(
                    title,
                    color: theme.current.secondaryColor
                )
                .padding(.bottom, DSSpacing.spacing8)
            }

            ForEach(attributes) { attribute in
                HStack(spacing: DSSpacing.spacing6) {
                    IconAtom(
                        icon: icon,
                        color: theme.current.primaryColor
                    )

                    HeadlineTextAtom(
                        attribute.name,
                        color: theme.current.secondaryColor,
                        align: .leading
                    )

                    if !attribute.description.isEmpty {
                        SubheadlineTextAtom(
                            attribute.description,
                            color: theme.current.secondaryColor,
                            weight: .bold,
                            align: .leading
                        )
                    }
                }
            }
        }
        .padding(.top, DSSpacing.spacing8)
    }
}

#Preview {
    AttributeListItemMolecule(
        title: "Title",
        icon: .checkCircle,
        useDivider: true,
        attributes: [
            .init(id: "1", name: "Value", description: "Number 1"),
            .init(id: "2", name: "Value", description: "Number 2"),
        ]
    )
}
