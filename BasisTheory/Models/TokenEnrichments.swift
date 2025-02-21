//
// TokenEnrichments.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct TokenEnrichments: Codable, JSONEncodable, Hashable {

    public var binDetails: BinDetails?
    public var cardDetails: TokenEnrichmentsCardDetails?

    public init(binDetails: BinDetails? = nil, cardDetails: TokenEnrichmentsCardDetails? = nil) {
        self.binDetails = binDetails
        self.cardDetails = cardDetails
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case binDetails = "bin_details"
        case cardDetails = "card_details"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(binDetails, forKey: .binDetails)
        try containerEncoder.encodeIfPresent(cardDetails, forKey: .cardDetails)
    }
}

