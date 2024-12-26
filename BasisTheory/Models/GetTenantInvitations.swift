//
// GetTenantInvitations.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GetTenantInvitations: Codable, JSONEncodable, Hashable {

    public var status: TenantInvitationStatus?
    public var page: Int?
    public var start: String?
    public var size: Int?

    public init(status: TenantInvitationStatus? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil) {
        self.status = status
        self.page = page
        self.start = start
        self.size = size
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case page
        case start
        case size
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(status, forKey: .status)
        try containerEncoder.encodeIfPresent(page, forKey: .page)
        try containerEncoder.encodeIfPresent(start, forKey: .start)
        try containerEncoder.encodeIfPresent(size, forKey: .size)
    }
}

