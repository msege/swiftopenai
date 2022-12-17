// RetrieveModelResponse.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct RetrieveModelResponse: Codable {
    public init(id: String, object: String, created: Int, ownedBy: String, permission: [Permission], root: String, parent: JSONNull?) {
        self.id = id
        self.object = object
        self.created = created
        self.ownedBy = ownedBy
        self.permission = permission
        self.root = root
        self.parent = parent
    }

    public let id: String
    public let object: String
    public let created: Int
    public let ownedBy: String
    public let permission: [Permission]
    public let root: String
    public let parent: JSONNull?

    enum CodingKeys: String, CodingKey {
        case id
        case object
        case created
        case ownedBy = "owned_by"
        case permission
        case root
        case parent
    }
}

public struct Permission: Codable {
    public init(
        id: String,
        object: String,
        created: Int,
        allowCreateEngine: Bool,
        allowSampling: Bool,
        allowLogprobs: Bool,
        allowSearchIndices: Bool,
        allowView: Bool,
        allowFineTuning: Bool,
        organization: String,
        group: JSONNull?,
        isBlocking: Bool
    ) {
        self.id = id
        self.object = object
        self.created = created
        self.allowCreateEngine = allowCreateEngine
        self.allowSampling = allowSampling
        self.allowLogprobs = allowLogprobs
        self.allowSearchIndices = allowSearchIndices
        self.allowView = allowView
        self.allowFineTuning = allowFineTuning
        self.organization = organization
        self.group = group
        self.isBlocking = isBlocking
    }

    public let id: String
    public let object: String
    public let created: Int
    public let allowCreateEngine: Bool
    public let allowSampling: Bool
    public let allowLogprobs: Bool
    public let allowSearchIndices: Bool
    public let allowView: Bool
    public let allowFineTuning: Bool
    public let organization: String
    public let group: JSONNull?
    public let isBlocking: Bool

    enum CodingKeys: String, CodingKey {
        case id
        case object
        case created
        case allowCreateEngine = "allow_create_engine"
        case allowSampling = "allow_sampling"
        case allowLogprobs = "allow_logprobs"
        case allowSearchIndices = "allow_search_indices"
        case allowView = "allow_view"
        case allowFineTuning = "allow_fine_tuning"
        case organization
        case group
        case isBlocking = "is_blocking"
    }
}
