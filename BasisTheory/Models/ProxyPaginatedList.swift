//
// ProxyPaginatedList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProxyPaginatedList: Codable, JSONEncodable, Hashable {

    public var pagination: Pagination?
    public var data: [Proxy]?

    public init(pagination: Pagination? = nil, data: [Proxy]? = nil) {
        self.pagination = pagination
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pagination
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(pagination, forKey: .pagination)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

