//
//  IconButtonStyle.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 6/04/25.
//

import SwiftUI

public struct IconButtonStyle: ButtonStyle {
    
    private let size: CGFloat = 15
    
    private let backgroundColor: Color
    
    public init(
        backgroundColor: Color,
    ) {
        self.backgroundColor = backgroundColor
    }
    
    public func makeBody(configuration: Configuration) -> some View {
           configuration.label
            .frame(width: size, height: size)
               .padding()
               .background(
                    Circle()
                        .fill(backgroundColor)
               )
               .clipShape(Circle())
       }
}
