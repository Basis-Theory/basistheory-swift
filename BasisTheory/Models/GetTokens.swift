//
// GetTokens.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetTokens: Codable, JSONEncodable, Hashable {

    public var type: [String]?
    public var id: [String]?
    public var metadata: [String: String]?
    public var page: Int?
    public var start: String?
    public var size: Int?

    public init(type: [String]? = nil, id: [String]? = nil, metadata: [String: String]? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil) {
        self.type = type
        self.id = id
        self.metadata = metadata
        self.page = page
        self.start = start
        self.size = size
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case id
        case metadata
        case page
        case start
        case size
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(type, forKey: .type)
        try containerEncoder.encodeIfPresent(id, forKey: .id)
        try containerEncoder.encodeIfPresent(metadata, forKey: .metadata)
        try containerEncoder.encodeIfPresent(page, forKey: .page)
        try containerEncoder.encodeIfPresent(start, forKey: .start)
        try containerEncoder.encodeIfPresent(size, forKey: .size)
    }
}

