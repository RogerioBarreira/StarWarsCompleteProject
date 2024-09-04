//
//  SWSpecies.swift
//  StarWarsCompleteProject
//
//  Created by Rogerio Martins Barreira on 03/09/24.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sWSpecies = try? JSONDecoder().decode(SWSpecies.self, from: jsonData)

import Foundation

// MARK: - SWSpecies
struct SWSpecies: Codable {
    let count: Int?
    let next: String?
    let previous: String?
    let results: [ResultSpecies]?
}

// MARK: - ResultSpecies
struct ResultSpecies: Codable {
    let name, classification: String?
    let designation: Designation?
    let averageHeight, skinColors, hairColors, eyeColors: String?
    let averageLifespan: String?
    let homeworld: String?
    let language: String?
    let people, films: [String]?
    let created, edited: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case name, classification, designation
        case averageHeight = "average_height"
        case skinColors = "skin_colors"
        case hairColors = "hair_colors"
        case eyeColors = "eye_colors"
        case averageLifespan = "average_lifespan"
        case homeworld, language, people, films, created, edited, url
    }
}

enum Designation: String, Codable {
    case reptilian = "reptilian"
    case sentient = "sentient"
}
