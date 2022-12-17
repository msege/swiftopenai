// CreateImageEditRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct CreateImageEditRequest: Request {
    public init(parameters: ParametersType) {
        self.parameters = parameters
    }

    public typealias ParametersType = CreateImageEditRequestParameters

    public typealias ResponseType = ImageResponse

    public let method: HTTPMethod = .post

    public let endpoint: String = EndPoint.createImageEdit.rawValue

    public let parameters: CreateImageEditRequestParameters?
}
