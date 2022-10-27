//
// ReactorFormulaRequestParameter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ReactorFormulaRequestParameter: Codable, JSONEncodable, Hashable {

    public var name: String
    public var description: String?
    public var type: String
    public var _optional: Bool?

    public init(name: String, description: String? = nil, type: String, _optional: Bool? = nil) {
        self.name = name
        self.description = description
        self.type = type
        self._optional = _optional
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case type
        case _optional = "optional"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encode(name, forKey: .name)
        try containerEncoder.encodeIfPresent(description, forKey: .description)
        try containerEncoder.encode(type, forKey: .type)
        try containerEncoder.encodeIfPresent(_optional, forKey: ._optional)
    }
}

