# ApplicationsAPI

All URIs are relative to *https://api.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ApplicationsAPI.md#callget) | **GET** /applications | 
[**create**](ApplicationsAPI.md#create) | **POST** /applications | 
[**delete**](ApplicationsAPI.md#delete) | **DELETE** /applications/{id} | 
[**getById**](ApplicationsAPI.md#getbyid) | **GET** /applications/{id} | 
[**getByKey**](ApplicationsAPI.md#getbykey) | **GET** /applications/key | 
[**regenerateKey**](ApplicationsAPI.md#regeneratekey) | **POST** /applications/{id}/regenerate | 
[**update**](ApplicationsAPI.md#update) | **PUT** /applications/{id} | 


# **callGet**
```swift
    open class func callGet(id: [UUID]? = nil, type: [String]? = nil, page: Int? = nil, size: Int? = nil, completion: @escaping (_ data: ApplicationPaginatedList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = [123] // [UUID] |  (optional)
let type = ["inner_example"] // [String] |  (optional)
let page = 987 // Int |  (optional)
let size = 987 // Int |  (optional)

ApplicationsAPI.callGet(id: id, type: type, page: page, size: size) { (response, error) in
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
 **type** | [**[String]**](String.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **size** | **Int** |  | [optional] 

### Return type

[**ApplicationPaginatedList**](ApplicationPaginatedList.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
```swift
    open class func create(createApplicationRequest: CreateApplicationRequest, completion: @escaping (_ data: Application?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let createApplicationRequest = CreateApplicationRequest(name: "name_example", type: "type_example", expiresAt: "expiresAt_example", permissions: ["permissions_example"], rules: [AccessRule(description: "description_example", priority: 123, container: "container_example", transform: "transform_example", conditions: [Condition(attribute: "attribute_example", _operator: "_operator_example", value: "value_example")], permissions: ["permissions_example"])]) // CreateApplicationRequest | 

ApplicationsAPI.create(createApplicationRequest: createApplicationRequest) { (response, error) in
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
 **createApplicationRequest** | [**CreateApplicationRequest**](CreateApplicationRequest.md) |  | 

### Return type

[**Application**](Application.md)

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

ApplicationsAPI.delete(id: id) { (response, error) in
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
    open class func getById(id: UUID, completion: @escaping (_ data: Application?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 

ApplicationsAPI.getById(id: id) { (response, error) in
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

[**Application**](Application.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByKey**
```swift
    open class func getByKey(completion: @escaping (_ data: Application?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory


ApplicationsAPI.getByKey() { (response, error) in
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

[**Application**](Application.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regenerateKey**
```swift
    open class func regenerateKey(id: UUID, completion: @escaping (_ data: Application?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 

ApplicationsAPI.regenerateKey(id: id) { (response, error) in
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

[**Application**](Application.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```swift
    open class func update(id: UUID, updateApplicationRequest: UpdateApplicationRequest, completion: @escaping (_ data: Application?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 
let updateApplicationRequest = UpdateApplicationRequest(name: "name_example", permissions: ["permissions_example"], rules: [AccessRule(description: "description_example", priority: 123, container: "container_example", transform: "transform_example", conditions: [Condition(attribute: "attribute_example", _operator: "_operator_example", value: "value_example")], permissions: ["permissions_example"])]) // UpdateApplicationRequest | 

ApplicationsAPI.update(id: id, updateApplicationRequest: updateApplicationRequest) { (response, error) in
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
 **updateApplicationRequest** | [**UpdateApplicationRequest**](UpdateApplicationRequest.md) |  | 

### Return type

[**Application**](Application.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

