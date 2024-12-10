//
// CreateTenantConnectionResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CreateTenantConnectionResponse: Codable, JSONEncodable, Hashable {

    public var connectionId: String?

    public init(connectionId: String? = nil) {
        self.connectionId = connectionId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case connectionId = "connection_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(connectionId, forKey: .connectionId)
    }
}

