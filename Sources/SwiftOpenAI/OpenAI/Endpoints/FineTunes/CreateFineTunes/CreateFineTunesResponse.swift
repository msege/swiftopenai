// CreateFineTunesResponse.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct CreateFineTunesResponse: Codable {
    public init(
        id: String,
        object: String,
        model: String,
        createdAt: Int,
        events: [Event],
        fineTunedModel: JSONNull?,
        hyperparams: Hyperparams,
        organizationID: String,
        resultFiles: [String],
        status: String,
        validationFiles: [String],
        trainingFiles: [TrainingFile],
        updatedAt: Int
    ) {
        self.id = id
        self.object = object
        self.model = model
        self.createdAt = createdAt
        self.events = events
        self.fineTunedModel = fineTunedModel
        self.hyperparams = hyperparams
        self.organizationID = organizationID
        self.resultFiles = resultFiles
        self.status = status
        self.validationFiles = validationFiles
        self.trainingFiles = trainingFiles
        self.updatedAt = updatedAt
    }

    public let id: String
    public let object: String
    public let model: String
    public let createdAt: Int
    public let events: [Event]
    public let fineTunedModel: JSONNull?
    public let hyperparams: Hyperparams
    public let organizationID: String
    public let resultFiles: [String] // FIXME: Change it
    public let status: String
    public let validationFiles: [String] // FIXME: Change it
    public let trainingFiles: [TrainingFile]
    public let updatedAt: Int

    enum CodingKeys: String, CodingKey {
        case id
        case object
        case model
        case createdAt = "created_at"
        case events
        case fineTunedModel = "fine_tuned_model"
        case hyperparams
        case organizationID = "organization_id"
        case resultFiles = "result_files"
        case status
        case validationFiles = "validation_files"
        case trainingFiles = "training_files"
        case updatedAt = "updated_at"
    }
}

public struct Event: Codable {
    public init(object: String, createdAt: Int, level: String, message: String) {
        self.object = object
        self.createdAt = createdAt
        self.level = level
        self.message = message
    }

    public let object: String
    public let createdAt: Int
    public let level: String
    public let message: String

    enum CodingKeys: String, CodingKey {
        case object
        case createdAt = "created_at"
        case level
        case message
    }
}

public struct Hyperparams: Codable {
    public init(batchSize: Int, learningRateMultiplier: Double, nEpochs: Int, promptLossWeight: Double) {
        self.batchSize = batchSize
        self.learningRateMultiplier = learningRateMultiplier
        self.nEpochs = nEpochs
        self.promptLossWeight = promptLossWeight
    }

    public let batchSize: Int
    public let learningRateMultiplier: Double
    public let nEpochs: Int
    public let promptLossWeight: Double

    enum CodingKeys: String, CodingKey {
        case batchSize = "batch_size"
        case learningRateMultiplier = "learning_rate_multiplier"
        case nEpochs = "n_epochs"
        case promptLossWeight = "prompt_loss_weight"
    }
}

public struct TrainingFile: Codable {
    public init(id: String, object: String, bytes: Int, createdAt: Int, filename: String, purpose: String) {
        self.id = id
        self.object = object
        self.bytes = bytes
        self.createdAt = createdAt
        self.filename = filename
        self.purpose = purpose
    }

    public let id: String
    public let object: String
    public let bytes: Int
    public let createdAt: Int
    public let filename: String
    public let purpose: String

    enum CodingKeys: String, CodingKey {
        case id
        case object
        case bytes
        case createdAt = "created_at"
        case filename
        case purpose
    }
}
