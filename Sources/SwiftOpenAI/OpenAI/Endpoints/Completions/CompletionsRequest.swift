// CompletionsRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct CompletionsRequest: Request {
    public init(parameters: CompletionsRequestParameters) {
        self.parameters = parameters
    }

    public typealias ParametersType = CompletionsRequestParameters

    public typealias ResponseType = CompletionsResponse

    public let method: HTTPMethod = .post

    public let endpoint: String = EndPoint.completions.rawValue

    public let parameters: CompletionsRequestParameters?
}
