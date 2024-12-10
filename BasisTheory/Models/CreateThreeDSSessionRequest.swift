//
// CreateThreeDSSessionRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CreateThreeDSSessionRequest: Codable, JSONEncodable, Hashable {

    @available(*, deprecated, message: "This property is deprecated.")
    public var pan: String?
    public var tokenId: String?
    public var tokenIntentId: String?
    public var type: String?
    public var device: String?
    public var deviceInfo: ThreeDSDeviceInfo?

    public init(pan: String? = nil, tokenId: String? = nil, tokenIntentId: String? = nil, type: String? = nil, device: String? = nil, deviceInfo: ThreeDSDeviceInfo? = nil) {
        self.pan = pan
        self.tokenId = tokenId
        self.tokenIntentId = tokenIntentId
        self.type = type
        self.device = device
        self.deviceInfo = deviceInfo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pan
        case tokenId = "token_id"
        case tokenIntentId = "token_intent_id"
        case type
        case device
        case deviceInfo = "device_info"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(pan, forKey: .pan)
        try containerEncoder.encodeIfPresent(tokenId, forKey: .tokenId)
        try containerEncoder.encodeIfPresent(tokenIntentId, forKey: .tokenIntentId)
        try containerEncoder.encodeIfPresent(type, forKey: .type)
        try containerEncoder.encodeIfPresent(device, forKey: .device)
        try containerEncoder.encodeIfPresent(deviceInfo, forKey: .deviceInfo)
    }
}

