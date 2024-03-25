//
// ThreeDSVersion.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ThreeDSVersion: Codable, JSONEncodable, Hashable {

    public var recommendedVersion: String?
    public var availableVersion: [String]?
    public var earliestAcsSupportedVersion: String?
    public var earliestDsSupportedVersion: String?
    public var latestAcsSupportedVersion: String?
    public var latestDsSupportedVersion: String?
    public var acsInformation: [String]?

    public init(recommendedVersion: String? = nil, availableVersion: [String]? = nil, earliestAcsSupportedVersion: String? = nil, earliestDsSupportedVersion: String? = nil, latestAcsSupportedVersion: String? = nil, latestDsSupportedVersion: String? = nil, acsInformation: [String]? = nil) {
        self.recommendedVersion = recommendedVersion
        self.availableVersion = availableVersion
        self.earliestAcsSupportedVersion = earliestAcsSupportedVersion
        self.earliestDsSupportedVersion = earliestDsSupportedVersion
        self.latestAcsSupportedVersion = latestAcsSupportedVersion
        self.latestDsSupportedVersion = latestDsSupportedVersion
        self.acsInformation = acsInformation
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case recommendedVersion = "recommended_version"
        case availableVersion = "available_version"
        case earliestAcsSupportedVersion = "earliest_acs_supported_version"
        case earliestDsSupportedVersion = "earliest_ds_supported_version"
        case latestAcsSupportedVersion = "latest_acs_supported_version"
        case latestDsSupportedVersion = "latest_ds_supported_version"
        case acsInformation = "acs_information"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(recommendedVersion, forKey: .recommendedVersion)
        try containerEncoder.encodeIfPresent(availableVersion, forKey: .availableVersion)
        try containerEncoder.encodeIfPresent(earliestAcsSupportedVersion, forKey: .earliestAcsSupportedVersion)
        try containerEncoder.encodeIfPresent(earliestDsSupportedVersion, forKey: .earliestDsSupportedVersion)
        try containerEncoder.encodeIfPresent(latestAcsSupportedVersion, forKey: .latestAcsSupportedVersion)
        try containerEncoder.encodeIfPresent(latestDsSupportedVersion, forKey: .latestDsSupportedVersion)
        try containerEncoder.encodeIfPresent(acsInformation, forKey: .acsInformation)
    }
}

