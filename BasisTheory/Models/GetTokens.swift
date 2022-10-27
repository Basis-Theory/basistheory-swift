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

    public var types: [String]?
    public var tokenIds: [String]?
    public var metadataSearch: [String: String]?
    public var page: Int?
    public var size: Int?

    public init(types: [String]? = nil, tokenIds: [String]? = nil, metadataSearch: [String: String]? = nil, page: Int? = nil, size: Int? = nil) {
        self.types = types
        self.tokenIds = tokenIds
        self.metadataSearch = metadataSearch
        self.page = page
        self.size = size
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case types
        case tokenIds
        case metadataSearch
        case page
        case size
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(types, forKey: .types)
        try containerEncoder.encodeIfPresent(tokenIds, forKey: .tokenIds)
        try containerEncoder.encodeIfPresent(metadataSearch, forKey: .metadataSearch)
        try containerEncoder.encodeIfPresent(page, forKey: .page)
        try containerEncoder.encodeIfPresent(size, forKey: .size)
    }
}

