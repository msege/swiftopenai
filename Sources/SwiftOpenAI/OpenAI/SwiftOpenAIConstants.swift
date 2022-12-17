// SwiftOpenAIConstants.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

enum SwiftOpenAIConstants {
    public enum Header {
        enum Key: String {
            case contentType = "Content-Type"
            case authorization = "Authorization"
        }

        enum Value: String {
            case contentType = "application/json"
            case tokenPrefix = "Bearer "
        }
    }

    static let apiVersion: String = "v1"
    static let baseUrl: String = "https://api.openai.com"
}
