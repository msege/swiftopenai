// ListFineTuneEventsResponse.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct ListFineTuneEventsResponse: Codable {
    public init(
        object: String,
        data: [TuneEventData]
    ) {
        self.object = object
        self.data = data
    }

    public let object: String
    public let data: [TuneEventData]
}

public struct TuneEventData: Codable {
    public init(
        object: String,
        createdAt: Int,
        level: String,
        message: String
    ) {
        self.object = object
        self.createdAt = createdAt
        self.level = level
        self.message = message
    }

    public let object: String
    public let createdAt: Int
    public let level: String
    public let message: String

    enum CodingKeys: String, CodingKey {
        case object
        case createdAt = "created_at"
        case level
        case message
    }
}
