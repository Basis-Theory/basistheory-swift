//
// ThreeDSAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ThreeDSAPI {

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func call3dsSessionsIdGet(id: UUID, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: ThreeDSSession?, _ error: Error?) -> Void)) -> RequestTask {
        return call3dsSessionsIdGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /3ds/sessions/{id}
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter id: (path)  
     - returns: RequestBuilder<ThreeDSSession> 
     */
    open class func call3dsSessionsIdGetWithRequestBuilder(id: UUID) -> RequestBuilder<ThreeDSSession> {
        var localVariablePath = "/3ds/sessions/{id}"
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

        let localVariableRequestBuilder: RequestBuilder<ThreeDSSession>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter sessionId: (path)  
     - parameter authenticateThreeDSSessionRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func threeDSAuthenticateSession(sessionId: UUID, authenticateThreeDSSessionRequest: AuthenticateThreeDSSessionRequest? = nil, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: ThreeDSAuthentication?, _ error: Error?) -> Void)) -> RequestTask {
        return threeDSAuthenticateSessionWithRequestBuilder(sessionId: sessionId, authenticateThreeDSSessionRequest: authenticateThreeDSSessionRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /3ds/sessions/{sessionId}/authenticate
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter sessionId: (path)  
     - parameter authenticateThreeDSSessionRequest: (body)  (optional)
     - returns: RequestBuilder<ThreeDSAuthentication> 
     */
    open class func threeDSAuthenticateSessionWithRequestBuilder(sessionId: UUID, authenticateThreeDSSessionRequest: AuthenticateThreeDSSessionRequest? = nil) -> RequestBuilder<ThreeDSAuthentication> {
        var localVariablePath = "/3ds/sessions/{sessionId}/authenticate"
        let sessionIdPreEscape = "\(APIHelper.mapValueToPathItem(sessionId))"
        let sessionIdPostEscape = sessionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sessionId}", with: sessionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: authenticateThreeDSSessionRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThreeDSAuthentication>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter sessionId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func threeDSGetChallengeResult(sessionId: UUID, apiResponseQueue: DispatchQueue = BasisTheoryAPI.apiResponseQueue, completion: @escaping ((_ data: ThreeDSAuthentication?, _ error: Error?) -> Void)) -> RequestTask {
        return threeDSGetChallengeResultWithRequestBuilder(sessionId: sessionId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /3ds/sessions/{sessionId}/challenge-result
     - API Key:
       - type: apiKey BT-API-KEY 
       - name: ApiKey
     - parameter sessionId: (path)  
     - returns: RequestBuilder<ThreeDSAuthentication> 
     */
    open class func threeDSGetChallengeResultWithRequestBuilder(sessionId: UUID) -> RequestBuilder<ThreeDSAuthentication> {
        var localVariablePath = "/3ds/sessions/{sessionId}/challenge-result"
        let sessionIdPreEscape = "\(APIHelper.mapValueToPathItem(sessionId))"
        let sessionIdPostEscape = sessionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sessionId}", with: sessionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = BasisTheoryAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThreeDSAuthentication>.Type = BasisTheoryAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
