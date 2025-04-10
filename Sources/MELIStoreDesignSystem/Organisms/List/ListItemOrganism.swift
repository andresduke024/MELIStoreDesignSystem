//
//  ListItemOrganism.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 6/04/25.
//

import SwiftUI

public struct ListItemOrganism: View {
    
    @Environment(\.theme)
    private var theme: ThemeManager
    
    private let image: String
    private let title: String
    private let attributes: [AttributeUIModel]
    private let onPress: () -> Void
    
    private let size: CGFloat = 400
    
    public init(
        image: String,
        title: String,
        attributes: [AttributeUIModel],
        onPress: @escaping () -> Void
    ) {
        self.image = image
        self.title = title
        self.attributes = Array(attributes.prefix(2))
        self.onPress = onPress
    }
    
    public var body: some View {
        Button(action: onPress) {
            VStack(
                alignment: .center,
                spacing: DSSpacing.spacing8
            ) {
                ImageAtom(url: image)
                    .frame(maxHeight: size)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: DSRadius.radius18))
                    
                VStack(
                    alignment: .leading,
                    spacing: DSSpacing.spacing12
                ) {
                    HStack(alignment: .bottom) {
                        VStack(
                            alignment: .leading,
                            spacing: DSSpacing.spacing6
                        ) {
                            CalloutTextAtom(
                                title,
                                color: theme.current.secondaryColor
                            )
                            .multilineTextAlignment(.leading)
                            .lineLimit(1)
                            .padding(.horizontal, DSSpacing.spacing8)
                            .padding(.vertical, DSSpacing.spacing4)
                                
                            AttributeListItemMolecule(
                                icon: .checkCircle,
                                useDivider: false,
                                attributes: attributes
                            )
                        }
                        
                        Spacer()
                        
                        PrimaryIconButtonMolecule(
                            icon: .go,
                            size: .small,
                            onPress: onPress
                        )
                    }
                    
                    Divider()
                        .padding(.bottom)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    ListItemOrganism(
        image: "",
        title: "Celular",
        attributes: []
    ) {}
        .padding()
}
