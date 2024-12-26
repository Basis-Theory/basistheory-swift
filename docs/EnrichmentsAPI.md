# EnrichmentsAPI

All URIs are relative to *https://api.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bankAccountVerify**](EnrichmentsAPI.md#bankaccountverify) | **POST** /enrichments/bank-account-verify | 


# **bankAccountVerify**
```swift
    open class func bankAccountVerify(bankVerificationRequest: BankVerificationRequest, completion: @escaping (_ data: BankVerificationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let bankVerificationRequest = BankVerificationRequest(tokenId: "tokenId_example", countryCode: "countryCode_example", routingNumber: "routingNumber_example") // BankVerificationRequest | 

EnrichmentsAPI.bankAccountVerify(bankVerificationRequest: bankVerificationRequest) { (response, error) in
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
 **bankVerificationRequest** | [**BankVerificationRequest**](BankVerificationRequest.md) |  | 

### Return type

[**BankVerificationResponse**](BankVerificationResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

