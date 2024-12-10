//
// ReactRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ReactRequest: Codable, JSONEncodable, Hashable {

    public var args: JSONValue?
    public var callbackUrl: String?

    public init(args: JSONValue? = nil, callbackUrl: String? = nil) {
        self.args = args
        self.callbackUrl = callbackUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case args
        case callbackUrl = "callback_url"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(args, forKey: .args)
        try containerEncoder.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
    }
}

