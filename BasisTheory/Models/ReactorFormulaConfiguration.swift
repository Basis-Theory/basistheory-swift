//
// ReactorFormulaConfiguration.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ReactorFormulaConfiguration: Codable, JSONEncodable, Hashable {

    public var name: String
    public var description: String?
    public var type: String

    public init(name: String, description: String? = nil, type: String) {
        self.name = name
        self.description = description
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encode(type, forKey: .type)
    }
}

