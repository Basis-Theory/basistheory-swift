//
// ApplicationKeysAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ApplicationKeysAPI {

    /**

     - parameter id: (path)  
     - parameter id2: (query)  (optional)
     - parameter type: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func callGet(id: UUID, id2: [UUID]? = nil, type: [String]? = nil, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: [ApplicationKey]?, _ error: Error?) -> Void)) -> RequestTask {
        return callGetWithRequestBuilder(id: id, id2: id2, type: type).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /applications/{id}/keys
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter id: (path)  
     - parameter id2: (query)  (optional)
     - parameter type: (query)  (optional)
     - returns: RequestBuilder<[ApplicationKey]> 
     */
    open class func callGetWithRequestBuilder(id: UUID, id2: [UUID]? = nil, type: [String]? = nil) -> RequestBuilder<[ApplicationKey]> {
        var localVariablePath = "/applications/{id}/keys"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": (wrappedValue: id2?.encodeToJSON(), isExplode: true),
            "type": (wrappedValue: type?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[ApplicationKey]>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func create(id: UUID, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: ApplicationKey?, _ error: Error?) -> Void)) -> RequestTask {
        return createWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /applications/{id}/keys
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter id: (path)  
     - returns: RequestBuilder<ApplicationKey> 
     */
    open class func createWithRequestBuilder(id: UUID) -> RequestBuilder<ApplicationKey> {
        var localVariablePath = "/applications/{id}/keys"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ApplicationKey>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path)  
     - parameter keyId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func delete(id: UUID, keyId: UUID, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteWithRequestBuilder(id: id, keyId: keyId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /applications/{id}/keys/{keyId}
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter id: (path)  
     - parameter keyId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteWithRequestBuilder(id: UUID, keyId: UUID) -> RequestBuilder<Void> {
        var localVariablePath = "/applications/{id}/keys/{keyId}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let keyIdPreEscape = "\(APIHelper.mapValueToPathItem(keyId))"
        let keyIdPostEscape = keyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{keyId}", with: keyIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = BasisTheoryAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path)  
     - parameter keyId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getById(id: UUID, keyId: UUID, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: ApplicationKey?, _ error: Error?) -> Void)) -> RequestTask {
        return getByIdWithRequestBuilder(id: id, keyId: keyId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /applications/{id}/keys/{keyId}
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter id: (path)  
     - parameter keyId: (path)  
     - returns: RequestBuilder<ApplicationKey> 
     */
    open class func getByIdWithRequestBuilder(id: UUID, keyId: UUID) -> RequestBuilder<ApplicationKey> {
        var localVariablePath = "/applications/{id}/keys/{keyId}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let keyIdPreEscape = "\(APIHelper.mapValueToPathItem(keyId))"
        let keyIdPostEscape = keyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{keyId}", with: keyIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ApplicationKey>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
