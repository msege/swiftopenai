// CreateFineTunesRequestParameters.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct CreateFineTunesRequestParameters: Codable {
    public init(
        trainingFile: String,
        validationFile: String? = nil,
        model: String? = nil,
        epochCount: Int? = nil,
        batchSize: Int? = nil,
        learningRateMultiplier: Double? = nil,
        promptLossWeight: Double? = nil,
        computeClassificationMetrics: Bool? = nil,
        classificationNumberClasses: Int? = nil,
        classificationPositiveClass: String? = nil,
        classificationBetas: [Double]? = nil,
        suffix: String? = nil
    ) {
        self.trainingFile = trainingFile
        self.validationFile = validationFile
        self.model = model
        self.epochCount = epochCount
        self.batchSize = batchSize
        self.learningRateMultiplier = learningRateMultiplier
        self.promptLossWeight = promptLossWeight
        self.computeClassificationMetrics = computeClassificationMetrics
        self.classificationNumberClasses = classificationNumberClasses
        self.classificationPositiveClass = classificationPositiveClass
        self.classificationBetas = classificationBetas
        self.suffix = suffix
    }

    public let trainingFile: String?
    public let validationFile: String?
    public let model: String?
    public let epochCount: Int?
    public let batchSize: Int?
    public let learningRateMultiplier: Double?
    public let promptLossWeight: Double?
    public let computeClassificationMetrics: Bool?
    public let classificationNumberClasses: Int?
    public let classificationPositiveClass: String?
    public let classificationBetas: [Double]?
    public let suffix: String?

    enum CodingKeys: String, CodingKey {
        case trainingFile = "training_file"
        case validationFile = "validation_file"
        case model
        case epochCount = "n_epochs"
        case batchSize = "batch_size"
        case learningRateMultiplier = "learning_rate_multiplier"
        case promptLossWeight = "prompt_loss_weight"
        case computeClassificationMetrics = "compute_classification_metrics"
        case classificationNumberClasses = "classification_n_classes"
        case classificationPositiveClass = "classification_positive_class"
        case classificationBetas = "classification_betas"
        case suffix
    }
}
