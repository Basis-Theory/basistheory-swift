//
// EncryptionMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EncryptionMetadata: Codable, JSONEncodable, Hashable {

    public var cek: EncryptionKey?
    public var kek: EncryptionKey?

    public init(cek: EncryptionKey? = nil, kek: EncryptionKey? = nil) {
        self.cek = cek
        self.kek = kek
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cek
        case kek
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(cek, forKey: .cek)
        try containerEncoder.encodeIfPresent(kek, forKey: .kek)
    }
}

