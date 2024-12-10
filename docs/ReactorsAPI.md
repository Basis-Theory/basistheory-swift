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
[**reactAsync**](ReactorsAPI.md#reactasync) | **POST** /reactors/{id}/react-async | 
[**resultGetById**](ReactorsAPI.md#resultgetbyid) | **GET** /reactors/{id}/results/{requestId} | 
[**update**](ReactorsAPI.md#update) | **PUT** /reactors/{id} | 


# **callGet**
```swift
    open class func callGet(id: [UUID]? = nil, name: String? = nil, page: Int? = nil, start: String? = nil, size: Int? = nil, completion: @escaping (_ data: ReactorPaginatedList?, _ error: Error?) -> Void)
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

ReactorsAPI.callGet(id: id, name: name, page: page, start: start, size: size) { (response, error) in
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

let createReactorRequest = CreateReactorRequest(name: "name_example", code: "code_example", application: Application(id: 123, tenantId: 123, name: "name_example", key: "key_example", keys: [ApplicationKey(id: 123, key: "key_example", version: "version_example", createdBy: 123, createdAt: Date())], type: "type_example", createdBy: 123, createdAt: Date(), modifiedBy: 123, modifiedAt: Date(), expiresAt: Date(), permissions: ["permissions_example"], rules: [AccessRule(description: "description_example", priority: 123, container: "container_example", transform: "transform_example", conditions: [Condition(attribute: "attribute_example", _operator: "_operator_example", value: "value_example")], permissions: ["permissions_example"])]), configuration: "TODO") // CreateReactorRequest | 

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
let patchReactorRequest = PatchReactorRequest(name: "name_example", application: Application(id: 123, tenantId: 123, name: "name_example", key: "key_example", keys: [ApplicationKey(id: 123, key: "key_example", version: "version_example", createdBy: 123, createdAt: Date())], type: "type_example", createdBy: 123, createdAt: Date(), modifiedBy: 123, modifiedAt: Date(), expiresAt: Date(), permissions: ["permissions_example"], rules: [AccessRule(description: "description_example", priority: 123, container: "container_example", transform: "transform_example", conditions: [Condition(attribute: "attribute_example", _operator: "_operator_example", value: "value_example")], permissions: ["permissions_example"])]), code: "code_example", configuration: "TODO") // PatchReactorRequest | 

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
let reactRequest = ReactRequest(args: 123, callbackUrl: "callbackUrl_example") // ReactRequest | 

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

# **reactAsync**
```swift
    open class func reactAsync(id: UUID, reactRequestAsync: ReactRequestAsync, completion: @escaping (_ data: AsyncReactResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 
let reactRequestAsync = ReactRequestAsync(args: 123) // ReactRequestAsync | 

ReactorsAPI.reactAsync(id: id, reactRequestAsync: reactRequestAsync) { (response, error) in
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
 **reactRequestAsync** | [**ReactRequestAsync**](ReactRequestAsync.md) |  | 

### Return type

[**AsyncReactResponse**](AsyncReactResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resultGetById**
```swift
    open class func resultGetById(id: UUID, requestId: UUID, completion: @escaping (_ data: JSONValue?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 
let requestId = 987 // UUID | 

ReactorsAPI.resultGetById(id: id, requestId: requestId) { (response, error) in
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
 **requestId** | **UUID** |  | 

### Return type

**JSONValue**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
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
let updateReactorRequest = UpdateReactorRequest(name: "name_example", application: Application(id: 123, tenantId: 123, name: "name_example", key: "key_example", keys: [ApplicationKey(id: 123, key: "key_example", version: "version_example", createdBy: 123, createdAt: Date())], type: "type_example", createdBy: 123, createdAt: Date(), modifiedBy: 123, modifiedAt: Date(), expiresAt: Date(), permissions: ["permissions_example"], rules: [AccessRule(description: "description_example", priority: 123, container: "container_example", transform: "transform_example", conditions: [Condition(attribute: "attribute_example", _operator: "_operator_example", value: "value_example")], permissions: ["permissions_example"])]), code: "code_example", configuration: "TODO") // UpdateReactorRequest | 

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

