//
// LogsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class LogsAPI {

    /**

     - parameter entityType: (query)  (optional)
     - parameter entityId: (query)  (optional)
     - parameter startDate: (query)  (optional)
     - parameter endDate: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: LogPaginatedList
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func callGet(entityType: String? = nil, entityId: String? = nil, startDate: Date? = nil, endDate: Date? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> LogPaginatedList {
        return try await callGetWithRequestBuilder(entityType: entityType, entityId: entityId, startDate: startDate, endDate: endDate, page: page, start: start, size: size, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /logs
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter entityType: (query)  (optional)
     - parameter entityId: (query)  (optional)
     - parameter startDate: (query)  (optional)
     - parameter endDate: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<LogPaginatedList> 
     */
    open class func callGetWithRequestBuilder(entityType: String? = nil, entityId: String? = nil, startDate: Date? = nil, endDate: Date? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<LogPaginatedList> {
        let localVariablePath = "/logs"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "entity_type": (wrappedValue: entityType?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "entity_id": (wrappedValue: entityId?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "start_date": (wrappedValue: startDate?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "end_date": (wrappedValue: endDate?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LogPaginatedList>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter apiConfiguration: The configuration for the http request.
     - returns: [LogEntityType]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getEntityTypes(apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> [LogEntityType] {
        return try await getEntityTypesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /logs/entity-types
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[LogEntityType]> 
     */
    open class func getEntityTypesWithRequestBuilder(apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<[LogEntityType]> {
        let localVariablePath = "/logs/entity-types"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[LogEntityType]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
