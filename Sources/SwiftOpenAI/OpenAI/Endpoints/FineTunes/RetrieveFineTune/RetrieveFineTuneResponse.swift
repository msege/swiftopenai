// RetrieveFineTuneResponse.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public struct RetrieveFineTunesResponse: Codable {
    public init(
        id: String,
        object: String,
        model: String,
        createdAt: Int,
        events: [Event],
        fineTunedModel: String,
        hyperparams: Hyperparams,
        organizationID: String,
        resultFiles: [TrainingFile],
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
    public let fineTunedModel: String
    public let hyperparams: Hyperparams
    public let organizationID: String
    public let resultFiles: [TrainingFile]
    public let status: String
    public let validationFiles: [String]
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
