# TenantsAPI

All URIs are relative to *https://api.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](TenantsAPI.md#callget) | **GET** /tenants/self | 
[**createConnection**](TenantsAPI.md#createconnection) | **POST** /tenants/self/connections | 
[**createInvitation**](TenantsAPI.md#createinvitation) | **POST** /tenants/self/invitations | 
[**delete**](TenantsAPI.md#delete) | **DELETE** /tenants/self | 
[**deleteConnection**](TenantsAPI.md#deleteconnection) | **DELETE** /tenants/self/connections | 
[**deleteInvitation**](TenantsAPI.md#deleteinvitation) | **DELETE** /tenants/self/invitations/{invitationId} | 
[**deleteMember**](TenantsAPI.md#deletemember) | **DELETE** /tenants/self/members/{memberId} | 
[**getById**](TenantsAPI.md#getbyid) | **GET** /tenants/self/invitations/{invitationId} | 
[**getInvitations**](TenantsAPI.md#getinvitations) | **GET** /tenants/self/invitations | 
[**getMembers**](TenantsAPI.md#getmembers) | **GET** /tenants/self/members | 
[**getTenantUsageReport**](TenantsAPI.md#gettenantusagereport) | **GET** /tenants/self/reports/usage | 
[**ownerGet**](TenantsAPI.md#ownerget) | **GET** /tenants/self/owner | 
[**resendInvitation**](TenantsAPI.md#resendinvitation) | **POST** /tenants/self/invitations/{invitationId}/resend | 
[**update**](TenantsAPI.md#update) | **PUT** /tenants/self | 
[**updateMember**](TenantsAPI.md#updatemember) | **PUT** /tenants/self/members/{memberId} | 


# **callGet**
```swift
    open class func callGet(completion: @escaping (_ data: Tenant?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory


TenantsAPI.callGet() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Tenant**](Tenant.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createConnection**
```swift
    open class func createConnection(createTenantConnectionRequest: CreateTenantConnectionRequest, completion: @escaping (_ data: CreateTenantConnectionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let createTenantConnectionRequest = CreateTenantConnectionRequest(strategy: "strategy_example", options: TenantConnectionOptions(domainAliases: ["domainAliases_example"])) // CreateTenantConnectionRequest | 

TenantsAPI.createConnection(createTenantConnectionRequest: createTenantConnectionRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTenantConnectionRequest** | [**CreateTenantConnectionRequest**](CreateTenantConnectionRequest.md) |  | 

### Return type

[**CreateTenantConnectionResponse**](CreateTenantConnectionResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createInvitation**
```swift
    open class func createInvitation(createTenantInvitationRequest: CreateTenantInvitationRequest, completion: @escaping (_ data: TenantInvitationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let createTenantInvitationRequest = CreateTenantInvitationRequest(email: "email_example", role: "role_example") // CreateTenantInvitationRequest | 

TenantsAPI.createInvitation(createTenantInvitationRequest: createTenantInvitationRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTenantInvitationRequest** | [**CreateTenantInvitationRequest**](CreateTenantInvitationRequest.md) |  | 

### Return type

[**TenantInvitationResponse**](TenantInvitationResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
```swift
    open class func delete(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory


TenantsAPI.delete() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteConnection**
```swift
    open class func deleteConnection(completion: @escaping (_ data: CreateTenantConnectionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory


TenantsAPI.deleteConnection() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CreateTenantConnectionResponse**](CreateTenantConnectionResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInvitation**
```swift
    open class func deleteInvitation(invitationId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let invitationId = 987 // UUID | 

TenantsAPI.deleteInvitation(invitationId: invitationId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitationId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMember**
```swift
    open class func deleteMember(memberId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let memberId = 987 // UUID | 

TenantsAPI.deleteMember(memberId: memberId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **memberId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getById**
```swift
    open class func getById(invitationId: UUID, completion: @escaping (_ data: TenantInvitationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let invitationId = 987 // UUID | 

TenantsAPI.getById(invitationId: invitationId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitationId** | **UUID** |  | 

### Return type

[**TenantInvitationResponse**](TenantInvitationResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvitations**
```swift
    open class func getInvitations(status: TenantInvitationStatus? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, completion: @escaping (_ data: TenantInvitationResponsePaginatedList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let status = TenantInvitationStatus() // TenantInvitationStatus |  (optional)
let page = 987 // Int |  (optional)
let start = "start_example" // String |  (optional)
let size = 987 // Int |  (optional)

TenantsAPI.getInvitations(status: status, page: page, start: start, size: size) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**TenantInvitationStatus**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **start** | **String** |  | [optional] 
 **size** | **Int** |  | [optional] 

### Return type

[**TenantInvitationResponsePaginatedList**](TenantInvitationResponsePaginatedList.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMembers**
```swift
    open class func getMembers(userId: [UUID]? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, completion: @escaping (_ data: TenantMemberResponsePaginatedList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let userId = [123] // [UUID] |  (optional)
let page = 987 // Int |  (optional)
let start = "start_example" // String |  (optional)
let size = 987 // Int |  (optional)

TenantsAPI.getMembers(userId: userId, page: page, start: start, size: size) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**[UUID]**](UUID.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **start** | **String** |  | [optional] 
 **size** | **Int** |  | [optional] 

### Return type

[**TenantMemberResponsePaginatedList**](TenantMemberResponsePaginatedList.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantUsageReport**
```swift
    open class func getTenantUsageReport(completion: @escaping (_ data: TenantUsageReport?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory


TenantsAPI.getTenantUsageReport() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantUsageReport**](TenantUsageReport.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ownerGet**
```swift
    open class func ownerGet(completion: @escaping (_ data: TenantMemberResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory


TenantsAPI.ownerGet() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantMemberResponse**](TenantMemberResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resendInvitation**
```swift
    open class func resendInvitation(invitationId: UUID, completion: @escaping (_ data: TenantInvitationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let invitationId = 987 // UUID | 

TenantsAPI.resendInvitation(invitationId: invitationId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitationId** | **UUID** |  | 

### Return type

[**TenantInvitationResponse**](TenantInvitationResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```swift
    open class func update(updateTenantRequest: UpdateTenantRequest, completion: @escaping (_ data: Tenant?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let updateTenantRequest = UpdateTenantRequest(name: "name_example", settings: "TODO") // UpdateTenantRequest | 

TenantsAPI.update(updateTenantRequest: updateTenantRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateTenantRequest** | [**UpdateTenantRequest**](UpdateTenantRequest.md) |  | 

### Return type

[**Tenant**](Tenant.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMember**
```swift
    open class func updateMember(memberId: UUID, updateTenantMemberRequest: UpdateTenantMemberRequest? = nil, completion: @escaping (_ data: TenantMemberResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let memberId = 987 // UUID | 
let updateTenantMemberRequest = UpdateTenantMemberRequest(role: "role_example") // UpdateTenantMemberRequest |  (optional)

TenantsAPI.updateMember(memberId: memberId, updateTenantMemberRequest: updateTenantMemberRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **memberId** | **UUID** |  | 
 **updateTenantMemberRequest** | [**UpdateTenantMemberRequest**](UpdateTenantMemberRequest.md) |  | [optional] 

### Return type

[**TenantMemberResponse**](TenantMemberResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json, application/xml, text/xml, application/*+xml
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

