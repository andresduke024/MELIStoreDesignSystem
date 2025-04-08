//
//  ThemeManager.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 6/04/25.
//

import Observation

@Observable
public final class ThemeManager {
    public var current: Theme
    
    public init(theme: Theme) {
        self.current = theme
    }
}
