// Request + URLRequest.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public extension Request {
    var urlRequest: URLRequest? {
        guard var urlComponents = URLComponents(string: SwiftOpenAIConstants.baseUrl) else { return nil }
        urlComponents.path = "/" + SwiftOpenAIConstants.apiVersion + "/" + endpoint

        guard let url = urlComponents.url else {
            return nil
        }

        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue

        let encoder = JSONEncoder()

        if method == .post,
           let parameters = parameters,
           let body = try? encoder.encode(parameters) {
            request.httpBody = body
        }

        if let token = SwiftOpenAI.token {
            request.setValue(
                SwiftOpenAIConstants.Header.Value.tokenPrefix.rawValue + token,
                forHTTPHeaderField: SwiftOpenAIConstants.Header.Key.authorization.rawValue
            )
        }

        request.setValue(
            SwiftOpenAIConstants.Header.Value.contentType.rawValue,
            forHTTPHeaderField: SwiftOpenAIConstants.Header.Key.contentType.rawValue
        )

        return request
    }
}
