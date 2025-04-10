//
//  DSImages.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 7/04/25.
//

import Foundation

enum DSImages: ImageProtocol, Sendable {
    case imageNotFound
    case notFoundError
    case generalError
    
    var name: String {
        switch self {
        case .imageNotFound:
            return "ImageNotFoundPlaceholder"
        case .notFoundError:
            return "NotFoundErrorImage"
        case .generalError:
            return "GeneralErrorImage"
        }
    }
    
    var bundle: Bundle? { .module }
}
