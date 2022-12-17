// RetrieveModelRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct RetrieveModelRequest: Request {
    public init(modelName: String) {
        self.endpoint = "\(EndPoint.models)/\(modelName)"
    }

    public typealias ParametersType = JSONNull
    public typealias ResponseType = RetrieveModelResponse

    public let parameters: JSONNull? = nil

    public let method: HTTPMethod = .get

    public let endpoint: String
}
