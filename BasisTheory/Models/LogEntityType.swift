//
// LogEntityType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LogEntityType: Codable, JSONEncodable, Hashable {

    public var displayName: String?
    public var value: String?

    public init(displayName: String? = nil, value: String? = nil) {
        self.displayName = displayName
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case displayName = "display_name"
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(value, forKey: .value)
    }
}

