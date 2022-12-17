// DeleteFineTuneModelResponse.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct DeleteFineTuneModelResponse: Codable {
    public init(
        id: String,
        object: String,
        deleted: Bool
    ) {
        self.id = id
        self.object = object
        self.deleted = deleted
    }

    public let id: String
    public let object: String
    public let deleted: Bool
}
