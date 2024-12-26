//
// Condition.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Condition: Codable, JSONEncodable, Hashable {

    public var attribute: String?
    public var _operator: String?
    public var value: String?

    public init(attribute: String? = nil, _operator: String? = nil, value: String? = nil) {
        self.attribute = attribute
        self._operator = _operator
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attribute
        case _operator = "operator"
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(attribute, forKey: .attribute)
        try containerEncoder.encodeIfPresent(_operator, forKey: ._operator)
        try containerEncoder.encodeIfPresent(value, forKey: .value)
    }
}

