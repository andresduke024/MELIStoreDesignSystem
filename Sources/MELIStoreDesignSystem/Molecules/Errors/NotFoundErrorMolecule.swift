//
//  NotFoundErrorMolecule.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 7/04/25.
//

import SwiftUI

public struct NotFoundErrorMolecule: View {
    
    @Environment(\.theme)
    private var theme: ThemeManager
    
    private let text: String
    
    private let backgroundDecorationSize: CGFloat = 80
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        ZStack(alignment: .topTrailing) {
            ImageAtom(
                image: DSImages.notFoundError
            )
            .frame(
                maxHeight: DSConstants.maxErrorImageHeight
            )
            
            ZStack {
                Circle()
                    .fill(theme.current.thirdBackgroundColor)
                    .frame(
                        width: backgroundDecorationSize,
                        height: backgroundDecorationSize,
                        alignment: .leading
                    )
                    .padding(.top, DSSpacing.spacing32)
                    
                
                HeadlineTextAtom(
                    text,
                    color: theme.current.secondaryColor,
                    weight: .bold
                )
                .multilineTextAlignment(.center)
                .padding(.trailing, DSSpacing.spacing32)
                .padding(.top, DSSpacing.spacing52)
            }
        }
    }
}

#Preview {
    NotFoundErrorMolecule(
        text: "Ups… no encontramos \n resultados."
    )
}
