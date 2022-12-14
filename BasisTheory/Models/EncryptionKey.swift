//
// EncryptionKey.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EncryptionKey: Codable, JSONEncodable, Hashable {

    public var key: String
    public var prov: String?
    public var alg: String?

    public init(key: String, prov: String? = nil, alg: String? = nil) {
        self.key = key
        self.prov = prov
        self.alg = alg
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case prov
        case alg
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encode(key, forKey: .key)
        try containerEncoder.encodeIfPresent(prov, forKey: .prov)
        try containerEncoder.encodeIfPresent(alg, forKey: .alg)
    }
}

