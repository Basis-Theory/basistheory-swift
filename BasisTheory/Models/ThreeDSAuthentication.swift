//
// ThreeDSAuthentication.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ThreeDSAuthentication: Codable, JSONEncodable, Hashable {

    public var threedsVersion: String?
    public var acsTransactionId: UUID?
    public var dsTransactionId: UUID?
    public var sdkTransactionId: UUID?
    public var acsReferenceNumber: String?
    public var dsReferenceNumber: String?
    public var authenticationValue: String?
    public var authenticationStatus: String?
    public var authenticationStatusReason: String?
    public var eci: String?
    public var acsChallengeMandated: String?
    public var acsDecoupledAuthentication: String?
    public var authenticationChallengeType: String?
    public var acsRenderingType: ThreeDSAcsRenderingType?
    public var acsSignedContent: String?
    public var acsChallengeUrl: String?
    public var challengeAttempts: String?
    public var challengeCancelReason: String?
    public var cardholderInfo: String?
    public var whitelistStatus: String?
    public var whitelistStatusSource: String?
    public var messageExtensions: [ThreeDSMessageExtension]?

    public init(threedsVersion: String? = nil, acsTransactionId: UUID? = nil, dsTransactionId: UUID? = nil, sdkTransactionId: UUID? = nil, acsReferenceNumber: String? = nil, dsReferenceNumber: String? = nil, authenticationValue: String? = nil, authenticationStatus: String? = nil, authenticationStatusReason: String? = nil, eci: String? = nil, acsChallengeMandated: String? = nil, acsDecoupledAuthentication: String? = nil, authenticationChallengeType: String? = nil, acsRenderingType: ThreeDSAcsRenderingType? = nil, acsSignedContent: String? = nil, acsChallengeUrl: String? = nil, challengeAttempts: String? = nil, challengeCancelReason: String? = nil, cardholderInfo: String? = nil, whitelistStatus: String? = nil, whitelistStatusSource: String? = nil, messageExtensions: [ThreeDSMessageExtension]? = nil) {
        self.threedsVersion = threedsVersion
        self.acsTransactionId = acsTransactionId
        self.dsTransactionId = dsTransactionId
        self.sdkTransactionId = sdkTransactionId
        self.acsReferenceNumber = acsReferenceNumber
        self.dsReferenceNumber = dsReferenceNumber
        self.authenticationValue = authenticationValue
        self.authenticationStatus = authenticationStatus
        self.authenticationStatusReason = authenticationStatusReason
        self.eci = eci
        self.acsChallengeMandated = acsChallengeMandated
        self.acsDecoupledAuthentication = acsDecoupledAuthentication
        self.authenticationChallengeType = authenticationChallengeType
        self.acsRenderingType = acsRenderingType
        self.acsSignedContent = acsSignedContent
        self.acsChallengeUrl = acsChallengeUrl
        self.challengeAttempts = challengeAttempts
        self.challengeCancelReason = challengeCancelReason
        self.cardholderInfo = cardholderInfo
        self.whitelistStatus = whitelistStatus
        self.whitelistStatusSource = whitelistStatusSource
        self.messageExtensions = messageExtensions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case threedsVersion = "threeds_version"
        case acsTransactionId = "acs_transaction_id"
        case dsTransactionId = "ds_transaction_id"
        case sdkTransactionId = "sdk_transaction_id"
        case acsReferenceNumber = "acs_reference_number"
        case dsReferenceNumber = "ds_reference_number"
        case authenticationValue = "authentication_value"
        case authenticationStatus = "authentication_status"
        case authenticationStatusReason = "authentication_status_reason"
        case eci
        case acsChallengeMandated = "acs_challenge_mandated"
        case acsDecoupledAuthentication = "acs_decoupled_authentication"
        case authenticationChallengeType = "authentication_challenge_type"
        case acsRenderingType = "acs_rendering_type"
        case acsSignedContent = "acs_signed_content"
        case acsChallengeUrl = "acs_challenge_url"
        case challengeAttempts = "challenge_attempts"
        case challengeCancelReason = "challenge_cancel_reason"
        case cardholderInfo = "cardholder_info"
        case whitelistStatus = "whitelist_status"
        case whitelistStatusSource = "whitelist_status_source"
        case messageExtensions = "message_extensions"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(threedsVersion, forKey: .threedsVersion)
        try containerEncoder.encodeIfPresent(acsTransactionId, forKey: .acsTransactionId)
        try containerEncoder.encodeIfPresent(dsTransactionId, forKey: .dsTransactionId)
        try containerEncoder.encodeIfPresent(sdkTransactionId, forKey: .sdkTransactionId)
        try containerEncoder.encodeIfPresent(acsReferenceNumber, forKey: .acsReferenceNumber)
        try containerEncoder.encodeIfPresent(dsReferenceNumber, forKey: .dsReferenceNumber)
        try containerEncoder.encodeIfPresent(authenticationValue, forKey: .authenticationValue)
        try containerEncoder.encodeIfPresent(authenticationStatus, forKey: .authenticationStatus)
        try containerEncoder.encodeIfPresent(authenticationStatusReason, forKey: .authenticationStatusReason)
        try containerEncoder.encodeIfPresent(eci, forKey: .eci)
        try containerEncoder.encodeIfPresent(acsChallengeMandated, forKey: .acsChallengeMandated)
        try containerEncoder.encodeIfPresent(acsDecoupledAuthentication, forKey: .acsDecoupledAuthentication)
        try containerEncoder.encodeIfPresent(authenticationChallengeType, forKey: .authenticationChallengeType)
        try containerEncoder.encodeIfPresent(acsRenderingType, forKey: .acsRenderingType)
        try containerEncoder.encodeIfPresent(acsSignedContent, forKey: .acsSignedContent)
        try containerEncoder.encodeIfPresent(acsChallengeUrl, forKey: .acsChallengeUrl)
        try containerEncoder.encodeIfPresent(challengeAttempts, forKey: .challengeAttempts)
        try containerEncoder.encodeIfPresent(challengeCancelReason, forKey: .challengeCancelReason)
        try containerEncoder.encodeIfPresent(cardholderInfo, forKey: .cardholderInfo)
        try containerEncoder.encodeIfPresent(whitelistStatus, forKey: .whitelistStatus)
        try containerEncoder.encodeIfPresent(whitelistStatusSource, forKey: .whitelistStatusSource)
        try containerEncoder.encodeIfPresent(messageExtensions, forKey: .messageExtensions)
    }
}
