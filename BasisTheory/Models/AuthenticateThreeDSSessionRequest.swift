//
// AuthenticateThreeDSSessionRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AuthenticateThreeDSSessionRequest: Codable, JSONEncodable, Hashable {

    public var authenticationCategory: String
    public var authenticationType: String
    public var challengePreference: String?
    public var requestDecoupledChallenge: Bool?
    public var decoupledChallengeMaxTime: Int?
    public var purchaseInfo: ThreeDSPurchaseInfo?
    public var merchantInfo: ThreeDSMerchantInfo?
    public var requestorInfo: ThreeDSRequestorInfo
    public var cardholderInfo: ThreeDSCardholderInfo?
    public var broadcastInfo: JSONValue?
    public var messageExtensions: [ThreeDSMessageExtension]?

    public init(authenticationCategory: String, authenticationType: String, challengePreference: String? = nil, requestDecoupledChallenge: Bool? = nil, decoupledChallengeMaxTime: Int? = nil, purchaseInfo: ThreeDSPurchaseInfo? = nil, merchantInfo: ThreeDSMerchantInfo? = nil, requestorInfo: ThreeDSRequestorInfo, cardholderInfo: ThreeDSCardholderInfo? = nil, broadcastInfo: JSONValue? = nil, messageExtensions: [ThreeDSMessageExtension]? = nil) {
        self.authenticationCategory = authenticationCategory
        self.authenticationType = authenticationType
        self.challengePreference = challengePreference
        self.requestDecoupledChallenge = requestDecoupledChallenge
        self.decoupledChallengeMaxTime = decoupledChallengeMaxTime
        self.purchaseInfo = purchaseInfo
        self.merchantInfo = merchantInfo
        self.requestorInfo = requestorInfo
        self.cardholderInfo = cardholderInfo
        self.broadcastInfo = broadcastInfo
        self.messageExtensions = messageExtensions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case authenticationCategory = "authentication_category"
        case authenticationType = "authentication_type"
        case challengePreference = "challenge_preference"
        case requestDecoupledChallenge = "request_decoupled_challenge"
        case decoupledChallengeMaxTime = "decoupled_challenge_max_time"
        case purchaseInfo = "purchase_info"
        case merchantInfo = "merchant_info"
        case requestorInfo = "requestor_info"
        case cardholderInfo = "cardholder_info"
        case broadcastInfo = "broadcast_info"
        case messageExtensions = "message_extensions"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encode(authenticationCategory, forKey: .authenticationCategory)
        try containerEncoder.encode(authenticationType, forKey: .authenticationType)
        try containerEncoder.encodeIfPresent(challengePreference, forKey: .challengePreference)
        try containerEncoder.encodeIfPresent(requestDecoupledChallenge, forKey: .requestDecoupledChallenge)
        try containerEncoder.encodeIfPresent(decoupledChallengeMaxTime, forKey: .decoupledChallengeMaxTime)
        try containerEncoder.encodeIfPresent(purchaseInfo, forKey: .purchaseInfo)
        try containerEncoder.encodeIfPresent(merchantInfo, forKey: .merchantInfo)
        try containerEncoder.encode(requestorInfo, forKey: .requestorInfo)
        try containerEncoder.encodeIfPresent(cardholderInfo, forKey: .cardholderInfo)
        try containerEncoder.encodeIfPresent(broadcastInfo, forKey: .broadcastInfo)
        try containerEncoder.encodeIfPresent(messageExtensions, forKey: .messageExtensions)
    }
}

