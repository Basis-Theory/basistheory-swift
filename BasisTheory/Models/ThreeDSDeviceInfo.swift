//
// ThreeDSDeviceInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ThreeDSDeviceInfo: Codable, JSONEncodable, Hashable {

    public var browserAcceptHeader: String?
    public var browserIp: String?
    public var browserJavascriptEnabled: Bool?
    public var browserJavaEnabled: Bool?
    public var browserLanguage: String?
    public var browserColorDepth: String?
    public var browserScreenHeight: String?
    public var browserScreenWidth: String?
    public var browserTz: String?
    public var browserUserAgent: String?
    public var sdkTransactionId: String?
    public var sdkApplicationId: String?
    public var sdkEncryptionData: String?
    public var sdkEphemeralPublicKey: String?
    public var sdkMaxTimeout: String?
    public var sdkReferenceNumber: String?
    public var sdkRenderOptions: ThreeDSMobileSdkRenderOptions?

    public init(browserAcceptHeader: String? = nil, browserIp: String? = nil, browserJavascriptEnabled: Bool? = nil, browserJavaEnabled: Bool? = nil, browserLanguage: String? = nil, browserColorDepth: String? = nil, browserScreenHeight: String? = nil, browserScreenWidth: String? = nil, browserTz: String? = nil, browserUserAgent: String? = nil, sdkTransactionId: String? = nil, sdkApplicationId: String? = nil, sdkEncryptionData: String? = nil, sdkEphemeralPublicKey: String? = nil, sdkMaxTimeout: String? = nil, sdkReferenceNumber: String? = nil, sdkRenderOptions: ThreeDSMobileSdkRenderOptions? = nil) {
        self.browserAcceptHeader = browserAcceptHeader
        self.browserIp = browserIp
        self.browserJavascriptEnabled = browserJavascriptEnabled
        self.browserJavaEnabled = browserJavaEnabled
        self.browserLanguage = browserLanguage
        self.browserColorDepth = browserColorDepth
        self.browserScreenHeight = browserScreenHeight
        self.browserScreenWidth = browserScreenWidth
        self.browserTz = browserTz
        self.browserUserAgent = browserUserAgent
        self.sdkTransactionId = sdkTransactionId
        self.sdkApplicationId = sdkApplicationId
        self.sdkEncryptionData = sdkEncryptionData
        self.sdkEphemeralPublicKey = sdkEphemeralPublicKey
        self.sdkMaxTimeout = sdkMaxTimeout
        self.sdkReferenceNumber = sdkReferenceNumber
        self.sdkRenderOptions = sdkRenderOptions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case browserAcceptHeader = "browser_accept_header"
        case browserIp = "browser_ip"
        case browserJavascriptEnabled = "browser_javascript_enabled"
        case browserJavaEnabled = "browser_java_enabled"
        case browserLanguage = "browser_language"
        case browserColorDepth = "browser_color_depth"
        case browserScreenHeight = "browser_screen_height"
        case browserScreenWidth = "browser_screen_width"
        case browserTz = "browser_tz"
        case browserUserAgent = "browser_user_agent"
        case sdkTransactionId = "sdk_transaction_id"
        case sdkApplicationId = "sdk_application_id"
        case sdkEncryptionData = "sdk_encryption_data"
        case sdkEphemeralPublicKey = "sdk_ephemeral_public_key"
        case sdkMaxTimeout = "sdk_max_timeout"
        case sdkReferenceNumber = "sdk_reference_number"
        case sdkRenderOptions = "sdk_render_options"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(browserAcceptHeader, forKey: .browserAcceptHeader)
        try containerEncoder.encodeIfPresent(browserIp, forKey: .browserIp)
        try containerEncoder.encodeIfPresent(browserJavascriptEnabled, forKey: .browserJavascriptEnabled)
        try containerEncoder.encodeIfPresent(browserJavaEnabled, forKey: .browserJavaEnabled)
        try containerEncoder.encodeIfPresent(browserLanguage, forKey: .browserLanguage)
        try containerEncoder.encodeIfPresent(browserColorDepth, forKey: .browserColorDepth)
        try containerEncoder.encodeIfPresent(browserScreenHeight, forKey: .browserScreenHeight)
        try containerEncoder.encodeIfPresent(browserScreenWidth, forKey: .browserScreenWidth)
        try containerEncoder.encodeIfPresent(browserTz, forKey: .browserTz)
        try containerEncoder.encodeIfPresent(browserUserAgent, forKey: .browserUserAgent)
        try containerEncoder.encodeIfPresent(sdkTransactionId, forKey: .sdkTransactionId)
        try containerEncoder.encodeIfPresent(sdkApplicationId, forKey: .sdkApplicationId)
        try containerEncoder.encodeIfPresent(sdkEncryptionData, forKey: .sdkEncryptionData)
        try containerEncoder.encodeIfPresent(sdkEphemeralPublicKey, forKey: .sdkEphemeralPublicKey)
        try containerEncoder.encodeIfPresent(sdkMaxTimeout, forKey: .sdkMaxTimeout)
        try containerEncoder.encodeIfPresent(sdkReferenceNumber, forKey: .sdkReferenceNumber)
        try containerEncoder.encodeIfPresent(sdkRenderOptions, forKey: .sdkRenderOptions)
    }
}

