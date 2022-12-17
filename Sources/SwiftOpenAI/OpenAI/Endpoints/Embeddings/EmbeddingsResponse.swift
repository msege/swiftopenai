// EmbeddingsResponse.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct EmbeddingsResponse: Codable {
    public init(
        object: String,
        data: [DataModel],
        model: String,
        usage: Usage
    ) {
        self.object = object
        self.data = data
        self.model = model
        self.usage = usage
    }

    public let object: String
    public let data: [DataModel]
    public let model: String
    public let usage: Usage
}

public struct DataModel: Codable {
    public init(
        object: String,
        embedding: [Double],
        index: Int
    ) {
        self.object = object
        self.embedding = embedding
        self.index = index
    }

    public let object: String
    public let embedding: [Double]
    public let index: Int
}
