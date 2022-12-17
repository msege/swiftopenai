// CreateImageEditRequestParameters.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct CreateImageEditRequestParameters: Codable {
    public init(
        image: String,
        mask: String? = nil,
        prompt: String,
        n: Int? = nil,
        size: ImageSize? = nil,
        response_format: ImageResponseFormat? = nil,
        user: String? = nil
    ) {
        self.image = image
        self.mask = mask
        self.prompt = prompt
        self.n = n
        self.size = size
        self.response_format = response_format
        self.user = user
    }

    public let image: String
    public let mask: String?
    public let prompt: String
    public let n: Int?
    public let size: ImageSize?
    public let response_format: ImageResponseFormat?
    public let user: String?
}
