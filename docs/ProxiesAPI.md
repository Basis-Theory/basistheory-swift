# ProxiesAPI

All URIs are relative to *https://api.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ProxiesAPI.md#callget) | **GET** /proxies | 
[**create**](ProxiesAPI.md#create) | **POST** /proxies | 
[**delete**](ProxiesAPI.md#delete) | **DELETE** /proxies/{id} | 
[**getById**](ProxiesAPI.md#getbyid) | **GET** /proxies/{id} | 
[**patch**](ProxiesAPI.md#patch) | **PATCH** /proxies/{id} | 
[**update**](ProxiesAPI.md#update) | **PUT** /proxies/{id} | 


# **callGet**
```swift
    open class func callGet(id: [UUID]? = nil, name: String? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, completion: @escaping (_ data: ProxyPaginatedList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = [123] // [UUID] |  (optional)
let name = "name_example" // String |  (optional)
let page = 987 // Int |  (optional)
let start = "start_example" // String |  (optional)
let size = 987 // Int |  (optional)

ProxiesAPI.callGet(id: id, name: name, page: page, start: start, size: size) { (response, error) in
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
 **id** | [**[UUID]**](UUID.md) |  | [optional] 
 **name** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **start** | **String** |  | [optional] 
 **size** | **Int** |  | [optional] 

### Return type

[**ProxyPaginatedList**](ProxyPaginatedList.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
```swift
    open class func create(createProxyRequest: CreateProxyRequest, completion: @escaping (_ data: Proxy?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let createProxyRequest = CreateProxyRequest(name: "name_example", destinationUrl: "destinationUrl_example", requestReactorId: 123, responseReactorId: 123, requestTransform: ProxyTransform(code: "code_example"), responseTransform: nil, application: Application(id: 123, tenantId: 123, name: "name_example", key: "key_example", type: "type_example", createdBy: 123, createdAt: Date(), modifiedBy: 123, modifiedAt: Date(), expiresAt: Date(), permissions: ["permissions_example"], rules: [AccessRule(description: "description_example", priority: 123, container: "container_example", transform: "transform_example", conditions: [Condition(attribute: "attribute_example", _operator: "_operator_example", value: "value_example")], permissions: ["permissions_example"])]), configuration: "TODO", requireAuth: false) // CreateProxyRequest | 

ProxiesAPI.create(createProxyRequest: createProxyRequest) { (response, error) in
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
 **createProxyRequest** | [**CreateProxyRequest**](CreateProxyRequest.md) |  | 

### Return type

[**Proxy**](Proxy.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
```swift
    open class func delete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 

ProxiesAPI.delete(id: id) { (response, error) in
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

# **getById**
```swift
    open class func getById(id: UUID, completion: @escaping (_ data: Proxy?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 

ProxiesAPI.getById(id: id) { (response, error) in
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

[**Proxy**](Proxy.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch**
```swift
    open class func patch(id: UUID, patchProxyRequest: PatchProxyRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 
let patchProxyRequest = PatchProxyRequest(name: "name_example", destinationUrl: "destinationUrl_example", requestTransform: ProxyTransform(code: "code_example"), responseTransform: nil, application: Application(id: 123, tenantId: 123, name: "name_example", key: "key_example", type: "type_example", createdBy: 123, createdAt: Date(), modifiedBy: 123, modifiedAt: Date(), expiresAt: Date(), permissions: ["permissions_example"], rules: [AccessRule(description: "description_example", priority: 123, container: "container_example", transform: "transform_example", conditions: [Condition(attribute: "attribute_example", _operator: "_operator_example", value: "value_example")], permissions: ["permissions_example"])]), configuration: "TODO", requireAuth: false) // PatchProxyRequest | 

ProxiesAPI.patch(id: id, patchProxyRequest: patchProxyRequest) { (response, error) in
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
 **patchProxyRequest** | [**PatchProxyRequest**](PatchProxyRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/merge-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```swift
    open class func update(id: UUID, updateProxyRequest: UpdateProxyRequest, completion: @escaping (_ data: Proxy?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 
let updateProxyRequest = UpdateProxyRequest(name: "name_example", destinationUrl: "destinationUrl_example", requestReactorId: 123, responseReactorId: 123, requestTransform: ProxyTransform(code: "code_example"), responseTransform: nil, application: Application(id: 123, tenantId: 123, name: "name_example", key: "key_example", type: "type_example", createdBy: 123, createdAt: Date(), modifiedBy: 123, modifiedAt: Date(), expiresAt: Date(), permissions: ["permissions_example"], rules: [AccessRule(description: "description_example", priority: 123, container: "container_example", transform: "transform_example", conditions: [Condition(attribute: "attribute_example", _operator: "_operator_example", value: "value_example")], permissions: ["permissions_example"])]), configuration: "TODO", requireAuth: false) // UpdateProxyRequest | 

ProxiesAPI.update(id: id, updateProxyRequest: updateProxyRequest) { (response, error) in
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
 **updateProxyRequest** | [**UpdateProxyRequest**](UpdateProxyRequest.md) |  | 

### Return type

[**Proxy**](Proxy.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

