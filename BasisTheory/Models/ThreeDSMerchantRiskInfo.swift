//
// ThreeDSMerchantRiskInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ThreeDSMerchantRiskInfo: Codable, JSONEncodable, Hashable {

    public var deliveryEmail: String?
    public var deliveryTimeFrame: String?
    public var giftCardAmount: String?
    public var giftCardCount: String?
    public var giftCardCurrency: String?
    public var preOrderPurchase: Bool?
    public var preOrderDate: String?
    public var reorderedPurchase: Bool?
    public var shippingMethod: String?

    public init(deliveryEmail: String? = nil, deliveryTimeFrame: String? = nil, giftCardAmount: String? = nil, giftCardCount: String? = nil, giftCardCurrency: String? = nil, preOrderPurchase: Bool? = nil, preOrderDate: String? = nil, reorderedPurchase: Bool? = nil, shippingMethod: String? = nil) {
        self.deliveryEmail = deliveryEmail
        self.deliveryTimeFrame = deliveryTimeFrame
        self.giftCardAmount = giftCardAmount
        self.giftCardCount = giftCardCount
        self.giftCardCurrency = giftCardCurrency
        self.preOrderPurchase = preOrderPurchase
        self.preOrderDate = preOrderDate
        self.reorderedPurchase = reorderedPurchase
        self.shippingMethod = shippingMethod
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deliveryEmail = "delivery_email"
        case deliveryTimeFrame = "delivery_time_frame"
        case giftCardAmount = "gift_card_amount"
        case giftCardCount = "gift_card_count"
        case giftCardCurrency = "gift_card_currency"
        case preOrderPurchase = "pre_order_purchase"
        case preOrderDate = "pre_order_date"
        case reorderedPurchase = "reordered_purchase"
        case shippingMethod = "shipping_method"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(deliveryEmail, forKey: .deliveryEmail)
        try containerEncoder.encodeIfPresent(deliveryTimeFrame, forKey: .deliveryTimeFrame)
        try containerEncoder.encodeIfPresent(giftCardAmount, forKey: .giftCardAmount)
        try containerEncoder.encodeIfPresent(giftCardCount, forKey: .giftCardCount)
        try containerEncoder.encodeIfPresent(giftCardCurrency, forKey: .giftCardCurrency)
        try containerEncoder.encodeIfPresent(preOrderPurchase, forKey: .preOrderPurchase)
        try containerEncoder.encodeIfPresent(preOrderDate, forKey: .preOrderDate)
        try containerEncoder.encodeIfPresent(reorderedPurchase, forKey: .reorderedPurchase)
        try containerEncoder.encodeIfPresent(shippingMethod, forKey: .shippingMethod)
    }
}

