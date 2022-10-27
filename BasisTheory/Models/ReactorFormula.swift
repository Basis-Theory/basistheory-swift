//
// ReactorFormula.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ReactorFormula: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var type: String?
    public var status: String?
    public var name: String?
    public var description: String?
    public var icon: String?
    public var code: String?
    public var createdBy: UUID?
    public var createdAt: Date?
    public var modifiedBy: UUID?
    public var modifiedAt: Date?
    public var configuration: [ReactorFormulaConfiguration]?
    public var requestParameters: [ReactorFormulaRequestParameter]?

    public init(id: UUID? = nil, type: String? = nil, status: String? = nil, name: String? = nil, description: String? = nil, icon: String? = nil, code: String? = nil, createdBy: UUID? = nil, createdAt: Date? = nil, modifiedBy: UUID? = nil, modifiedAt: Date? = nil, configuration: [ReactorFormulaConfiguration]? = nil, requestParameters: [ReactorFormulaRequestParameter]? = nil) {
        self.id = id
        self.type = type
        self.status = status
        self.name = name
        self.description = description
        self.icon = icon
        self.code = code
        self.createdBy = createdBy
        self.createdAt = createdAt
        self.modifiedBy = modifiedBy
        self.modifiedAt = modifiedAt
        self.configuration = configuration
        self.requestParameters = requestParameters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case status
        case name
        case description
        case icon
        case code
        case createdBy = "created_by"
        case createdAt = "created_at"
        case modifiedBy = "modified_by"
        case modifiedAt = "modified_at"
        case configuration
        case requestParameters = "request_parameters"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(id, forKey: .id)
        try containerEncoder.encodeIfPresent(type, forKey: .type)
        try containerEncoder.encodeIfPresent(status, forKey: .status)
        try containerEncoder.encodeIfPresent(name, forKey: .name)
        try containerEncoder.encodeIfPresent(description, forKey: .description)
        try containerEncoder.encodeIfPresent(icon, forKey: .icon)
        try containerEncoder.encodeIfPresent(code, forKey: .code)
        try containerEncoder.encodeIfPresent(createdBy, forKey: .createdBy)
        try containerEncoder.encodeIfPresent(createdAt, forKey: .createdAt)
        try containerEncoder.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        try containerEncoder.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
        try containerEncoder.encodeIfPresent(configuration, forKey: .configuration)
        try containerEncoder.encodeIfPresent(requestParameters, forKey: .requestParameters)
    }
}

