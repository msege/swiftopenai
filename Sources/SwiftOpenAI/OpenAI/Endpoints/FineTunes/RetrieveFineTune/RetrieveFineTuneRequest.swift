// RetrieveFineTuneRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct RetrieveFineTunesRequest: Request {
    public init(fineTuneId: String) {
        self.endpoint = EndPoint.fineTunes.rawValue + "/" + fineTuneId
    }

    public typealias ResponseType = ListFineTunesResponse

    public typealias ParametersType = JSONNull

    public let method: HTTPMethod = .get

    public let endpoint: String

    public let parameters: JSONNull? = nil
}
