//
// LogEntityType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

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
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(displayName, forKey: .displayName)
        try containerEncoder.encodeIfPresent(value, forKey: .value)
    }
}

