//
//  AttributeUIModel.swift
//  MELIStoreDesignSystem
//
//  Created by Andres Duque on 8/04/25.
//

public struct AttributeUIModel: Identifiable {
    public let id: String
    public let name: String
    public let description: String

    public init(
        id: String,
        name: String,
        description: String = ""
    ) {
        self.id = id
        self.name = name
        self.description = description
    }
}
