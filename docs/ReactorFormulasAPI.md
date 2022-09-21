# ReactorFormulasAPI

All URIs are relative to *https://api.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ReactorFormulasAPI.md#callget) | **GET** /reactor-formulas | 
[**create**](ReactorFormulasAPI.md#create) | **POST** /reactor-formulas | 
[**delete**](ReactorFormulasAPI.md#delete) | **DELETE** /reactor-formulas/{id} | 
[**getById**](ReactorFormulasAPI.md#getbyid) | **GET** /reactor-formulas/{id} | 
[**update**](ReactorFormulasAPI.md#update) | **PUT** /reactor-formulas/{id} | 


# **callGet**
```swift
    open class func callGet(name: String? = nil, page: Int? = nil, size: Int? = nil, completion: @escaping (_ data: ReactorFormulaPaginatedList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String |  (optional)
let page = 987 // Int |  (optional)
let size = 987 // Int |  (optional)

ReactorFormulasAPI.callGet(name: name, page: page, size: size) { (response, error) in
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
 **name** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **size** | **Int** |  | [optional] 

### Return type

[**ReactorFormulaPaginatedList**](ReactorFormulaPaginatedList.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
```swift
    open class func create(createReactorFormulaRequest: CreateReactorFormulaRequest, completion: @escaping (_ data: ReactorFormula?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createReactorFormulaRequest = CreateReactorFormulaRequest(id: 123, type: "type_example", name: "name_example", description: "description_example", icon: "icon_example", code: "code_example", configuration: [ReactorFormulaConfiguration(name: "name_example", description: "description_example", type: "type_example")], requestParameters: [ReactorFormulaRequestParameter(name: "name_example", description: "description_example", type: "type_example", _optional: false)]) // CreateReactorFormulaRequest | 

ReactorFormulasAPI.create(createReactorFormulaRequest: createReactorFormulaRequest) { (response, error) in
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
 **createReactorFormulaRequest** | [**CreateReactorFormulaRequest**](CreateReactorFormulaRequest.md) |  | 

### Return type

[**ReactorFormula**](ReactorFormula.md)

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
import OpenAPIClient

let id = 987 // UUID | 

ReactorFormulasAPI.delete(id: id) { (response, error) in
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
    open class func getById(id: UUID, completion: @escaping (_ data: ReactorFormula?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 

ReactorFormulasAPI.getById(id: id) { (response, error) in
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

[**ReactorFormula**](ReactorFormula.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```swift
    open class func update(id: UUID, updateReactorFormulaRequest: UpdateReactorFormulaRequest, completion: @escaping (_ data: ReactorFormula?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 
let updateReactorFormulaRequest = UpdateReactorFormulaRequest(type: "type_example", name: "name_example", description: "description_example", icon: "icon_example", code: "code_example", configuration: [ReactorFormulaConfiguration(name: "name_example", description: "description_example", type: "type_example")], requestParameters: [ReactorFormulaRequestParameter(name: "name_example", description: "description_example", type: "type_example", _optional: false)]) // UpdateReactorFormulaRequest | 

ReactorFormulasAPI.update(id: id, updateReactorFormulaRequest: updateReactorFormulaRequest) { (response, error) in
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
 **updateReactorFormulaRequest** | [**UpdateReactorFormulaRequest**](UpdateReactorFormulaRequest.md) |  | 

### Return type

[**ReactorFormula**](ReactorFormula.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

