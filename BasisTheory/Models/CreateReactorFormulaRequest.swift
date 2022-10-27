//
// CreateReactorFormulaRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateReactorFormulaRequest: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var type: String
    public var name: String
    public var description: String?
    public var icon: String?
    public var code: String?
    public var configuration: [ReactorFormulaConfiguration]?
    public var requestParameters: [ReactorFormulaRequestParameter]?

    public init(id: UUID? = nil, type: String, name: String, description: String? = nil, icon: String? = nil, code: String? = nil, configuration: [ReactorFormulaConfiguration]? = nil, requestParameters: [ReactorFormulaRequestParameter]? = nil) {
        self.id = id
        self.type = type
        self.name = name
        self.description = description
        self.icon = icon
        self.code = code
        self.configuration = configuration
        self.requestParameters = requestParameters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case name
        case description
        case icon
        case code
        case configuration
        case requestParameters = "request_parameters"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(id, forKey: .id)
        try containerEncoder.encode(type, forKey: .type)
        try containerEncoder.encode(name, forKey: .name)
        try containerEncoder.encodeIfPresent(description, forKey: .description)
        try containerEncoder.encodeIfPresent(icon, forKey: .icon)
        try containerEncoder.encodeIfPresent(code, forKey: .code)
        try containerEncoder.encodeIfPresent(configuration, forKey: .configuration)
        try containerEncoder.encodeIfPresent(requestParameters, forKey: .requestParameters)
    }
}

