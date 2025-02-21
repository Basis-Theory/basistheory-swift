//
// ReactorPaginatedList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ReactorPaginatedList: Codable, JSONEncodable, Hashable {

    public var pagination: Pagination?
    public var data: [Reactor]?

    public init(pagination: Pagination? = nil, data: [Reactor]? = nil) {
        self.pagination = pagination
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pagination
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(pagination, forKey: .pagination)
        try containerEncoder.encodeIfPresent(data, forKey: .data)
    }
}

