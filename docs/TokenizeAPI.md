# TokenizeAPI

All URIs are relative to *https://api-dev.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tokenize**](TokenizeAPI.md#tokenize) | **POST** /tokenize | 


# **tokenize**
```swift
    open class func tokenize(body: AnyCodable? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let body = TODO // AnyCodable |  (optional)

TokenizeAPI.tokenize(body: body) { (response, error) in
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
 **body** | **AnyCodable** |  | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

