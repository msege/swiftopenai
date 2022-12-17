// CreateEditResponse.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct CreateEditResponse: Codable {
    public init(
        object: String,
        created: Int,
        choices: [Choice],
        usage: Usage
    ) {
        self.object = object
        self.created = created
        self.choices = choices
        self.usage = usage
    }

    public let object: String
    public let created: Int
    public let choices: [Choice]
    public let usage: Usage

    enum CodingKeys: String, CodingKey {
        case object
        case created
        case choices
        case usage
    }
}
