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
    private let onPress: () -> Void
    
    private let maxHeight: CGFloat = 250
    
    public init(
        image: String,
        title: String,
        onPress: @escaping () -> Void
    ) {
        self.image = image
        self.title = title
        self.onPress = onPress
    }
    
    public var body: some View {
        Button(action: onPress) {
            ZStack(
                alignment: .bottom,
            ) {
                ImageAtom(url: image)
                    .frame(maxHeight: maxHeight)
                    .background(
                        RoundedRectangle(cornerRadius: DSRadius.radius32)
                            .fill(theme.current.thirdBackgroundColor)
                    )
                    .clipShape(
                        RoundedRectangle(cornerRadius: DSRadius.radius32)
                    )
                
                HStack(alignment: .center) {
                    CalloutTextAtom(
                        title,
                        color: theme.current.secondaryColor
                    )
                    .multilineTextAlignment(.leading)
                    .lineLimit(1)
                    .padding(.horizontal, DSSpacing.spacing8)
                    .padding(.vertical, DSSpacing.spacing4)
                    
                    Spacer()
                    
                    PrimaryIconButtonMolecule(
                        icon: .go,
                        onPress: onPress
                    )
                }
                .padding(.vertical, DSSpacing.spacing12)
                .padding(.horizontal, DSSpacing.spacing8)
                .background(
                    RoundedRectangle(cornerRadius: DSRadius.radius32)
                        .fill(theme.current.secondaryBackgroundColor)
                )
                .clipShape(
                    RoundedRectangle(cornerRadius: DSRadius.radius32)
                )
                .padding(DSSpacing.spacing8)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    ListItemOrganism(
        image: "",
        title: "Celular",
    ) {}
        .padding()
}
