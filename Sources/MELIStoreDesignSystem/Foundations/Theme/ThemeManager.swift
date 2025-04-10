//
//  ThemeManager.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 6/04/25.
//

import Observation

@Observable
public final class ThemeManager: Sendable {
    public let current: Theme
    
    public init(theme: Theme) {
        self.current = theme
    }
}
