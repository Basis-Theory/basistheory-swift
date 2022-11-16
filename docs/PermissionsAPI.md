# PermissionsAPI

All URIs are relative to *https://api-dev.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](PermissionsAPI.md#callget) | **GET** /permissions | 


# **callGet**
```swift
    open class func callGet(applicationType: String? = nil, version: Int? = nil, completion: @escaping (_ data: [Permission]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let applicationType = "applicationType_example" // String |  (optional)
let version = 987 // Int |  (optional)

PermissionsAPI.callGet(applicationType: applicationType, version: version) { (response, error) in
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
 **applicationType** | **String** |  | [optional] 
 **version** | **Int** |  | [optional] 

### Return type

[**[Permission]**](Permission.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

