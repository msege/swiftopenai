// CreateImageVariationRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct CreateImageVariationRequest: Request {
    public init(parameters: ParametersType) {
        self.parameters = parameters
    }

    public typealias ParametersType = CreateImageVariationRequestParameters

    public typealias ResponseType = ImageResponse

    public let method: HTTPMethod = .post

    public let endpoint: String = EndPoint.createImageVariation.rawValue

    public let parameters: CreateImageVariationRequestParameters?
}
