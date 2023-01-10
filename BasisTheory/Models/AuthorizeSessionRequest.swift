//
// AuthorizeSessionRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AuthorizeSessionRequest: Codable, JSONEncodable, Hashable {

    public var nonce: String
    public var expiresAt: String?
    public var permissions: [String]?
    public var rules: [AccessRule]?

    public init(nonce: String, expiresAt: String? = nil, permissions: [String]? = nil, rules: [AccessRule]? = nil) {
        self.nonce = nonce
        self.expiresAt = expiresAt
        self.permissions = permissions
        self.rules = rules
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nonce
        case expiresAt = "expires_at"
        case permissions
        case rules
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encode(nonce, forKey: .nonce)
        try containerEncoder.encodeIfPresent(expiresAt, forKey: .expiresAt)
        try containerEncoder.encodeIfPresent(permissions, forKey: .permissions)
        try containerEncoder.encodeIfPresent(rules, forKey: .rules)
    }
}
