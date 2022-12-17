// ListModelsRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct ListModelsRequest: Request {
    public init() {}

    public typealias ParametersType = JSONNull

    public typealias ResponseType = ListModelsResponse

    public let parameters: JSONNull? = nil

    public let method: HTTPMethod = .post

    public let endpoint: String = EndPoint.models.rawValue
}
