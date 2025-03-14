//
// AsyncReactResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AsyncReactResponse: Codable, JSONEncodable, Hashable {

    public var asyncReactorRequestId: UUID?

    public init(asyncReactorRequestId: UUID? = nil) {
        self.asyncReactorRequestId = asyncReactorRequestId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case asyncReactorRequestId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(asyncReactorRequestId, forKey: .asyncReactorRequestId)
    }
}

