//
// ApplicationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class ApplicationsAPI {

    /**

     - parameter id: (query)  (optional)
     - parameter type: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: ApplicationPaginatedList
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func callGet(id: [UUID]? = nil, type: [String]? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> ApplicationPaginatedList {
        return try await callGetWithRequestBuilder(id: id, type: type, page: page, start: start, size: size, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /applications
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter id: (query)  (optional)
     - parameter type: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ApplicationPaginatedList> 
     */
    open class func callGetWithRequestBuilder(id: [UUID]? = nil, type: [String]? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<ApplicationPaginatedList> {
        let localVariablePath = "/applications"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": (wrappedValue: id?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "type": (wrappedValue: type?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ApplicationPaginatedList>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter createApplicationRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Application
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func create(createApplicationRequest: CreateApplicationRequest, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> Application {
        return try await createWithRequestBuilder(createApplicationRequest: createApplicationRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /applications
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter createApplicationRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Application> 
     */
    open class func createWithRequestBuilder(createApplicationRequest: CreateApplicationRequest, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<Application> {
        let localVariablePath = "/applications"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createApplicationRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Application>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func delete(id: UUID, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - DELETE /applications/{id}
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteWithRequestBuilder(id: UUID, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/applications/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Application
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getById(id: UUID, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> Application {
        return try await getByIdWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /applications/{id}
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Application> 
     */
    open class func getByIdWithRequestBuilder(id: UUID, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<Application> {
        var localVariablePath = "/applications/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Application>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter apiConfiguration: The configuration for the http request.
     - returns: Application
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getByKey(apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> Application {
        return try await getByKeyWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /applications/key
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Application> 
     */
    open class func getByKeyWithRequestBuilder(apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<Application> {
        let localVariablePath = "/applications/key"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Application>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Application
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func regenerateKey(id: UUID, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> Application {
        return try await regenerateKeyWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /applications/{id}/regenerate
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Application> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func regenerateKeyWithRequestBuilder(id: UUID, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<Application> {
        var localVariablePath = "/applications/{id}/regenerate"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Application>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter id: (path)  
     - parameter updateApplicationRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Application
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func update(id: UUID, updateApplicationRequest: UpdateApplicationRequest, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> Application {
        return try await updateWithRequestBuilder(id: id, updateApplicationRequest: updateApplicationRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - PUT /applications/{id}
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter id: (path)  
     - parameter updateApplicationRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Application> 
     */
    open class func updateWithRequestBuilder(id: UUID, updateApplicationRequest: UpdateApplicationRequest, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<Application> {
        var localVariablePath = "/applications/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateApplicationRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Application>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
