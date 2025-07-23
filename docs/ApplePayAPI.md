# ApplePayAPI

All URIs are relative to *https://api.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applePayDomainDeregistration**](ApplePayAPI.md#applepaydomainderegistration) | **POST** /connections/apple-pay/domain-deregistration | 
[**applePayDomainRegistration**](ApplePayAPI.md#applepaydomainregistration) | **POST** /connections/apple-pay/domain-registration | 
[**applePayGetDomainRegistration**](ApplePayAPI.md#applepaygetdomainregistration) | **GET** /connections/apple-pay/domain-registration | 
[**applePayPutDomainRegistration**](ApplePayAPI.md#applepayputdomainregistration) | **PUT** /connections/apple-pay/domain-registration | 
[**applePaySession**](ApplePayAPI.md#applepaysession) | **POST** /connections/apple-pay/session | 
[**applePayTokenize**](ApplePayAPI.md#applepaytokenize) | **POST** /connections/apple-pay/tokenize | 
[**payCreate**](ApplePayAPI.md#paycreate) | **POST** /apple-pay | 
[**payDomainDeregistration**](ApplePayAPI.md#paydomainderegistration) | **POST** /apple-pay/domain-deregistration | 
[**payDomainRegistration**](ApplePayAPI.md#paydomainregistration) | **POST** /apple-pay/domain-registration | 
[**payDomainRegistrationAll**](ApplePayAPI.md#paydomainregistrationall) | **PUT** /apple-pay/domain-registration | 
[**payGet**](ApplePayAPI.md#payget) | **GET** /apple-pay/{id} | 
[**payGetDomainRegistration**](ApplePayAPI.md#paygetdomainregistration) | **GET** /apple-pay/domain-registration | 
[**paySession**](ApplePayAPI.md#paysession) | **POST** /apple-pay/session | 
[**payUnlink**](ApplePayAPI.md#payunlink) | **POST** /apple-pay/{id}/unlink | 


# **applePayDomainDeregistration**
```swift
    open class func applePayDomainDeregistration(applePayDomainDeregistrationRequest: ApplePayDomainDeregistrationRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let applePayDomainDeregistrationRequest = ApplePayDomainDeregistrationRequest(domain: "domain_example") // ApplePayDomainDeregistrationRequest |  (optional)

ApplePayAPI.applePayDomainDeregistration(applePayDomainDeregistrationRequest: applePayDomainDeregistrationRequest) { (response, error) in
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

ApplePayAPI.applePayDomainRegistration(applePayDomainRegistrationRequest: applePayDomainRegistrationRequest) { (response, error) in
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


ApplePayAPI.applePayGetDomainRegistration() { (response, error) in
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

ApplePayAPI.applePayPutDomainRegistration(applePayDomainRegistrationListRequest: applePayDomainRegistrationListRequest) { (response, error) in
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

ApplePayAPI.applePaySession(applePaySessionRequest: applePaySessionRequest) { (response, error) in
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

ApplePayAPI.applePayTokenize(applePayTokenizeRequest: applePayTokenizeRequest) { (response, error) in
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

# **payCreate**
```swift
    open class func payCreate(applePayCreateRequest: ApplePayCreateRequest? = nil, completion: @escaping (_ data: ApplePayCreateResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let applePayCreateRequest = ApplePayCreateRequest(expiresAt: "expiresAt_example", applePaymentData: ApplePayMethodToken(paymentData: PaymentData(data: "data_example", signature: "signature_example", header: Header(publicKeyHash: "publicKeyHash_example", ephemeralPublicKey: "ephemeralPublicKey_example", transactionId: "transactionId_example", applicationData: "applicationData_example"), version: "version_example"), transactionIdentifier: "transactionIdentifier_example")) // ApplePayCreateRequest |  (optional)

ApplePayAPI.payCreate(applePayCreateRequest: applePayCreateRequest) { (response, error) in
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
 **applePayCreateRequest** | [**ApplePayCreateRequest**](ApplePayCreateRequest.md) |  | [optional] 

### Return type

[**ApplePayCreateResponse**](ApplePayCreateResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payDomainDeregistration**
```swift
    open class func payDomainDeregistration(applePayDomainDeregistrationRequest: ApplePayDomainDeregistrationRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let applePayDomainDeregistrationRequest = ApplePayDomainDeregistrationRequest(domain: "domain_example") // ApplePayDomainDeregistrationRequest |  (optional)

ApplePayAPI.payDomainDeregistration(applePayDomainDeregistrationRequest: applePayDomainDeregistrationRequest) { (response, error) in
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

# **payDomainRegistration**
```swift
    open class func payDomainRegistration(applePayDomainRegistrationRequest: ApplePayDomainRegistrationRequest? = nil, completion: @escaping (_ data: ApplePayDomainRegistrationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let applePayDomainRegistrationRequest = ApplePayDomainRegistrationRequest(domain: "domain_example") // ApplePayDomainRegistrationRequest |  (optional)

ApplePayAPI.payDomainRegistration(applePayDomainRegistrationRequest: applePayDomainRegistrationRequest) { (response, error) in
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

# **payDomainRegistrationAll**
```swift
    open class func payDomainRegistrationAll(applePayDomainRegistrationListRequest: ApplePayDomainRegistrationListRequest? = nil, completion: @escaping (_ data: ApplePayDomainRegistrationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let applePayDomainRegistrationListRequest = ApplePayDomainRegistrationListRequest(domains: ["domains_example"]) // ApplePayDomainRegistrationListRequest |  (optional)

ApplePayAPI.payDomainRegistrationAll(applePayDomainRegistrationListRequest: applePayDomainRegistrationListRequest) { (response, error) in
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

# **payGet**
```swift
    open class func payGet(id: UUID, completion: @escaping (_ data: ApplePayToken?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 

ApplePayAPI.payGet(id: id) { (response, error) in
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

[**ApplePayToken**](ApplePayToken.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payGetDomainRegistration**
```swift
    open class func payGetDomainRegistration(completion: @escaping (_ data: ApplePayDomainRegistrationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory


ApplePayAPI.payGetDomainRegistration() { (response, error) in
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

# **paySession**
```swift
    open class func paySession(applePaySessionRequest: ApplePaySessionRequest? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let applePaySessionRequest = ApplePaySessionRequest(validationUrl: "validationUrl_example", displayName: "displayName_example", domain: "domain_example") // ApplePaySessionRequest |  (optional)

ApplePayAPI.paySession(applePaySessionRequest: applePaySessionRequest) { (response, error) in
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

# **payUnlink**
```swift
    open class func payUnlink(id: UUID, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let id = 987 // UUID | 

ApplePayAPI.payUnlink(id: id) { (response, error) in
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

**String**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

