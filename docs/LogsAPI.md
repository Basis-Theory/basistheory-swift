# LogsAPI

All URIs are relative to *https://api.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](LogsAPI.md#callget) | **GET** /logs | 
[**getEntityTypes**](LogsAPI.md#getentitytypes) | **GET** /logs/entity-types | 


# **callGet**
```swift
    open class func callGet(entityType: String? = nil, entityId: String? = nil, startDate: Date? = nil, endDate: Date? = nil, page: Int? = nil, size: Int? = nil, completion: @escaping (_ data: LogPaginatedList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let entityType = "entityType_example" // String |  (optional)
let entityId = "entityId_example" // String |  (optional)
let startDate = Date() // Date |  (optional)
let endDate = Date() // Date |  (optional)
let page = 987 // Int |  (optional)
let size = 987 // Int |  (optional)

LogsAPI.callGet(entityType: entityType, entityId: entityId, startDate: startDate, endDate: endDate, page: page, size: size) { (response, error) in
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
 **entityType** | **String** |  | [optional] 
 **entityId** | **String** |  | [optional] 
 **startDate** | **Date** |  | [optional] 
 **endDate** | **Date** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **size** | **Int** |  | [optional] 

### Return type

[**LogPaginatedList**](LogPaginatedList.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityTypes**
```swift
    open class func getEntityTypes(completion: @escaping (_ data: [LogEntityType]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory


LogsAPI.getEntityTypes() { (response, error) in
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

[**[LogEntityType]**](LogEntityType.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

