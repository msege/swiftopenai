// CreateImageRequestParameters.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct CreateImageRequestParameters: Codable {
    public init(
        prompt: String,
        n: Int? = nil,
        size: ImageSize? = nil,
        response_format: ImageResponseFormat? = nil,
        user: String? = nil
    ) {
        self.prompt = prompt
        self.n = n
        self.size = size
        self.response_format = response_format
        self.user = user
    }

    public let prompt: String
    public let n: Int?
    public let size: ImageSize?
    public let response_format: ImageResponseFormat?
    public let user: String?
}

public enum ImageResponseFormat: String, Codable {
    case url
    case b64_json
}

public enum ImageSize: String, Codable {
    case size256 = "256x256"
    case size512 = "512x512"
    case size1024 = "1024x1024"
}
