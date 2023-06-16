//
// Proxy.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Proxy: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var key: String?
    public var tenantId: UUID?
    public var name: String?
    public var destinationUrl: String?
    public var requestReactorId: UUID?
    public var responseReactorId: UUID?
    public var requireAuth: Bool?
    public var requestTransform: ProxyTransform?
    public var responseTransform: ProxyTransform?
    public var applicationId: UUID?
    public var configuration: [String: String]?
    public var proxyHost: String?
    public var createdBy: UUID?
    public var createdAt: Date?
    public var modifiedBy: UUID?
    public var modifiedAt: Date?

    public init(id: UUID? = nil, key: String? = nil, tenantId: UUID? = nil, name: String? = nil, destinationUrl: String? = nil, requestReactorId: UUID? = nil, responseReactorId: UUID? = nil, requireAuth: Bool? = nil, requestTransform: ProxyTransform? = nil, responseTransform: ProxyTransform? = nil, applicationId: UUID? = nil, configuration: [String: String]? = nil, proxyHost: String? = nil, createdBy: UUID? = nil, createdAt: Date? = nil, modifiedBy: UUID? = nil, modifiedAt: Date? = nil) {
        self.id = id
        self.key = key
        self.tenantId = tenantId
        self.name = name
        self.destinationUrl = destinationUrl
        self.requestReactorId = requestReactorId
        self.responseReactorId = responseReactorId
        self.requireAuth = requireAuth
        self.requestTransform = requestTransform
        self.responseTransform = responseTransform
        self.applicationId = applicationId
        self.configuration = configuration
        self.proxyHost = proxyHost
        self.createdBy = createdBy
        self.createdAt = createdAt
        self.modifiedBy = modifiedBy
        self.modifiedAt = modifiedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case key
        case tenantId = "tenant_id"
        case name
        case destinationUrl = "destination_url"
        case requestReactorId = "request_reactor_id"
        case responseReactorId = "response_reactor_id"
        case requireAuth = "require_auth"
        case requestTransform = "request_transform"
        case responseTransform = "response_transform"
        case applicationId = "application_id"
        case configuration
        case proxyHost = "proxy_host"
        case createdBy = "created_by"
        case createdAt = "created_at"
        case modifiedBy = "modified_by"
        case modifiedAt = "modified_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var containerEncoder = encoder.container(keyedBy: CodingKeys.self)
        try containerEncoder.encodeIfPresent(id, forKey: .id)
        try containerEncoder.encodeIfPresent(key, forKey: .key)
        try containerEncoder.encodeIfPresent(tenantId, forKey: .tenantId)
        try containerEncoder.encodeIfPresent(name, forKey: .name)
        try containerEncoder.encodeIfPresent(destinationUrl, forKey: .destinationUrl)
        try containerEncoder.encodeIfPresent(requestReactorId, forKey: .requestReactorId)
        try containerEncoder.encodeIfPresent(responseReactorId, forKey: .responseReactorId)
        try containerEncoder.encodeIfPresent(requireAuth, forKey: .requireAuth)
        try containerEncoder.encodeIfPresent(requestTransform, forKey: .requestTransform)
        try containerEncoder.encodeIfPresent(responseTransform, forKey: .responseTransform)
        try containerEncoder.encodeIfPresent(applicationId, forKey: .applicationId)
        try containerEncoder.encodeIfPresent(configuration, forKey: .configuration)
        try containerEncoder.encodeIfPresent(proxyHost, forKey: .proxyHost)
        try containerEncoder.encodeIfPresent(createdBy, forKey: .createdBy)
        try containerEncoder.encodeIfPresent(createdAt, forKey: .createdAt)
        try containerEncoder.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        try containerEncoder.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
    }
}

