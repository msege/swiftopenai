// SwiftOpenAI.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public final class SwiftOpenAI {
    private init() {}

    public class func register(token: String, organization: String? = nil) {
        self.token = token
        self.organization = organization
    }

    static private(set) var token: String?
    static private(set) var organization: String?
}
