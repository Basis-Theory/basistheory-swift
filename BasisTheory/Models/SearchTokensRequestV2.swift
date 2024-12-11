//
// SearchTokensRequestV2.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct SearchTokensRequestV2: Codable, JSONEncodable, Hashable {

    public var query: String?
    public var start: String?
    public var size: Int?

    public init(query: String? = nil, start: String? = nil, size: Int? = nil) {
        self.query = query
        self.start = start
        self.size = size
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case query
        case start
        case size
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(query, forKey: .query)
        try containerEncoder.encodeIfPresent(start, forKey: .start)
        try containerEncoder.encodeIfPresent(size, forKey: .size)
    }
}
