// JSONNull.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public class JSONNull: Codable, Hashable {
    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public static func == (_: JSONNull, _: JSONNull) -> Bool {
        return true
    }

    public func hash(into _: inout Hasher) {}

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
