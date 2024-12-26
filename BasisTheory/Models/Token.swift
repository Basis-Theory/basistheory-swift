//
// Token.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Token: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var type: String?
    public var tenantId: UUID?
    public var data: JSONValue?
    public var metadata: [String: String]?
    public var enrichments: TokenEnrichments?
    public var createdBy: UUID?
    public var createdAt: Date?
    public var modifiedBy: UUID?
    public var modifiedAt: Date?
    public var fingerprint: String?
    public var fingerprintExpression: String?
    public var mask: JSONValue?
    public var privacy: Privacy?
    public var searchIndexes: [String]?
    public var expiresAt: Date?
    public var containers: [String]?
    public var aliases: [String]?
    public var extras: TokenExtras?

    public init(id: String? = nil, type: String? = nil, tenantId: UUID? = nil, data: JSONValue? = nil, metadata: [String: String]? = nil, enrichments: TokenEnrichments? = nil, createdBy: UUID? = nil, createdAt: Date? = nil, modifiedBy: UUID? = nil, modifiedAt: Date? = nil, fingerprint: String? = nil, fingerprintExpression: String? = nil, mask: JSONValue? = nil, privacy: Privacy? = nil, searchIndexes: [String]? = nil, expiresAt: Date? = nil, containers: [String]? = nil, aliases: [String]? = nil, extras: TokenExtras? = nil) {
        self.id = id
        self.type = type
        self.tenantId = tenantId
        self.data = data
        self.metadata = metadata
        self.enrichments = enrichments
        self.createdBy = createdBy
        self.createdAt = createdAt
        self.modifiedBy = modifiedBy
        self.modifiedAt = modifiedAt
        self.fingerprint = fingerprint
        self.fingerprintExpression = fingerprintExpression
        self.mask = mask
        self.privacy = privacy
        self.searchIndexes = searchIndexes
        self.expiresAt = expiresAt
        self.containers = containers
        self.aliases = aliases
        self.extras = extras
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case tenantId = "tenant_id"
        case data
        case metadata
        case enrichments
        case createdBy = "created_by"
        case createdAt = "created_at"
        case modifiedBy = "modified_by"
        case modifiedAt = "modified_at"
        case fingerprint
        case fingerprintExpression = "fingerprint_expression"
        case mask
        case privacy
        case searchIndexes = "search_indexes"
        case expiresAt = "expires_at"
        case containers
        case aliases
        case extras = "_extras"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(id, forKey: .id)
        try containerEncoder.encodeIfPresent(type, forKey: .type)
        try containerEncoder.encodeIfPresent(tenantId, forKey: .tenantId)
        try containerEncoder.encodeIfPresent(data, forKey: .data)
        try containerEncoder.encodeIfPresent(metadata, forKey: .metadata)
        try containerEncoder.encodeIfPresent(enrichments, forKey: .enrichments)
        try containerEncoder.encodeIfPresent(createdBy, forKey: .createdBy)
        try containerEncoder.encodeIfPresent(createdAt, forKey: .createdAt)
        try containerEncoder.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        try containerEncoder.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
        try containerEncoder.encodeIfPresent(fingerprint, forKey: .fingerprint)
        try containerEncoder.encodeIfPresent(fingerprintExpression, forKey: .fingerprintExpression)
        try containerEncoder.encodeIfPresent(mask, forKey: .mask)
        try containerEncoder.encodeIfPresent(privacy, forKey: .privacy)
        try containerEncoder.encodeIfPresent(searchIndexes, forKey: .searchIndexes)
        try containerEncoder.encodeIfPresent(expiresAt, forKey: .expiresAt)
        try containerEncoder.encodeIfPresent(containers, forKey: .containers)
        try containerEncoder.encodeIfPresent(aliases, forKey: .aliases)
        try containerEncoder.encodeIfPresent(extras, forKey: .extras)
    }
}

