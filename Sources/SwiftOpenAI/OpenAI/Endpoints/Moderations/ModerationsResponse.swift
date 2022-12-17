// ModerationsResponse.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct ModerationsResponse: Codable {
    public init(
        id: String,
        model: String,
        results: [ModerationResult]
    ) {
        self.id = id
        self.model = model
        self.results = results
    }

    public let id: String
    public let model: String
    public let results: [ModerationResult]
}

public struct ModerationResult: Codable {
    public init(
        categories: Categories,
        categoryScores: CategoryScores,
        flagged: Bool
    ) {
        self.categories = categories
        self.categoryScores = categoryScores
        self.flagged = flagged
    }

    public let categories: Categories
    public let categoryScores: CategoryScores
    public let flagged: Bool

    enum CodingKeys: String, CodingKey {
        case categories
        case categoryScores = "category_scores"
        case flagged
    }
}

public struct Categories: Codable {
    public init(
        hate: Bool,
        hateThreatening: Bool,
        selfHarm: Bool,
        sexual: Bool,
        sexualMinors: Bool,
        violence: Bool,
        violenceGraphic: Bool
    ) {
        self.hate = hate
        self.hateThreatening = hateThreatening
        self.selfHarm = selfHarm
        self.sexual = sexual
        self.sexualMinors = sexualMinors
        self.violence = violence
        self.violenceGraphic = violenceGraphic
    }

    public let hate: Bool
    public let hateThreatening: Bool
    public let selfHarm: Bool
    public let sexual: Bool
    public let sexualMinors: Bool
    public let violence: Bool
    public let violenceGraphic: Bool

    enum CodingKeys: String, CodingKey {
        case hate
        case hateThreatening = "hate/threatening"
        case selfHarm = "self-harm"
        case sexual
        case sexualMinors = "sexual/minors"
        case violence
        case violenceGraphic = "violence/graphic"
    }
}

public struct CategoryScores: Codable {
    public init(
        hate: Double,
        hateThreatening: Double,
        selfHarm: Double,
        sexual: Double,
        sexualMinors: Double,
        violence: Double,
        violenceGraphic: Double
    ) {
        self.hate = hate
        self.hateThreatening = hateThreatening
        self.selfHarm = selfHarm
        self.sexual = sexual
        self.sexualMinors = sexualMinors
        self.violence = violence
        self.violenceGraphic = violenceGraphic
    }

    public let hate: Double
    public let hateThreatening: Double
    public let selfHarm: Double
    public let sexual: Double
    public let sexualMinors: Double
    public let violence: Double
    public let violenceGraphic: Double

    enum CodingKeys: String, CodingKey {
        case hate
        case hateThreatening = "hate/threatening"
        case selfHarm = "self-harm"
        case sexual
        case sexualMinors = "sexual/minors"
        case violence
        case violenceGraphic = "violence/graphic"
    }
}
