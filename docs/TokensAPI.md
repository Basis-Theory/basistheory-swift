# TokensAPI

All URIs are relative to *https://api.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](TokensAPI.md#callget) | **GET** /tokens | 
[**create**](TokensAPI.md#create) | **POST** /tokens | 
[**delete**](TokensAPI.md#delete) | **DELETE** /tokens/{id} | 
[**getById**](TokensAPI.md#getbyid) | **GET** /tokens/{id} | 
[**search**](TokensAPI.md#search) | **POST** /tokens/search | 
[**update**](TokensAPI.md#update) | **PATCH** /tokens/{id} | 


# **callGet**
```swift
    open class func callGet(type: [String]? = nil, id: [String]? = nil, metadata: [String: String]? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, completion: @escaping (_ data: TokenPaginatedList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let type = ["inner_example"] // [String] |  (optional)
let id = ["inner_example"] // [String] |  (optional)
let metadata = "TODO" // [String: String] |  (optional)
let page = 987 // Int |  (optional)
let start = "start_example" // String |  (optional)
let size = 987 // Int |  (optional)

TokensAPI.callGet(type: type, id: id, metadata: metadata, page: page, start: start, size: size) { (response, error) in
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
 **type** | [**[String]**](String.md) |  | [optional] 
 **id** | [**[String]**](String.md) |  | [optional] 
 **metadata** | [**[String: String]**](String.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **start** | **String** |  | [optional] 
 **size** | **Int** |  | [optional] 

### Return type

[**TokenPaginatedList**](TokenPaginatedList.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
```swift
    open class func create(createTokenRequest: CreateTokenRequest, completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let createTokenRequest = CreateTokenRequest(id: "id_example", type: "type_example", data: "TODO", encryption: EncryptionMetadata(cek: EncryptionKey(key: "key_example", prov: "prov_example", alg: "alg_example"), kek: nil), privacy: Privacy(classification: "classification_example", impactLevel: "impactLevel_example", restrictionPolicy: "restrictionPolicy_example"), metadata: "TODO", searchIndexes: ["searchIndexes_example"], fingerprintExpression: "fingerprintExpression_example", mask: "TODO", deduplicateToken: false, expiresAt: "expiresAt_example", containers: ["containers_example"]) // CreateTokenRequest | 

TokensAPI.create(createTokenRequest: createTokenRequest) { (response, error) in
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
 **createTokenRequest** | [**CreateTokenRequest**](CreateTokenRequest.md) |  | 

### Return type

[**Token**](Token.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
```swift
    open class func delete(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = "id_example" // String | 

TokensAPI.delete(id: id) { (response, error) in
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
 **id** | **String** |  | 

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
    open class func getById(id: String, completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = "id_example" // String | 

TokensAPI.getById(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**Token**](Token.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
```swift
    open class func search(searchTokensRequest: SearchTokensRequest, completion: @escaping (_ data: TokenPaginatedList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let searchTokensRequest = SearchTokensRequest(query: "query_example", page: 123, start: "start_example", size: 123) // SearchTokensRequest | 

TokensAPI.search(searchTokensRequest: searchTokensRequest) { (response, error) in
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
 **searchTokensRequest** | [**SearchTokensRequest**](SearchTokensRequest.md) |  | 

### Return type

[**TokenPaginatedList**](TokenPaginatedList.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```swift
    open class func update(id: String, updateTokenRequest: UpdateTokenRequest, completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = "id_example" // String | 
let updateTokenRequest = UpdateTokenRequest(data: "TODO", encryption: EncryptionMetadata(cek: EncryptionKey(key: "key_example", prov: "prov_example", alg: "alg_example"), kek: nil), privacy: UpdatePrivacy(impactLevel: "impactLevel_example", restrictionPolicy: "restrictionPolicy_example"), metadata: "TODO", searchIndexes: ["searchIndexes_example"], fingerprintExpression: "fingerprintExpression_example", mask: "TODO", expiresAt: "expiresAt_example", deduplicateToken: false, containers: ["containers_example"]) // UpdateTokenRequest | 

TokensAPI.update(id: id, updateTokenRequest: updateTokenRequest) { (response, error) in
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
 **id** | **String** |  | 
 **updateTokenRequest** | [**UpdateTokenRequest**](UpdateTokenRequest.md) |  | 

### Return type

[**Token**](Token.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/merge-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

