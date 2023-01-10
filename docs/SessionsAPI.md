# SessionsAPI

All URIs are relative to *https://api.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorize**](SessionsAPI.md#authorize) | **POST** /sessions/authorize | 
[**create**](SessionsAPI.md#create) | **POST** /sessions | 


# **authorize**
```swift
    open class func authorize(authorizeSessionRequest: AuthorizeSessionRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let authorizeSessionRequest = AuthorizeSessionRequest(nonce: "nonce_example", expiresAt: "expiresAt_example", permissions: ["permissions_example"], rules: [AccessRule(description: "description_example", priority: 123, container: "container_example", transform: "transform_example", conditions: [Condition(attribute: "attribute_example", _operator: "_operator_example", value: "value_example")], permissions: ["permissions_example"])]) // AuthorizeSessionRequest | 

SessionsAPI.authorize(authorizeSessionRequest: authorizeSessionRequest) { (response, error) in
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
 **authorizeSessionRequest** | [**AuthorizeSessionRequest**](AuthorizeSessionRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
```swift
    open class func create(completion: @escaping (_ data: CreateSessionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory


SessionsAPI.create() { (response, error) in
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

[**CreateSessionResponse**](CreateSessionResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

