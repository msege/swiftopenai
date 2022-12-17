// EmbeddingsRequestParameters.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct EmbeddingsRequestParameters: Codable {
    public init(
        model: String,
        input: String,
        user: String? = nil
    ) {
        self.model = model
        self.input = input
        self.user = user
    }

    public let model: String
    public let input: String
    public let user: String?
}
