// CreateEditRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct CreateEditRequest: Request {
    public init(parameters: CreateEditRequestParameters) {
        self.parameters = parameters
    }

    public typealias ResponseType = CreateEditResponse

    public typealias ParametersType = CreateEditRequestParameters

    public let method: HTTPMethod = .post

    public let endpoint: String = EndPoint.edits.rawValue

    public let parameters: CreateEditRequestParameters?
}
