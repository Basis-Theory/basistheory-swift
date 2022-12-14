//
// UpdateReactorRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateReactorRequest: Codable, JSONEncodable, Hashable {

    public var name: String
    public var application: Application?
    public var configuration: [String: String]?

    public init(name: String, application: Application? = nil, configuration: [String: String]? = nil) {
        self.name = name
        self.application = application
        self.configuration = configuration
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case application
        case configuration
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encode(name, forKey: .name)
        try containerEncoder.encodeIfPresent(application, forKey: .application)
        try containerEncoder.encodeIfPresent(configuration, forKey: .configuration)
    }
}

