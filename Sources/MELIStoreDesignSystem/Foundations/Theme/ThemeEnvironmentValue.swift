//
//  ThemeEnvironmentValue.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 6/04/25.
//

import SwiftUI

private struct ThemeKey: EnvironmentKey {
    static let defaultValue: ThemeManager = ThemeManager(theme: MainTheme())
}

public extension EnvironmentValues {
    var theme: ThemeManager {
        get { self[ThemeKey.self] }
        set { self[ThemeKey.self] = newValue }
    }
}
