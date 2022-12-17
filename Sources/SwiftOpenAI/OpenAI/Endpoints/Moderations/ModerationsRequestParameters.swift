// ModerationsRequestParameters.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct ModerationsRequestParameters: Codable {
    public init(
        input: String,
        model: ContentModerationModel? = nil
    ) {
        self.input = input
        self.model = model
    }

    public let input: String
    public let model: ContentModerationModel?
}

public enum ContentModerationModel: String, Codable {
    case textStable = "text-moderation-stable"
    case textLatest = "text-moderation-latest"
}
