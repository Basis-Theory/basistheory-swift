# GooglePayAPI

All URIs are relative to *https://api.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**payTokenize**](GooglePayAPI.md#paytokenize) | **POST** /connections/google-pay/tokenize | 


# **payTokenize**
```swift
    open class func payTokenize(googlePayTokenizeRequest: GooglePayTokenizeRequest? = nil, completion: @escaping (_ data: GooglePayTokenizeResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let googlePayTokenizeRequest = GooglePayTokenizeRequest(googlePaymentMethodToken: GooglePaymentMethodToken(protocolVersion: "protocolVersion_example", signature: "signature_example", intermediateSigningKey: IntermediateSigningKey(signedKey: "signedKey_example", signatures: ["signatures_example"]), signedMessage: "signedMessage_example")) // GooglePayTokenizeRequest |  (optional)

GooglePayAPI.payTokenize(googlePayTokenizeRequest: googlePayTokenizeRequest) { (response, error) in
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
 **googlePayTokenizeRequest** | [**GooglePayTokenizeRequest**](GooglePayTokenizeRequest.md) |  | [optional] 

### Return type

[**GooglePayTokenizeResponse**](GooglePayTokenizeResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

