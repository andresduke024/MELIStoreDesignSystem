//
//  TextFieldAtom.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 7/04/25.
//


import SwiftUI

public struct TextFieldAtom: View {
    
    @Environment(\.theme)
    private var theme: ThemeManager
    
    private let icon: IconAtom?
    private let size: DSSize
    private let placeholder: String
    private let onCommit: () -> Void
    
    @Binding
    private var text: String
    
    public init(
        icon: IconAtom? = nil,
        size: DSSize = .large,
        placeholder: String,
        text: Binding<String>,
        onCommit: @escaping () -> Void
    ) {
        self.icon = icon
        self.size = size
        self.placeholder = placeholder
        self._text = text
        self.onCommit = onCommit
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: DSSpacing.spacing12) {
                if let icon { icon }
               
                TextField(
                    placeholder,
                    text: $text,
                    onCommit: onCommit
                )
                .multilineTextAlignment(.leading)
                .foregroundStyle(theme.current.secondaryColor)
                .frame(maxWidth: .infinity)
                
            }
            .padding(DSSpacing.spacing4)
        }
        .frame(minHeight: 40)
        .frame(maxWidth: .infinity)
        .padding(.horizontal, DSSpacing.spacing16)
        .padding(.vertical, verticalPadding)
        .background(
            RoundedRectangle(cornerRadius: DSRadius.radius32)
                .fill(theme.current.secondaryBackgroundColor)
        )
    }
    
    private var verticalPadding: CGFloat {
        switch size {
        case .large:
            DSSpacing.spacing12
        case .medium:
            DSSpacing.spacing8
        }
    }
}

#Preview {
    TextFieldAtom(
        size: .medium,
        placeholder: "Test",
        text: .constant(""),
        onCommit: {}
    )
    .padding()
}
