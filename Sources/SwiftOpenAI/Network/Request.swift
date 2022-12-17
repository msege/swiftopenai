// Request.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public protocol Request {
    var method: HTTPMethod { get }
    var endpoint: String { get }
    var urlRequest: URLRequest? { get }

    var parameters: ParametersType? { get }

    associatedtype ResponseType: Codable
    associatedtype ParametersType: Encodable
}
