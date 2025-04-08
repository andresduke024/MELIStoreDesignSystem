//
//  IconAtom.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 6/04/25.
//

import SwiftUI

public struct IconAtom: View {
    
    private let icon: DSIcons
    private let color: Color
    
    public init(
        icon: DSIcons,
        color: Color
    ) {
        self.icon = icon
        self.color = color
    }
    
    public var body: some View {
        Image(systemName: icon.rawValue)
            .foregroundStyle(color)
    }
}

#Preview {
    IconAtom(
        icon: .search,
        color: .black
    )
}
