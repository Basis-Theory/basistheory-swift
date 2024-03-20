//
// ThreeDSCardholderInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ThreeDSCardholderInfo: Codable, JSONEncodable, Hashable {

    public var accountId: String?
    public var accountType: String?
    public var accountInfo: ThreeDSCardholderAccountInfo?
    public var authenticationInfo: ThreeDSCardholderAuthenticationInfo?
    public var priorAuthenticationInfo: ThreeDSPriorAuthenticationInfo?
    public var name: String?
    public var email: String?
    public var phoneNumber: ThreeDSCardholderPhoneNumber?
    public var mobilePhoneNumber: ThreeDSCardholderPhoneNumber?
    public var workPhoneNumber: ThreeDSCardholderPhoneNumber?
    public var billingShippingAddressMatch: String?
    public var billingAddress: ThreeDSAddress?
    public var shippingAddress: ThreeDSAddress?

    public init(accountId: String? = nil, accountType: String? = nil, accountInfo: ThreeDSCardholderAccountInfo? = nil, authenticationInfo: ThreeDSCardholderAuthenticationInfo? = nil, priorAuthenticationInfo: ThreeDSPriorAuthenticationInfo? = nil, name: String? = nil, email: String? = nil, phoneNumber: ThreeDSCardholderPhoneNumber? = nil, mobilePhoneNumber: ThreeDSCardholderPhoneNumber? = nil, workPhoneNumber: ThreeDSCardholderPhoneNumber? = nil, billingShippingAddressMatch: String? = nil, billingAddress: ThreeDSAddress? = nil, shippingAddress: ThreeDSAddress? = nil) {
        self.accountId = accountId
        self.accountType = accountType
        self.accountInfo = accountInfo
        self.authenticationInfo = authenticationInfo
        self.priorAuthenticationInfo = priorAuthenticationInfo
        self.name = name
        self.email = email
        self.phoneNumber = phoneNumber
        self.mobilePhoneNumber = mobilePhoneNumber
        self.workPhoneNumber = workPhoneNumber
        self.billingShippingAddressMatch = billingShippingAddressMatch
        self.billingAddress = billingAddress
        self.shippingAddress = shippingAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accountId = "account_id"
        case accountType = "account_type"
        case accountInfo = "account_info"
        case authenticationInfo = "authentication_info"
        case priorAuthenticationInfo = "prior_authentication_info"
        case name
        case email
        case phoneNumber = "phone_number"
        case mobilePhoneNumber = "mobile_phone_number"
        case workPhoneNumber = "work_phone_number"
        case billingShippingAddressMatch = "billing_shipping_address_match"
        case billingAddress = "billing_address"
        case shippingAddress = "shipping_address"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(accountId, forKey: .accountId)
        try containerEncoder.encodeIfPresent(accountType, forKey: .accountType)
        try containerEncoder.encodeIfPresent(accountInfo, forKey: .accountInfo)
        try containerEncoder.encodeIfPresent(authenticationInfo, forKey: .authenticationInfo)
        try containerEncoder.encodeIfPresent(priorAuthenticationInfo, forKey: .priorAuthenticationInfo)
        try containerEncoder.encodeIfPresent(name, forKey: .name)
        try containerEncoder.encodeIfPresent(email, forKey: .email)
        try containerEncoder.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try containerEncoder.encodeIfPresent(mobilePhoneNumber, forKey: .mobilePhoneNumber)
        try containerEncoder.encodeIfPresent(workPhoneNumber, forKey: .workPhoneNumber)
        try containerEncoder.encodeIfPresent(billingShippingAddressMatch, forKey: .billingShippingAddressMatch)
        try containerEncoder.encodeIfPresent(billingAddress, forKey: .billingAddress)
        try containerEncoder.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
    }
}

