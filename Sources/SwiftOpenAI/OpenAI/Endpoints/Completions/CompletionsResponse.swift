// CompletionsResponse.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

// MARK: - CompletionsResponse

public struct CompletionsResponse: Codable {
    public init(id: String, object: String, created: Int, model: String, choices: [Choice], usage: Usage) {
        self.id = id
        self.object = object
        self.created = created
        self.model = model
        self.choices = choices
        self.usage = usage
    }

    public let id: String
    public let object: String
    public let created: Int
    public let model: String
    public let choices: [Choice]
    public let usage: Usage

    enum CodingKeys: String, CodingKey {
        case id
        case object
        case created
        case model
        case choices
        case usage
    }
}

// MARK: - Choice

public struct Choice: Codable {
    public init(
        text: String,
        index: Int,
        logprobs: JSONNull?,
        finishReason: String
    ) {
        self.text = text
        self.index = index
        self.logprobs = logprobs
        self.finishReason = finishReason
    }

    public let text: String
    public let index: Int
    public let logprobs: JSONNull?
    public let finishReason: String

    enum CodingKeys: String, CodingKey {
        case text
        case index
        case logprobs
        case finishReason = "finish_reason"
    }
}
