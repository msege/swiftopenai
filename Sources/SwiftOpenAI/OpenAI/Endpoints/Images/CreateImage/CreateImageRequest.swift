// CreateImageRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct CreateImageRequest: Request {
    public init(parameters: ParametersType) {
        self.parameters = parameters
    }

    public typealias ResponseType = ImageResponse

    public typealias ParametersType = CreateImageRequestParameters

    public let method: HTTPMethod = .post

    public let endpoint: String = EndPoint.createImage.rawValue

    public let parameters: CreateImageRequestParameters?
}
