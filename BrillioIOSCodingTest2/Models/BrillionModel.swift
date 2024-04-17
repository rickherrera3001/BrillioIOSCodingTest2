//
//  BrillionModel.swift
//  BrillioIOSCodingTest2
//
//  Created by Ricardo Developer on 16/04/24.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let brillioIOSCodingTest = try? JSONDecoder().decode(BrillioIOSCodingTest.self, from: jsonData)

import Foundation

// MARK: - BrillioIOSCodingTest
struct BrillioIOSCodingTest: Codable {
    let id: String
    let content: String
    let author: String
    let tags: [String]
    let authorSlug: String
    let length: Int
    let dateAdded, dateModified: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case content, author, tags, authorSlug, length, dateAdded, dateModified
    }
}

