//
// TenantsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class TenantsAPI {

    /**

     - parameter apiConfiguration: The configuration for the http request.
     - returns: Tenant
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func callGet(apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> Tenant {
        return try await callGetWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /tenants/self
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Tenant> 
     */
    open class func callGetWithRequestBuilder(apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<Tenant> {
        let localVariablePath = "/tenants/self"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Tenant>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter createTenantConnectionRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: CreateTenantConnectionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createConnection(createTenantConnectionRequest: CreateTenantConnectionRequest, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> CreateTenantConnectionResponse {
        return try await createConnectionWithRequestBuilder(createTenantConnectionRequest: createTenantConnectionRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /tenants/self/connections
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter createTenantConnectionRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<CreateTenantConnectionResponse> 
     */
    open class func createConnectionWithRequestBuilder(createTenantConnectionRequest: CreateTenantConnectionRequest, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<CreateTenantConnectionResponse> {
        let localVariablePath = "/tenants/self/connections"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTenantConnectionRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateTenantConnectionResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter createTenantInvitationRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantInvitationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createInvitation(createTenantInvitationRequest: CreateTenantInvitationRequest, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> TenantInvitationResponse {
        return try await createInvitationWithRequestBuilder(createTenantInvitationRequest: createTenantInvitationRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /tenants/self/invitations
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter createTenantInvitationRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantInvitationResponse> 
     */
    open class func createInvitationWithRequestBuilder(createTenantInvitationRequest: CreateTenantInvitationRequest, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<TenantInvitationResponse> {
        let localVariablePath = "/tenants/self/invitations"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTenantInvitationRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantInvitationResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func delete(apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - DELETE /tenants/self
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteWithRequestBuilder(apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/tenants/self"
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

     - parameter apiConfiguration: The configuration for the http request.
     - returns: CreateTenantConnectionResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteConnection(apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> CreateTenantConnectionResponse {
        return try await deleteConnectionWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - DELETE /tenants/self/connections
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<CreateTenantConnectionResponse> 
     */
    open class func deleteConnectionWithRequestBuilder(apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<CreateTenantConnectionResponse> {
        let localVariablePath = "/tenants/self/connections"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreateTenantConnectionResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter invitationId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteInvitation(invitationId: UUID, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteInvitationWithRequestBuilder(invitationId: invitationId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - DELETE /tenants/self/invitations/{invitationId}
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter invitationId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteInvitationWithRequestBuilder(invitationId: UUID, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/tenants/self/invitations/{invitationId}"
        let invitationIdPreEscape = "\(APIHelper.mapValueToPathItem(invitationId))"
        let invitationIdPostEscape = invitationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{invitationId}", with: invitationIdPostEscape, options: .literal, range: nil)
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

     - parameter memberId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteMember(memberId: UUID, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteMemberWithRequestBuilder(memberId: memberId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - DELETE /tenants/self/members/{memberId}
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter memberId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteMemberWithRequestBuilder(memberId: UUID, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/tenants/self/members/{memberId}"
        let memberIdPreEscape = "\(APIHelper.mapValueToPathItem(memberId))"
        let memberIdPostEscape = memberIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{memberId}", with: memberIdPostEscape, options: .literal, range: nil)
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

     - parameter invitationId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantInvitationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getById(invitationId: UUID, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> TenantInvitationResponse {
        return try await getByIdWithRequestBuilder(invitationId: invitationId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /tenants/self/invitations/{invitationId}
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter invitationId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantInvitationResponse> 
     */
    open class func getByIdWithRequestBuilder(invitationId: UUID, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<TenantInvitationResponse> {
        var localVariablePath = "/tenants/self/invitations/{invitationId}"
        let invitationIdPreEscape = "\(APIHelper.mapValueToPathItem(invitationId))"
        let invitationIdPostEscape = invitationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{invitationId}", with: invitationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantInvitationResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter status: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantInvitationResponsePaginatedList
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getInvitations(status: TenantInvitationStatus? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> TenantInvitationResponsePaginatedList {
        return try await getInvitationsWithRequestBuilder(status: status, page: page, start: start, size: size, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /tenants/self/invitations
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter status: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantInvitationResponsePaginatedList> 
     */
    open class func getInvitationsWithRequestBuilder(status: TenantInvitationStatus? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<TenantInvitationResponsePaginatedList> {
        let localVariablePath = "/tenants/self/invitations"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "status": (wrappedValue: status?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantInvitationResponsePaginatedList>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter userId: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantMemberResponsePaginatedList
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getMembers(userId: [UUID]? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> TenantMemberResponsePaginatedList {
        return try await getMembersWithRequestBuilder(userId: userId, page: page, start: start, size: size, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /tenants/self/members
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter userId: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantMemberResponsePaginatedList> 
     */
    open class func getMembersWithRequestBuilder(userId: [UUID]? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<TenantMemberResponsePaginatedList> {
        let localVariablePath = "/tenants/self/members"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "user_id": (wrappedValue: userId?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantMemberResponsePaginatedList>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantUsageReport
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getTenantUsageReport(apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> TenantUsageReport {
        return try await getTenantUsageReportWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /tenants/self/reports/usage
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantUsageReport> 
     */
    open class func getTenantUsageReportWithRequestBuilder(apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<TenantUsageReport> {
        let localVariablePath = "/tenants/self/reports/usage"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantUsageReport>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantMemberResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func ownerGet(apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> TenantMemberResponse {
        return try await ownerGetWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - GET /tenants/self/owner
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantMemberResponse> 
     */
    open class func ownerGetWithRequestBuilder(apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<TenantMemberResponse> {
        let localVariablePath = "/tenants/self/owner"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantMemberResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter invitationId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantInvitationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func resendInvitation(invitationId: UUID, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> TenantInvitationResponse {
        return try await resendInvitationWithRequestBuilder(invitationId: invitationId, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /tenants/self/invitations/{invitationId}/resend
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter invitationId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantInvitationResponse> 
     */
    open class func resendInvitationWithRequestBuilder(invitationId: UUID, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<TenantInvitationResponse> {
        var localVariablePath = "/tenants/self/invitations/{invitationId}/resend"
        let invitationIdPreEscape = "\(APIHelper.mapValueToPathItem(invitationId))"
        let invitationIdPostEscape = invitationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{invitationId}", with: invitationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantInvitationResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter updateTenantRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Tenant
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func update(updateTenantRequest: UpdateTenantRequest, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> Tenant {
        return try await updateWithRequestBuilder(updateTenantRequest: updateTenantRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - PUT /tenants/self
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter updateTenantRequest: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Tenant> 
     */
    open class func updateWithRequestBuilder(updateTenantRequest: UpdateTenantRequest, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<Tenant> {
        let localVariablePath = "/tenants/self"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateTenantRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Tenant>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**

     - parameter memberId: (path)  
     - parameter updateTenantMemberRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: TenantMemberResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateMember(memberId: UUID, updateTenantMemberRequest: UpdateTenantMemberRequest? = nil, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) async throws(ErrorResponse) -> TenantMemberResponse {
        return try await updateMemberWithRequestBuilder(memberId: memberId, updateTenantMemberRequest: updateTenantMemberRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - PUT /tenants/self/members/{memberId}
     - API Key:
       - type: apiKey BT-API-KEY (HEADER)
       - name: ApiKey
     - parameter memberId: (path)  
     - parameter updateTenantMemberRequest: (body)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<TenantMemberResponse> 
     */
    open class func updateMemberWithRequestBuilder(memberId: UUID, updateTenantMemberRequest: UpdateTenantMemberRequest? = nil, apiConfiguration: BasisTheoryAPIConfiguration = BasisTheoryAPIConfiguration.shared) -> RequestBuilder<TenantMemberResponse> {
        var localVariablePath = "/tenants/self/members/{memberId}"
        let memberIdPreEscape = "\(APIHelper.mapValueToPathItem(memberId))"
        let memberIdPostEscape = memberIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{memberId}", with: memberIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateTenantMemberRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json-patch+json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantMemberResponse>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
