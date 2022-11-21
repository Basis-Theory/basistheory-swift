//
// ApplicationTemplate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ApplicationTemplate: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var name: String?
    public var description: String?
    public var applicationType: String?
    public var templateType: String?
    public var isStarter: Bool?
    public var rules: [AccessRule]?
    public var permissions: [String]?

    public init(id: UUID? = nil, name: String? = nil, description: String? = nil, applicationType: String? = nil, templateType: String? = nil, isStarter: Bool? = nil, rules: [AccessRule]? = nil, permissions: [String]? = nil) {
        self.id = id
        self.name = name
        self.description = description
        self.applicationType = applicationType
        self.templateType = templateType
        self.isStarter = isStarter
        self.rules = rules
        self.permissions = permissions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case description
        case applicationType = "application_type"
        case templateType = "template_type"
        case isStarter = "is_starter"
        case rules
        case permissions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(id, forKey: .id)
        try containerEncoder.encodeIfPresent(name, forKey: .name)
        try containerEncoder.encodeIfPresent(description, forKey: .description)
        try containerEncoder.encodeIfPresent(applicationType, forKey: .applicationType)
        try containerEncoder.encodeIfPresent(templateType, forKey: .templateType)
        try containerEncoder.encodeIfPresent(isStarter, forKey: .isStarter)
        try containerEncoder.encodeIfPresent(rules, forKey: .rules)
        try containerEncoder.encodeIfPresent(permissions, forKey: .permissions)
    }
}
