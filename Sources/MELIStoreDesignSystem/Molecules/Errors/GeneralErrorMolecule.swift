//
//  GeneralError.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 7/04/25.
//


import SwiftUI

public struct GeneralErrorMolecule: View {
    
    @Environment(\.theme)
    private var theme: ThemeManager
    
    private let text: String
    
    private let maxImageHeight: CGFloat = 400
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        VStack(alignment: .center) {
            ImageAtom(
                image: DSImages.generalError
            )
            .frame(
                maxHeight: DSConstants.maxErrorImageHeight
            )
            
            Title3TextAtom(
                text,
                color: theme.current.secondaryColor,
            )
            .multilineTextAlignment(.center)
            
        }
    }
}

#Preview {
    GeneralErrorMolecule(
        text: "Ups… Ocurrió un error con tu solicitud"
    )
}
