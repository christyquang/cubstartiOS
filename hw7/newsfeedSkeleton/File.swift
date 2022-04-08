//
//  File.swift
//  newsfeedSkeleton
//
//  Created by Christy Quang on 4/8/22.
//

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
    let author: String?
    let url: String
    let source, title, articleDescription: String
    let image: String
    let date: Date

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}

