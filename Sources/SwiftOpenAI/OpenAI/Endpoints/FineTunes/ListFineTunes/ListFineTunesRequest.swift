// ListFineTunesRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct ListFineTunesRequest: Request {
    public init() {}

    public typealias ResponseType = ListFineTunesResponse

    public typealias ParametersType = JSONNull

    public let method: HTTPMethod = .get

    public let endpoint: String = EndPoint.fineTunes.rawValue

    public let parameters: JSONNull? = nil
}
