# ConnectionsAPI

All URIs are relative to *https://api.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applePayDomainDeregistration**](ConnectionsAPI.md#applepaydomainderegistration) | **POST** /connections/apple-pay/domain-deregistration | 
[**applePayDomainRegistration**](ConnectionsAPI.md#applepaydomainregistration) | **POST** /connections/apple-pay/domain-registration | 
[**applePayGetDomainRegistration**](ConnectionsAPI.md#applepaygetdomainregistration) | **GET** /connections/apple-pay/domain-registration | 
[**applePayPutDomainRegistration**](ConnectionsAPI.md#applepayputdomainregistration) | **PUT** /connections/apple-pay/domain-registration | 
[**applePaySession**](ConnectionsAPI.md#applepaysession) | **POST** /connections/apple-pay/session | 
[**applePayTokenize**](ConnectionsAPI.md#applepaytokenize) | **POST** /connections/apple-pay/tokenize | 
[**payTokenize**](ConnectionsAPI.md#paytokenize) | **POST** /connections/google-pay/tokenize | 


# **applePayDomainDeregistration**
```swift
    open class func applePayDomainDeregistration(applePayDomainDeregistrationRequest: ApplePayDomainDeregistrationRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let applePayDomainDeregistrationRequest = ApplePayDomainDeregistrationRequest(domain: "domain_example") // ApplePayDomainDeregistrationRequest |  (optional)

ConnectionsAPI.applePayDomainDeregistration(applePayDomainDeregistrationRequest: applePayDomainDeregistrationRequest) { (response, error) in
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
 **applePayDomainDeregistrationRequest** | [**ApplePayDomainDeregistrationRequest**](ApplePayDomainDeregistrationRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **applePayDomainRegistration**
```swift
    open class func applePayDomainRegistration(applePayDomainRegistrationRequest: ApplePayDomainRegistrationRequest? = nil, completion: @escaping (_ data: ApplePayDomainRegistrationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let applePayDomainRegistrationRequest = ApplePayDomainRegistrationRequest(domain: "domain_example") // ApplePayDomainRegistrationRequest |  (optional)

ConnectionsAPI.applePayDomainRegistration(applePayDomainRegistrationRequest: applePayDomainRegistrationRequest) { (response, error) in
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
 **applePayDomainRegistrationRequest** | [**ApplePayDomainRegistrationRequest**](ApplePayDomainRegistrationRequest.md) |  | [optional] 

### Return type

[**ApplePayDomainRegistrationResponse**](ApplePayDomainRegistrationResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **applePayGetDomainRegistration**
```swift
    open class func applePayGetDomainRegistration(completion: @escaping (_ data: ApplePayDomainRegistrationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory


ConnectionsAPI.applePayGetDomainRegistration() { (response, error) in
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

[**ApplePayDomainRegistrationResponse**](ApplePayDomainRegistrationResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **applePayPutDomainRegistration**
```swift
    open class func applePayPutDomainRegistration(applePayDomainRegistrationListRequest: ApplePayDomainRegistrationListRequest? = nil, completion: @escaping (_ data: ApplePayDomainRegistrationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let applePayDomainRegistrationListRequest = ApplePayDomainRegistrationListRequest(domains: ["domains_example"]) // ApplePayDomainRegistrationListRequest |  (optional)

ConnectionsAPI.applePayPutDomainRegistration(applePayDomainRegistrationListRequest: applePayDomainRegistrationListRequest) { (response, error) in
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
 **applePayDomainRegistrationListRequest** | [**ApplePayDomainRegistrationListRequest**](ApplePayDomainRegistrationListRequest.md) |  | [optional] 

### Return type

[**ApplePayDomainRegistrationResponse**](ApplePayDomainRegistrationResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **applePaySession**
```swift
    open class func applePaySession(applePaySessionRequest: ApplePaySessionRequest? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let applePaySessionRequest = ApplePaySessionRequest(validationUrl: "validationUrl_example", displayName: "displayName_example", domain: "domain_example") // ApplePaySessionRequest |  (optional)

ConnectionsAPI.applePaySession(applePaySessionRequest: applePaySessionRequest) { (response, error) in
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
 **applePaySessionRequest** | [**ApplePaySessionRequest**](ApplePaySessionRequest.md) |  | [optional] 

### Return type

**String**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **applePayTokenize**
```swift
    open class func applePayTokenize(applePayTokenizeRequest: ApplePayTokenizeRequest? = nil, completion: @escaping (_ data: ApplePayTokenizeResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let applePayTokenizeRequest = ApplePayTokenizeRequest(applePaymentMethodToken: ApplePayMethodToken(paymentData: PaymentData(data: "data_example", signature: "signature_example", header: Header(publicKeyHash: "publicKeyHash_example", ephemeralPublicKey: "ephemeralPublicKey_example", transactionId: "transactionId_example", applicationData: "applicationData_example"), version: "version_example"), transactionIdentifier: "transactionIdentifier_example")) // ApplePayTokenizeRequest |  (optional)

ConnectionsAPI.applePayTokenize(applePayTokenizeRequest: applePayTokenizeRequest) { (response, error) in
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
 **applePayTokenizeRequest** | [**ApplePayTokenizeRequest**](ApplePayTokenizeRequest.md) |  | [optional] 

### Return type

[**ApplePayTokenizeResponse**](ApplePayTokenizeResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payTokenize**
```swift
    open class func payTokenize(googlePayTokenizeRequest: GooglePayTokenizeRequest? = nil, completion: @escaping (_ data: GooglePayTokenizeResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let googlePayTokenizeRequest = GooglePayTokenizeRequest(googlePaymentMethodToken: GooglePaymentMethodToken(protocolVersion: "protocolVersion_example", signature: "signature_example", intermediateSigningKey: IntermediateSigningKey(signedKey: "signedKey_example", signatures: ["signatures_example"]), signedMessage: "signedMessage_example")) // GooglePayTokenizeRequest |  (optional)

ConnectionsAPI.payTokenize(googlePayTokenizeRequest: googlePayTokenizeRequest) { (response, error) in
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

