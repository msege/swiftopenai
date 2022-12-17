// ImageResponse.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct ImageResponse: Codable {
    public init(
        created: Double,
        data: [ImageData]
    ) {
        self.created = created
        self.data = data
    }

    public let created: Double
    public let data: [ImageData]
}

public struct ImageData: Codable {
    public let url: URL?
    public let b64_json: String?
}
