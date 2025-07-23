# NetworkTokensAPI

All URIs are relative to *https://api.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tokensCreate**](NetworkTokensAPI.md#tokenscreate) | **POST** /network-tokens | 
[**tokensCryptogram**](NetworkTokensAPI.md#tokenscryptogram) | **POST** /network-tokens/{id}/cryptogram | 
[**tokensDelete**](NetworkTokensAPI.md#tokensdelete) | **DELETE** /network-tokens/{id} | 
[**tokensGet**](NetworkTokensAPI.md#tokensget) | **GET** /network-tokens/{id} | 
[**tokensResume**](NetworkTokensAPI.md#tokensresume) | **PUT** /network-tokens/{id}/resume | 
[**tokensSuspend**](NetworkTokensAPI.md#tokenssuspend) | **PUT** /network-tokens/{id}/suspend | 


# **tokensCreate**
```swift
    open class func tokensCreate(createNetworkTokenRequest: CreateNetworkTokenRequest, completion: @escaping (_ data: NetworkToken?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let createNetworkTokenRequest = CreateNetworkTokenRequest(data: Card(number: "number_example", expirationMonth: 123, expirationYear: 123, cvc: "cvc_example"), tokenId: "tokenId_example", tokenIntentId: "tokenIntentId_example", cardholderInfo: CardholderInfo(name: "name_example", address: Address(line1: "line1_example", line2: "line2_example", line3: "line3_example", postalCode: "postalCode_example", city: "city_example", stateCode: "stateCode_example", countryCode: "countryCode_example"))) // CreateNetworkTokenRequest | 

NetworkTokensAPI.tokensCreate(createNetworkTokenRequest: createNetworkTokenRequest) { (response, error) in
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
 **createNetworkTokenRequest** | [**CreateNetworkTokenRequest**](CreateNetworkTokenRequest.md) |  | 

### Return type

[**NetworkToken**](NetworkToken.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokensCryptogram**
```swift
    open class func tokensCryptogram(id: UUID, completion: @escaping (_ data: NetworkTokenCryptogram?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 

NetworkTokensAPI.tokensCryptogram(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

[**NetworkTokenCryptogram**](NetworkTokenCryptogram.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokensDelete**
```swift
    open class func tokensDelete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 

NetworkTokensAPI.tokensDelete(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokensGet**
```swift
    open class func tokensGet(id: UUID, completion: @escaping (_ data: NetworkToken?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 

NetworkTokensAPI.tokensGet(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

[**NetworkToken**](NetworkToken.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokensResume**
```swift
    open class func tokensResume(id: UUID, completion: @escaping (_ data: NetworkToken?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 

NetworkTokensAPI.tokensResume(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

[**NetworkToken**](NetworkToken.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokensSuspend**
```swift
    open class func tokensSuspend(id: UUID, completion: @escaping (_ data: NetworkToken?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 

NetworkTokensAPI.tokensSuspend(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

[**NetworkToken**](NetworkToken.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

