// EndPoints.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public enum EndPoint: String {
    // Models
    case models

    // Completions
    case completions

    // Edits
    case edits

    // Images
    case createImage = "images/generations"
    case createImageEdit = "images/edit"
    case createImageVariation = "images/variations"

    // Embeddings
    case embeddings

    // Files
    case files
    case content

    // Fine-tunes
    case fineTunes = "fine-tunes"

    // Moderations
    case moderations
}
