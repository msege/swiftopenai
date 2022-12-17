// NetworkError.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public enum NetworkError: Error {
    case customError(_ reason: String)
    case decodingError(_ reason: Error)
    case invalidRequest
}
