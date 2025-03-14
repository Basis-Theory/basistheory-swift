//
// StringStringKeyValuePair.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct StringStringKeyValuePair: Codable, JSONEncodable, Hashable {

    public var key: String
    public var value: String

    public init(key: String, value: String) {
        self.key = key
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encode(key, forKey: .key)
        try containerEncoder.encode(value, forKey: .value)
    }
}

