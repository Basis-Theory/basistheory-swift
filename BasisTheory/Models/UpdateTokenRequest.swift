//
// UpdateTokenRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateTokenRequest: Codable, JSONEncodable, Hashable {

    public var data: AnyCodable?
    public var encryption: EncryptionMetadata?
    public var privacy: UpdatePrivacy?
    public var metadata: [String: String]?
    public var searchIndexes: [String]?
    public var fingerprintExpression: String?
    public var mask: AnyCodable?
    public var deduplicateToken: Bool?
    public var container: String?

    public init(data: AnyCodable? = nil, encryption: EncryptionMetadata? = nil, privacy: UpdatePrivacy? = nil, metadata: [String: String]? = nil, searchIndexes: [String]? = nil, fingerprintExpression: String? = nil, mask: AnyCodable? = nil, deduplicateToken: Bool? = nil, container: String? = nil) {
        self.data = data
        self.encryption = encryption
        self.privacy = privacy
        self.metadata = metadata
        self.searchIndexes = searchIndexes
        self.fingerprintExpression = fingerprintExpression
        self.mask = mask
        self.deduplicateToken = deduplicateToken
        self.container = container
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case encryption
        case privacy
        case metadata
        case searchIndexes = "search_indexes"
        case fingerprintExpression = "fingerprint_expression"
        case mask
        case deduplicateToken = "deduplicate_token"
        case container
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(encryption, forKey: .encryption)
        try container.encodeIfPresent(privacy, forKey: .privacy)
        try container.encodeIfPresent(metadata, forKey: .metadata)
        try container.encodeIfPresent(searchIndexes, forKey: .searchIndexes)
        try container.encodeIfPresent(fingerprintExpression, forKey: .fingerprintExpression)
        try container.encodeIfPresent(mask, forKey: .mask)
        try container.encodeIfPresent(deduplicateToken, forKey: .deduplicateToken)
        try container.encodeIfPresent(container, forKey: .container)
    }
}

