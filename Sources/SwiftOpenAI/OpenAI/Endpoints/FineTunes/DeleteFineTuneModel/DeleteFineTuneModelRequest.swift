// DeleteFineTuneModelRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct DeleteFineTuneModelRequest: Request {
    public init(model: String) {
        self.endpoint = EndPoint.models.rawValue + "/" + model
    }

    public typealias ResponseType = DeleteFineTuneModelResponse

    public typealias ParametersType = JSONNull

    public let method: HTTPMethod = .delete

    public let endpoint: String

    public let parameters: JSONNull? = nil
}
