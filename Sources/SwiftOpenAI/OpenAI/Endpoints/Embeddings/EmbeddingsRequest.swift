// EmbeddingsRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct EmbeddingsRequest: Request {
    public init(parameters: ParametersType) {
        self.parameters = parameters
    }

    public typealias ResponseType = EmbeddingsResponse

    public typealias ParametersType = EmbeddingsRequestParameters

    public let method: HTTPMethod = .post

    public let endpoint: String = EndPoint.embeddings.rawValue

    public let parameters: EmbeddingsRequestParameters?
}
