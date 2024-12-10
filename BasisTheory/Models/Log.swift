//
// Log.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Log: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var tenantId: UUID?
    public var actorId: UUID?
    public var actorType: String?
    public var entityType: String?
    public var entityId: String?
    public var operation: String?
    public var message: String?
    public var createdAt: Date?

    public init(id: String? = nil, tenantId: UUID? = nil, actorId: UUID? = nil, actorType: String? = nil, entityType: String? = nil, entityId: String? = nil, operation: String? = nil, message: String? = nil, createdAt: Date? = nil) {
        self.id = id
        self.tenantId = tenantId
        self.actorId = actorId
        self.actorType = actorType
        self.entityType = entityType
        self.entityId = entityId
        self.operation = operation
        self.message = message
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case tenantId = "tenant_id"
        case actorId = "actor_id"
        case actorType = "actor_type"
        case entityType = "entity_type"
        case entityId = "entity_id"
        case operation
        case message
        case createdAt = "created_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(id, forKey: .id)
        try containerEncoder.encodeIfPresent(tenantId, forKey: .tenantId)
        try containerEncoder.encodeIfPresent(actorId, forKey: .actorId)
        try containerEncoder.encodeIfPresent(actorType, forKey: .actorType)
        try containerEncoder.encodeIfPresent(entityType, forKey: .entityType)
        try containerEncoder.encodeIfPresent(entityId, forKey: .entityId)
        try containerEncoder.encodeIfPresent(operation, forKey: .operation)
        try containerEncoder.encodeIfPresent(message, forKey: .message)
        try containerEncoder.encodeIfPresent(createdAt, forKey: .createdAt)
    }
}

