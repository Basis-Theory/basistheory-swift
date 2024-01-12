//
// TenantsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class TenantsAPI {

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func callGet(apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: Tenant?, _ error: Error?) -> Void)) -> RequestTask {
        return callGetWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /tenants/self
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - returns: RequestBuilder<Tenant> 
     */
    open class func callGetWithRequestBuilder() -> RequestBuilder<Tenant> {
        let localVariablePath = "/tenants/self"
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Tenant>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter createTenantInvitationRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createInvitation(createTenantInvitationRequest: CreateTenantInvitationRequest, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: TenantInvitationResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return createInvitationWithRequestBuilder(createTenantInvitationRequest: createTenantInvitationRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /tenants/self/invitations
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter createTenantInvitationRequest: (body)  
     - returns: RequestBuilder<TenantInvitationResponse> 
     */
    open class func createInvitationWithRequestBuilder(createTenantInvitationRequest: CreateTenantInvitationRequest) -> RequestBuilder<TenantInvitationResponse> {
        let localVariablePath = "/tenants/self/invitations"
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTenantInvitationRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantInvitationResponse>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func delete(apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /tenants/self
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - returns: RequestBuilder<Void> 
     */
    open class func deleteWithRequestBuilder() -> RequestBuilder<Void> {
        let localVariablePath = "/tenants/self"
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

     - parameter invitationId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteInvitation(invitationId: UUID, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteInvitationWithRequestBuilder(invitationId: invitationId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /tenants/self/invitations/{invitationId}
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter invitationId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteInvitationWithRequestBuilder(invitationId: UUID) -> RequestBuilder<Void> {
        var localVariablePath = "/tenants/self/invitations/{invitationId}"
        let invitationIdPreEscape = "\(APIHelper.mapValueToPathItem(invitationId))"
        let invitationIdPostEscape = invitationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{invitationId}", with: invitationIdPostEscape, options: .literal, range: nil)
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

     - parameter memberId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteMember(memberId: UUID, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteMemberWithRequestBuilder(memberId: memberId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - DELETE /tenants/self/members/{memberId}
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter memberId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteMemberWithRequestBuilder(memberId: UUID) -> RequestBuilder<Void> {
        var localVariablePath = "/tenants/self/members/{memberId}"
        let memberIdPreEscape = "\(APIHelper.mapValueToPathItem(memberId))"
        let memberIdPostEscape = memberIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{memberId}", with: memberIdPostEscape, options: .literal, range: nil)
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

     - parameter status: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getInvitations(status: TenantInvitationStatus? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: TenantInvitationResponsePaginatedList?, _ error: Error?) -> Void)) -> RequestTask {
        return getInvitationsWithRequestBuilder(status: status, page: page, start: start, size: size).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /tenants/self/invitations
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter status: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - returns: RequestBuilder<TenantInvitationResponsePaginatedList> 
     */
    open class func getInvitationsWithRequestBuilder(status: TenantInvitationStatus? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil) -> RequestBuilder<TenantInvitationResponsePaginatedList> {
        let localVariablePath = "/tenants/self/invitations"
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "status": (wrappedValue: status?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantInvitationResponsePaginatedList>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter userId: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getMembers(userId: [UUID]? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: TenantMemberResponsePaginatedList?, _ error: Error?) -> Void)) -> RequestTask {
        return getMembersWithRequestBuilder(userId: userId, page: page, start: start, size: size).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /tenants/self/members
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter userId: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter start: (query)  (optional)
     - parameter size: (query)  (optional)
     - returns: RequestBuilder<TenantMemberResponsePaginatedList> 
     */
    open class func getMembersWithRequestBuilder(userId: [UUID]? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil) -> RequestBuilder<TenantMemberResponsePaginatedList> {
        let localVariablePath = "/tenants/self/members"
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "user_id": (wrappedValue: userId?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantMemberResponsePaginatedList>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getTenantOperationReport(apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: TenantUsageReport?, _ error: Error?) -> Void)) -> RequestTask {
        return getTenantOperationReportWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /tenants/self/reports/operations
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - returns: RequestBuilder<TenantUsageReport> 
     */
    open class func getTenantOperationReportWithRequestBuilder() -> RequestBuilder<TenantUsageReport> {
        let localVariablePath = "/tenants/self/reports/operations"
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantUsageReport>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getTenantUsageReport(apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: TenantUsageReport?, _ error: Error?) -> Void)) -> RequestTask {
        return getTenantUsageReportWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /tenants/self/reports/usage
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - returns: RequestBuilder<TenantUsageReport> 
     */
    open class func getTenantUsageReportWithRequestBuilder() -> RequestBuilder<TenantUsageReport> {
        let localVariablePath = "/tenants/self/reports/usage"
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantUsageReport>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter invitationId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func resendInvitation(invitationId: UUID, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: TenantInvitationResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return resendInvitationWithRequestBuilder(invitationId: invitationId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /tenants/self/invitations/{invitationId}/resend
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter invitationId: (path)  
     - returns: RequestBuilder<TenantInvitationResponse> 
     */
    open class func resendInvitationWithRequestBuilder(invitationId: UUID) -> RequestBuilder<TenantInvitationResponse> {
        var localVariablePath = "/tenants/self/invitations/{invitationId}/resend"
        let invitationIdPreEscape = "\(APIHelper.mapValueToPathItem(invitationId))"
        let invitationIdPostEscape = invitationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{invitationId}", with: invitationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TenantInvitationResponse>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter updateTenantRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func update(updateTenantRequest: UpdateTenantRequest, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: Tenant?, _ error: Error?) -> Void)) -> RequestTask {
        return updateWithRequestBuilder(updateTenantRequest: updateTenantRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PUT /tenants/self
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter updateTenantRequest: (body)  
     - returns: RequestBuilder<Tenant> 
     */
    open class func updateWithRequestBuilder(updateTenantRequest: UpdateTenantRequest) -> RequestBuilder<Tenant> {
        let localVariablePath = "/tenants/self"
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateTenantRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Tenant>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
