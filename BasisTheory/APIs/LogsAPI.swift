//
// LogsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class LogsAPI {

    /**

     - parameter entityType: (query)  (optional)
     - parameter entityId: (query)  (optional)
     - parameter startDate: (query)  (optional)
     - parameter endDate: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func callGet(entityType: String? = nil, entityId: String? = nil, startDate: Date? = nil, endDate: Date? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: LogPaginatedList?, _ error: Error?) -> Void)) -> RequestTask {
        return callGetWithRequestBuilder(entityType: entityType, entityId: entityId, startDate: startDate, endDate: endDate, page: page, start: start, size: size).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /logs
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter entityType: (query)  (optional)
     - parameter entityId: (query)  (optional)
     - parameter startDate: (query)  (optional)
     - parameter endDate: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - returns: RequestBuilder<LogPaginatedList> 
     */
    open class func callGetWithRequestBuilder(entityType: String? = nil, entityId: String? = nil, startDate: Date? = nil, endDate: Date? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil) -> RequestBuilder<LogPaginatedList> {
        let localVariablePath = "/logs"
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "entity_type": (wrappedValue: entityType?.encodeToJSON(), isExplode: true),
            "entity_id": (wrappedValue: entityId?.encodeToJSON(), isExplode: true),
            "start_date": (wrappedValue: startDate?.encodeToJSON(), isExplode: true),
            "end_date": (wrappedValue: endDate?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LogPaginatedList>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getEntityTypes(apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: [LogEntityType]?, _ error: Error?) -> Void)) -> RequestTask {
        return getEntityTypesWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /logs/entity-types
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - returns: RequestBuilder<[LogEntityType]> 
     */
    open class func getEntityTypesWithRequestBuilder() -> RequestBuilder<[LogEntityType]> {
        let localVariablePath = "/logs/entity-types"
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[LogEntityType]>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
