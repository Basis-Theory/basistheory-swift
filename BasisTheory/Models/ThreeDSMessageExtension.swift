//
// ThreeDSMessageExtension.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ThreeDSMessageExtension: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var name: String?
    public var critical: Bool?
    public var data: AnyCodable?

    public init(id: String? = nil, name: String? = nil, critical: Bool? = nil, data: AnyCodable? = nil) {
        self.id = id
        self.name = name
        self.critical = critical
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case critical
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(id, forKey: .id)
        try containerEncoder.encodeIfPresent(name, forKey: .name)
        try containerEncoder.encodeIfPresent(critical, forKey: .critical)
        try containerEncoder.encodeIfPresent(data, forKey: .data)
    }
}
