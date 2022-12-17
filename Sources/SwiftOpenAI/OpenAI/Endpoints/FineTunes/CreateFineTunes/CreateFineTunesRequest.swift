// CreateFineTunesRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct CreateFineTunesRequest: Request {
    public init(parameters: ParametersType) {
        self.parameters = parameters
    }

    public typealias ResponseType = CreateFineTunesResponse

    public typealias ParametersType = CreateFineTunesRequestParameters

    public let method: HTTPMethod = .post

    public let endpoint: String = EndPoint.fineTunes.rawValue

    public let parameters: CreateFineTunesRequestParameters?
}
