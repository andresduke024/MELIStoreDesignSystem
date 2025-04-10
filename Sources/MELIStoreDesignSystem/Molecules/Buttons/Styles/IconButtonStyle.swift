//
//  IconButtonStyle.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 6/04/25.
//

import SwiftUI

public struct IconButtonStyle: ButtonStyle {
    
    private let backgroundColor: Color
    private let size: DSSize
    
    public init(
        backgroundColor: Color,
        size: DSSize = .large
    ) {
        self.backgroundColor = backgroundColor
        self.size = size
    }
    
    public func makeBody(configuration: Configuration) -> some View {
           configuration.label
            .frame(width: iconSize, height: iconSize)
               .padding()
               .background(
                    Circle()
                        .fill(backgroundColor)
               )
               .clipShape(Circle())
       }
    
    private var iconSize: CGFloat {
        return switch size {
        case .large: 15
        case .medium: 10
        case .small: 5
        }
    }
}
