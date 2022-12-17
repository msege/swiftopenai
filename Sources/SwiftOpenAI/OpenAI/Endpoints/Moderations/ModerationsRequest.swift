// ModerationsRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct ModerationsRequest: Request {
    public init(parameters: ParametersType) {
        self.parameters = parameters
    }

    public typealias ResponseType = ModerationsResponse

    public typealias ParametersType = ModerationsRequestParameters

    public let method: HTTPMethod = .post

    public let endpoint: String = EndPoint.moderations.rawValue

    public let parameters: ModerationsRequestParameters?
}
