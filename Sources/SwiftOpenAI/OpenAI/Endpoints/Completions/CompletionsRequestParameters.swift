// CompletionsRequestParameters.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct CompletionsRequestParameters: Codable {
    public init(
        model: String,
        prompt: String? = nil,
        maxTokens: Int = 16,
        temperature: Int = 1,
        topP: Int = 1,
        n: Int = 1,
        stream: Bool = false,
        logprobs: Int? = nil
    ) {
        self.model = model
        self.prompt = prompt
        self.maxTokens = maxTokens
        self.temperature = temperature
        self.topP = topP
        self.n = n
        self.stream = stream
        self.logprobs = logprobs
    }

    public let model: String
    public let prompt: String?
    public let maxTokens: Int
    public let temperature: Int
    public let topP: Int
    public let n: Int
    public let stream: Bool
    public let logprobs: Int?

    enum CodingKeys: String, CodingKey {
        case model
        case prompt
        case maxTokens = "max_tokens"
        case temperature
        case topP = "top_p"
        case n
        case stream
        case logprobs
    }
}
