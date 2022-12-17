// ListFineTuneEventsRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct ListFineTuneEventsRequest: Request {
    public init(fineTuneId: String) {
        self.endpoint = EndPoint.fineTunes.rawValue + "/" + fineTuneId + "/events"
    }

    public typealias ResponseType = ListFineTuneEventsResponse

    public typealias ParametersType = JSONNull

    public let method: HTTPMethod = .get

    public let endpoint: String

    public let parameters: JSONNull? = nil
}
