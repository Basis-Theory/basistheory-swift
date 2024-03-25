//
// ThreeDSCardholderAuthenticationInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ThreeDSCardholderAuthenticationInfo: Codable, JSONEncodable, Hashable {

    public var method: String?
    public var timestamp: String?
    public var data: String?

    public init(method: String? = nil, timestamp: String? = nil, data: String? = nil) {
        self.method = method
        self.timestamp = timestamp
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case method
        case timestamp
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(method, forKey: .method)
        try containerEncoder.encodeIfPresent(timestamp, forKey: .timestamp)
        try containerEncoder.encodeIfPresent(data, forKey: .data)
    }
}

