//
// CreateTokenIntentResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CreateTokenIntentResponse: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var type: String?
    public var tenantId: UUID?
    public var fingerprint: String?
    public var createdBy: UUID?
    public var createdAt: Date?
    public var expiresAt: Date?
    public var card: CardDetails?

    public init(id: String? = nil, type: String? = nil, tenantId: UUID? = nil, fingerprint: String? = nil, createdBy: UUID? = nil, createdAt: Date? = nil, expiresAt: Date? = nil, card: CardDetails? = nil) {
        self.id = id
        self.type = type
        self.tenantId = tenantId
        self.fingerprint = fingerprint
        self.createdBy = createdBy
        self.createdAt = createdAt
        self.expiresAt = expiresAt
        self.card = card
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case tenantId = "tenant_id"
        case fingerprint
        case createdBy = "created_by"
        case createdAt = "created_at"
        case expiresAt = "expires_at"
        case card
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(id, forKey: .id)
        try containerEncoder.encodeIfPresent(type, forKey: .type)
        try containerEncoder.encodeIfPresent(tenantId, forKey: .tenantId)
        try containerEncoder.encodeIfPresent(fingerprint, forKey: .fingerprint)
        try containerEncoder.encodeIfPresent(createdBy, forKey: .createdBy)
        try containerEncoder.encodeIfPresent(createdAt, forKey: .createdAt)
        try containerEncoder.encodeIfPresent(expiresAt, forKey: .expiresAt)
        try containerEncoder.encodeIfPresent(card, forKey: .card)
    }
}
