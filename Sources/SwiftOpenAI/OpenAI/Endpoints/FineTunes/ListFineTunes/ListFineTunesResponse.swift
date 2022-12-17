// ListFineTunesResponse.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct ListFineTunesResponse: Codable {
    public init(object: String, data: [FineTunesData]) {
        self.object = object
        self.data = data
    }

    public let object: String
    public let data: [FineTunesData]

    enum CodingKeys: String, CodingKey {
        case object
        case data
    }
}

public struct FineTunesData: Codable {
    public init(
        id: String,
        object: String,
        model: String,
        createdAt: Int,
        organizationID: String,
        resultFiles: [String],
        status: String,
        validationFiles: [String],
        updatedAt: Int
    ) {
        self.id = id
        self.object = object
        self.model = model
        self.createdAt = createdAt
        self.organizationID = organizationID
        self.resultFiles = resultFiles
        self.status = status
        self.validationFiles = validationFiles
        self.updatedAt = updatedAt
    }

    public let id: String
    public let object: String
    public let model: String
    public let createdAt: Int
    public let organizationID: String
    public let resultFiles: [String] // FIXME: Chage it
    public let status: String
    public let validationFiles: [String] // FIXME: Chage it
    public let updatedAt: Int

    enum CodingKeys: String, CodingKey {
        case id
        case object
        case model
        case createdAt = "created_at"
        case organizationID = "organization_id"
        case resultFiles = "result_files"
        case status
        case validationFiles = "validation_files"
        case updatedAt = "updated_at"
    }
}
