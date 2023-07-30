//
//  QuranModel.swift
//  Quran
//
//  Created by Takasur Azeem on 30/07/2023.
//  Copyright © 2023 Eyad Shokry. All rights reserved.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let surahNames = try? JSONDecoder().decode(SurahNames.self, from: jsonData)

import Foundation

// MARK: - SurahName
struct SurahName: Codable, Identifiable, Hashable {
    static func == (lhs: SurahName, rhs: SurahName) -> Bool {
        lhs.id == rhs.id
    }
    
    public func hash(into hasher: inout Hasher) {
        return hasher.combine(id)
    }
    
    var id: String {
        index
    }
    let place: Place
    let type: TypeEnum
    let count: Int
    let title, titleAr, index, pages: String
    let juz: [Juz]
}

// MARK: - Juz
struct Juz: Codable {
    let index: String
    let verse: Verse
}

// MARK: - Verse
struct Verse: Codable {
    let start, end: String
}

enum Place: String, Codable {
    case mecca = "Mecca"
    case medina = "Medina"
}

enum TypeEnum: String, Codable {
    case madaniyah = "Madaniyah"
    case makkiyah = "Makkiyah"
}

typealias SurahNames = [SurahName]
