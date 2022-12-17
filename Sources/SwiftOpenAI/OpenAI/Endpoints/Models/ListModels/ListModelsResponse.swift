// ListModelsResponse.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct ListModelsResponse: Codable {
    let object: String
    let data: [ModelData]
}

public struct ModelData: Codable {
    public let id: String
    public let object: DatumObject
    public let created: Int
    public let ownedBy: OwnedBy
    public let permission: [Permission]
    public let root: String
    public let parent: JSONNull?

    enum CodingKeys: String, CodingKey {
        case id, object, created
        case ownedBy = "owned_by"
        case permission, root, parent
    }
}

public enum DatumObject: String, Codable {
    case model
}

public enum OwnedBy: String, Codable {
    case openai
    case openaiDev = "openai-dev"
    case openaiInternal = "openai-internal"
    case system
}
