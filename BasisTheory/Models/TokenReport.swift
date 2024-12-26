//
// TokenReport.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct TokenReport: Codable, JSONEncodable, Hashable {

    public var includedMonthlyActiveTokens: Int64?
    public var monthlyActiveTokens: Int64?
    public var metricsByType: [String: TokenMetrics]?
    public var totalTokens: Int64?

    public init(includedMonthlyActiveTokens: Int64? = nil, monthlyActiveTokens: Int64? = nil, metricsByType: [String: TokenMetrics]? = nil, totalTokens: Int64? = nil) {
        self.includedMonthlyActiveTokens = includedMonthlyActiveTokens
        self.monthlyActiveTokens = monthlyActiveTokens
        self.metricsByType = metricsByType
        self.totalTokens = totalTokens
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case includedMonthlyActiveTokens = "included_monthly_active_tokens"
        case monthlyActiveTokens = "monthly_active_tokens"
        case metricsByType = "metrics_by_type"
        case totalTokens = "total_tokens"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(includedMonthlyActiveTokens, forKey: .includedMonthlyActiveTokens)
        try containerEncoder.encodeIfPresent(monthlyActiveTokens, forKey: .monthlyActiveTokens)
        try containerEncoder.encodeIfPresent(metricsByType, forKey: .metricsByType)
        try containerEncoder.encodeIfPresent(totalTokens, forKey: .totalTokens)
    }
}

