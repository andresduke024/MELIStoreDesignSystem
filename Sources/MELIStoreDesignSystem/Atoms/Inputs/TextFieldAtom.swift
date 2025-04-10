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
    private let onEditingChange: (Bool) -> Void
    private let onCommit: () -> Void
    private let error: String?
    
    @Binding
    private var text: String
    
    public init(
        icon: IconAtom? = nil,
        size: DSSize = .large,
        placeholder: String,
        text: Binding<String>,
        onEditingChange: @escaping (Bool) -> Void,
        onCommit: @escaping () -> Void,
        error: String? = nil,
    ) {
        self.icon = icon
        self.size = size
        self.placeholder = placeholder
        self._text = text
        self.onEditingChange = onEditingChange
        self.onCommit = onCommit
        self.error = error
    }
    
    public var body: some View {
        VStack(
            alignment: .leading,
            spacing: DSSpacing.spacing8
        ) {
            VStack(alignment: .leading) {
                HStack(spacing: DSSpacing.spacing12) {
                    if let icon { icon }
                   
                    TextField(
                        placeholder,
                        text: $text,
                        onEditingChanged: onEditingChange,
                        onCommit: onCommit,
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
            
            if let error {
                HStack(
                    alignment: .center,
                    spacing: DSSpacing.spacing6
                ) {
                    Image(systemName: DSIcons.exclamation.rawValue)
                        
                    Text(error)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                }
                .foregroundStyle(theme.current.onPrimaryColor)
                .padding(.horizontal, DSSpacing.spacing12)
            }
        }
    }
    
    private var verticalPadding: CGFloat {
        switch size {
        case .large:
            DSSpacing.spacing12
        case .medium:
            DSSpacing.spacing8
        case .small:
            DSSpacing.spacing4
        }
    }
}

#Preview {
    TextFieldAtom(
        size: .medium,
        placeholder: "Test",
        text: .constant(""),
        onEditingChange: { _ in },
        onCommit: {},
        error: "Hello I'm an error"
    )
    .padding()
}
