// CancelFineTunesRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct CancelFineTunesRequest: Request {
    public init(fineTuneId: String) {
        self.endpoint = EndPoint.fineTunes.rawValue + "/" + fineTuneId + "/cancel"
    }

    public typealias ResponseType = ListFineTunesResponse

    public typealias ParametersType = JSONNull

    public let method: HTTPMethod = .post

    public let endpoint: String

    public let parameters: JSONNull? = nil
}
