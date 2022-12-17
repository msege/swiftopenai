// CreateEditRequestParameters.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct CreateEditRequestParameters: Codable {
    public init(
        model: String,
        input: String? = nil,
        instruction: String,
        n: Int? = nil,
        temperature: Int? = nil,
        top_p: Double? = nil
    ) {
        self.model = model
        self.input = input
        self.instruction = instruction
        self.n = n
        self.temperature = temperature
        self.top_p = top_p
    }

    public let model: String
    public let input: String?
    public let instruction: String
    public let n: Int?
    public let temperature: Int?
    public let top_p: Double?
}
