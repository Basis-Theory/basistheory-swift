//
// Role.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Role: Codable, JSONEncodable, Hashable {

    public var name: String?

    public init(name: String? = nil) {
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(name, forKey: .name)
    }
}

