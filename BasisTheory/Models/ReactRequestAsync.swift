//
// ReactRequestAsync.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ReactRequestAsync: Codable, JSONEncodable, Hashable {

    public var args: JSONValue?

    public init(args: JSONValue? = nil) {
        self.args = args
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case args
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(args, forKey: .args)
    }
}
