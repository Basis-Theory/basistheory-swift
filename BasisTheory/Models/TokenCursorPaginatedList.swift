//
// TokenCursorPaginatedList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct TokenCursorPaginatedList: Codable, JSONEncodable, Hashable {

    public var pagination: CursorPagination?
    public var data: [Token]?

    public init(pagination: CursorPagination? = nil, data: [Token]? = nil) {
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
