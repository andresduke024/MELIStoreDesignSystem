//
//  Theme.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 5/04/25.
//

import SwiftUI
import Observation

public protocol Theme: Sendable {
    var primaryColor: Color { get }
    var secondaryColor: Color { get }
    
    var onPrimaryColor: Color { get }
    var onSecondaryColor: Color { get }
    
    var backgroundColor: Color { get }
    var secondaryBackgroundColor: Color { get }
    var thirdBackgroundColor: Color { get }
    var onBackgroundColor: Color { get }
    
    var shadowColor: Color { get }
}
