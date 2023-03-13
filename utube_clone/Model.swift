//
//  Model.swift
//  utube_clone
//
//  Created by user on 20/02/23.
//

import Foundation

struct VideoData: Codable {
    let videos: [VideoSnippet]
    private enum CodingKeys: String, CodingKey{
        case videos = "items"
    }
}

struct VideoSnippet: Codable {
    let snippet: Video
    private enum CodingKeys: String, CodingKey{
        case snippet = "snippet"
    }
}

struct Video: Codable {
    let videoId: String?
    let title: String?
    let description: String?
    let thumbnails: Thumbnails
    let published: String?
    
    private enum CodingKeys: String, CodingKey {
        case videoId = "channelId"
        case title = "title"
        case description = "description"
        case thumbnails
        case published = "publishedAt"
    }
}

struct Default: Codable {
    let url: String
    let width, height: Int
}

struct Thumbnails: Codable {
    let thumbnailsDefault: Default?

    enum CodingKeys: String, CodingKey {
        case thumbnailsDefault = "default"
    }
}
