//
// Pagination.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Pagination: Codable, JSONEncodable, Hashable {

    public var totalItems: Int?
    public var pageNumber: Int?
    public var pageSize: Int?
    public var totalPages: Int?
    public var after: String?

    public init(totalItems: Int? = nil, pageNumber: Int? = nil, pageSize: Int? = nil, totalPages: Int? = nil, after: String? = nil) {
        self.totalItems = totalItems
        self.pageNumber = pageNumber
        self.pageSize = pageSize
        self.totalPages = totalPages
        self.after = after
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case totalItems = "total_items"
        case pageNumber = "page_number"
        case pageSize = "page_size"
        case totalPages = "total_pages"
        case after
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(totalItems, forKey: .totalItems)
        try containerEncoder.encodeIfPresent(pageNumber, forKey: .pageNumber)
        try containerEncoder.encodeIfPresent(pageSize, forKey: .pageSize)
        try containerEncoder.encodeIfPresent(totalPages, forKey: .totalPages)
        try containerEncoder.encodeIfPresent(after, forKey: .after)
    }
}

