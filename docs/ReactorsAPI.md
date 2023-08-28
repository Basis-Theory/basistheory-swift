# ReactorsAPI

All URIs are relative to *https://api.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ReactorsAPI.md#callget) | **GET** /reactors | 
[**create**](ReactorsAPI.md#create) | **POST** /reactors | 
[**delete**](ReactorsAPI.md#delete) | **DELETE** /reactors/{id} | 
[**getById**](ReactorsAPI.md#getbyid) | **GET** /reactors/{id} | 
[**patch**](ReactorsAPI.md#patch) | **PATCH** /reactors/{id} | 
[**react**](ReactorsAPI.md#react) | **POST** /reactors/{id}/react | 
[**update**](ReactorsAPI.md#update) | **PUT** /reactors/{id} | 


# **callGet**
```swift
    open class func callGet(id: [UUID]? = nil, name: String? = nil, page: Int? = nil, size: Int? = nil, completion: @escaping (_ data: ReactorPaginatedList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = [123] // [UUID] |  (optional)
let name = "name_example" // String |  (optional)
let page = 987 // Int |  (optional)
let size = 987 // Int |  (optional)

ReactorsAPI.callGet(id: id, name: name, page: page, size: size) { (response, error) in
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
 **size** | **Int** |  | [optional] 

### Return type

[**ReactorPaginatedList**](ReactorPaginatedList.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
```swift
    open class func create(createReactorRequest: CreateReactorRequest, completion: @escaping (_ data: Reactor?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let createReactorRequest = CreateReactorRequest(name: "name_example", formula: ReactorFormula(id: 123, type: "type_example", status: "status_example", name: "name_example", description: "description_example", icon: "icon_example", code: "code_example", createdBy: 123, createdAt: Date(), modifiedBy: 123, modifiedAt: Date(), configuration: [ReactorFormulaConfiguration(name: "name_example", description: "description_example", type: "type_example")], requestParameters: [ReactorFormulaRequestParameter(name: "name_example", description: "description_example", type: "type_example", _optional: false)]), application: Application(id: 123, tenantId: 123, name: "name_example", key: "key_example", type: "type_example", createdBy: 123, createdAt: Date(), modifiedBy: 123, modifiedAt: Date(), expiresAt: Date(), permissions: ["permissions_example"], rules: [AccessRule(description: "description_example", priority: 123, container: "container_example", transform: "transform_example", conditions: [Condition(attribute: "attribute_example", _operator: "_operator_example", value: "value_example")], permissions: ["permissions_example"])]), configuration: "TODO") // CreateReactorRequest | 

ReactorsAPI.create(createReactorRequest: createReactorRequest) { (response, error) in
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
 **createReactorRequest** | [**CreateReactorRequest**](CreateReactorRequest.md) |  | 

### Return type

[**Reactor**](Reactor.md)

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

ReactorsAPI.delete(id: id) { (response, error) in
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
    open class func getById(id: UUID, completion: @escaping (_ data: Reactor?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 

ReactorsAPI.getById(id: id) { (response, error) in
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

[**Reactor**](Reactor.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch**
```swift
    open class func patch(id: UUID, patchReactorRequest: PatchReactorRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 
let patchReactorRequest = PatchReactorRequest(name: "name_example", application: Application(id: 123, tenantId: 123, name: "name_example", key: "key_example", type: "type_example", createdBy: 123, createdAt: Date(), modifiedBy: 123, modifiedAt: Date(), expiresAt: Date(), permissions: ["permissions_example"], rules: [AccessRule(description: "description_example", priority: 123, container: "container_example", transform: "transform_example", conditions: [Condition(attribute: "attribute_example", _operator: "_operator_example", value: "value_example")], permissions: ["permissions_example"])]), configuration: "TODO") // PatchReactorRequest | 

ReactorsAPI.patch(id: id, patchReactorRequest: patchReactorRequest) { (response, error) in
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
 **patchReactorRequest** | [**PatchReactorRequest**](PatchReactorRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/merge-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **react**
```swift
    open class func react(id: UUID, reactRequest: ReactRequest, completion: @escaping (_ data: ReactResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 
let reactRequest = ReactRequest(args: "TODO", callbackUrl: "callbackUrl_example", timeoutMs: 123) // ReactRequest | 

ReactorsAPI.react(id: id, reactRequest: reactRequest) { (response, error) in
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
 **reactRequest** | [**ReactRequest**](ReactRequest.md) |  | 

### Return type

[**ReactResponse**](ReactResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```swift
    open class func update(id: UUID, updateReactorRequest: UpdateReactorRequest, completion: @escaping (_ data: Reactor?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 
let updateReactorRequest = UpdateReactorRequest(name: "name_example", application: Application(id: 123, tenantId: 123, name: "name_example", key: "key_example", type: "type_example", createdBy: 123, createdAt: Date(), modifiedBy: 123, modifiedAt: Date(), expiresAt: Date(), permissions: ["permissions_example"], rules: [AccessRule(description: "description_example", priority: 123, container: "container_example", transform: "transform_example", conditions: [Condition(attribute: "attribute_example", _operator: "_operator_example", value: "value_example")], permissions: ["permissions_example"])]), configuration: "TODO") // UpdateReactorRequest | 

ReactorsAPI.update(id: id, updateReactorRequest: updateReactorRequest) { (response, error) in
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
 **updateReactorRequest** | [**UpdateReactorRequest**](UpdateReactorRequest.md) |  | 

### Return type

[**Reactor**](Reactor.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

