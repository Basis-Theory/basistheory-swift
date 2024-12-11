//
// CardDetails.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CardDetails: Codable, JSONEncodable, Hashable {

    public var bin: String?
    public var last4: String?
    public var expirationMonth: Int?
    public var expirationYear: Int?
    public var brand: String?
    public var funding: String?
    public var authentication: String?

    public init(bin: String? = nil, last4: String? = nil, expirationMonth: Int? = nil, expirationYear: Int? = nil, brand: String? = nil, funding: String? = nil, authentication: String? = nil) {
        self.bin = bin
        self.last4 = last4
        self.expirationMonth = expirationMonth
        self.expirationYear = expirationYear
        self.brand = brand
        self.funding = funding
        self.authentication = authentication
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bin
        case last4
        case expirationMonth = "expiration_month"
        case expirationYear = "expiration_year"
        case brand
        case funding
        case authentication
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(bin, forKey: .bin)
        try containerEncoder.encodeIfPresent(last4, forKey: .last4)
        try containerEncoder.encodeIfPresent(expirationMonth, forKey: .expirationMonth)
        try containerEncoder.encodeIfPresent(expirationYear, forKey: .expirationYear)
        try containerEncoder.encodeIfPresent(brand, forKey: .brand)
        try containerEncoder.encodeIfPresent(funding, forKey: .funding)
        try containerEncoder.encodeIfPresent(authentication, forKey: .authentication)
    }
}
