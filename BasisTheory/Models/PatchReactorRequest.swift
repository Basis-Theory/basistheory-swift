//
// PatchReactorRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct PatchReactorRequest: Codable, JSONEncodable, Hashable {

    public var name: String?
    public var application: Application?
    public var code: String?
    public var configuration: [String: String]?

    public init(name: String? = nil, application: Application? = nil, code: String? = nil, configuration: [String: String]? = nil) {
        self.name = name
        self.application = application
        self.code = code
        self.configuration = configuration
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case application
        case code
        case configuration
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(name, forKey: .name)
        try containerEncoder.encodeIfPresent(application, forKey: .application)
        try containerEncoder.encodeIfPresent(code, forKey: .code)
        try containerEncoder.encodeIfPresent(configuration, forKey: .configuration)
    }
}

