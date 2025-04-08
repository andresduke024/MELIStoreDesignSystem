//
//  MainTheme.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 5/04/25.
//

import SwiftUI

struct MainTheme: Theme {

    private func buildColor(_ name: String) -> Color {
        Color(name, bundle: .module)
    }
    
    var primaryColor: Color {
        buildColor("ThemePrimaryColor")
    }
    
    var secondaryColor: Color {
        buildColor("ThemeSecondaryColor")
    }
    
    var onPrimaryColor: Color {
        buildColor("ThemeOnPrimaryColor")
    }
    
    var onSecondaryColor: Color {
        buildColor("ThemeOnSecondaryColor")
    }
    
    var backgroundColor: Color {
        buildColor("ThemeBackgroundColor")
    }
    
    var secondaryBackgroundColor: Color {
        buildColor("ThemeSecondaryBackgroundColor")
    }
    
    var thirdBackgroundColor: Color {
        buildColor("ThemeThirdBackgroundColor")
    }

    
    var onBackgroundColor: Color {
        buildColor("ThemeOnBackgroundColor")
    }
    
    var shadowColor: Color {
        .gray.opacity(0.2)
    }
}
