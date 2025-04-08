//
//  ThemeEnvironmentValue.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 6/04/25.
//

import SwiftUI

public extension EnvironmentValues {
    @Entry
    var theme: ThemeManager = .init(theme: MainTheme())
}
