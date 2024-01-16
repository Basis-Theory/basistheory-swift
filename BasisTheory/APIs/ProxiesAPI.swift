//
// ProxiesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ProxiesAPI {

    /**

     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func callGet(id: [UUID]? = nil, name: String? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: ProxyPaginatedList?, _ error: Error?) -> Void)) -> RequestTask {
        return callGetWithRequestBuilder(id: id, name: name, page: page, start: start, size: size).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /proxies
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - returns: RequestBuilder<ProxyPaginatedList> 
     */
    open class func callGetWithRequestBuilder(id: [UUID]? = nil, name: String? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil) -> RequestBuilder<ProxyPaginatedList> {
        let localVariablePath = "/proxies"
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": (wrappedValue: id?.encodeToJSON(), isExplode: true),
            "name": (wrappedValue: name?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProxyPaginatedList>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter createProxyRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func create(createProxyRequest: CreateProxyRequest, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: Proxy?, _ error: Error?) -> Void)) -> RequestTask {
        return createWithRequestBuilder(createProxyRequest: createProxyRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /proxies
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter createProxyRequest: (body)  
     - returns: RequestBuilder<Proxy> 
     */
    open class func createWithRequestBuilder(createProxyRequest: CreateProxyRequest) -> RequestBuilder<Proxy> {
        let localVariablePath = "/proxies"
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createProxyRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Proxy>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func delete(id: UUID, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /proxies/{id}
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter id: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteWithRequestBuilder(id: UUID) -> RequestBuilder<Void> {
        var localVariablePath = "/proxies/{id}"
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

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = BasisTheoryAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getById(id: UUID, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: Proxy?, _ error: Error?) -> Void)) -> RequestTask {
        return getByIdWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /proxies/{id}
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter id: (path)  
     - returns: RequestBuilder<Proxy> 
     */
    open class func getByIdWithRequestBuilder(id: UUID) -> RequestBuilder<Proxy> {
        var localVariablePath = "/proxies/{id}"
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

        let localVariableRequestBuilder: RequestBuilder<Proxy>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path)  
     - parameter patchProxyRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func patch(id: UUID, patchProxyRequest: PatchProxyRequest, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return patchWithRequestBuilder(id: id, patchProxyRequest: patchProxyRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PATCH /proxies/{id}
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter id: (path)  
     - parameter patchProxyRequest: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func patchWithRequestBuilder(id: UUID, patchProxyRequest: PatchProxyRequest) -> RequestBuilder<Void> {
        var localVariablePath = "/proxies/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: patchProxyRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = BasisTheoryAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path)  
     - parameter updateProxyRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func update(id: UUID, updateProxyRequest: UpdateProxyRequest, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: Proxy?, _ error: Error?) -> Void)) -> RequestTask {
        return updateWithRequestBuilder(id: id, updateProxyRequest: updateProxyRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PUT /proxies/{id}
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter id: (path)  
     - parameter updateProxyRequest: (body)  
     - returns: RequestBuilder<Proxy> 
     */
    open class func updateWithRequestBuilder(id: UUID, updateProxyRequest: UpdateProxyRequest) -> RequestBuilder<Proxy> {
        var localVariablePath = "/proxies/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateProxyRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Proxy>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
