// CreateImageVariationRequestParameters.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct CreateImageVariationRequestParameters: Codable {
    public init(
        image: String,
        n: Int? = nil,
        size: ImageSize? = nil,
        response_format: ImageResponseFormat? = nil,
        user: String? = nil
    ) {
        self.image = image
        self.n = n
        self.size = size
        self.response_format = response_format
        self.user = user
    }

    public let image: String
    public let n: Int?
    public let size: ImageSize?
    public let response_format: ImageResponseFormat?
    public let user: String?
}
