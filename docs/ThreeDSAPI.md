# ThreeDSAPI

All URIs are relative to *https://api.basistheory.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**threeDSAuthenticateSession**](ThreeDSAPI.md#threedsauthenticatesession) | **POST** /3ds/sessions/{sessionId}/authenticate | 
[**threeDSGetChallengeResult**](ThreeDSAPI.md#threedsgetchallengeresult) | **GET** /3ds/sessions/{sessionId}/challenge-result | 


# **threeDSAuthenticateSession**
```swift
    open class func threeDSAuthenticateSession(sessionId: UUID, authenticateThreeDSSessionRequest: AuthenticateThreeDSSessionRequest? = nil, completion: @escaping (_ data: ThreeDSAuthentication?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let sessionId = 987 // UUID | 
let authenticateThreeDSSessionRequest = AuthenticateThreeDSSessionRequest(authenticationCategory: "authenticationCategory_example", authenticationType: "authenticationType_example", challengePreference: "challengePreference_example", purchaseInfo: ThreeDSPurchaseInfo(amount: "amount_example", currency: "currency_example", exponent: "exponent_example", date: "date_example", transactionType: "transactionType_example", installmentCount: "installmentCount_example", recurringExpiration: "recurringExpiration_example", recurringFrequency: "recurringFrequency_example"), merchantInfo: ThreeDSMerchantInfo(mid: "mid_example", acquirerBin: "acquirerBin_example", name: "name_example", countryCode: "countryCode_example", categoryCode: "categoryCode_example", riskInfo: ThreeDSMerchantRiskInfo(deliveryEmail: "deliveryEmail_example", deliveryTimeFrame: "deliveryTimeFrame_example", giftCardAmount: "giftCardAmount_example", giftCardCount: "giftCardCount_example", giftCardCurrency: "giftCardCurrency_example", preOrderPurchase: false, preOrderDate: "preOrderDate_example", reorderedPurchase: false, shippingMethod: "shippingMethod_example")), requestorInfo: ThreeDSRequestorInfo(id: "id_example", name: "name_example", url: "url_example"), cardholderInfo: ThreeDSCardholderInfo(accountId: "accountId_example", accountType: "accountType_example", accountInfo: ThreeDSCardholderAccountInfo(accountAge: "accountAge_example", accountLastChanged: "accountLastChanged_example", accountChangeDate: "accountChangeDate_example", accountCreatedDate: "accountCreatedDate_example", accountPwdLastChanged: "accountPwdLastChanged_example", accountPwdChangeDate: "accountPwdChangeDate_example", purchaseCountHalfYear: "purchaseCountHalfYear_example", transactionCountDay: "transactionCountDay_example", paymentAccountAge: "paymentAccountAge_example", transactionCountYear: "transactionCountYear_example", paymentAccountCreated: "paymentAccountCreated_example", shippingAddressFirstUsed: "shippingAddressFirstUsed_example", shippingAddressUsageDate: "shippingAddressUsageDate_example", shippingAccountNameMatch: false, suspiciousActivityObserved: false), authenticationInfo: ThreeDSCardholderAuthenticationInfo(method: "method_example", timestamp: "timestamp_example", data: "data_example"), priorAuthenticationInfo: ThreeDSPriorAuthenticationInfo(method: "method_example", timestamp: "timestamp_example", referenceId: "referenceId_example", data: "data_example"), name: "name_example", email: "email_example", phoneNumber: ThreeDSCardholderPhoneNumber(countryCode: "countryCode_example", number: "number_example"), mobilePhoneNumber: nil, workPhoneNumber: nil, billingShippingAddressMatch: "billingShippingAddressMatch_example", billingAddress: ThreeDSAddress(line1: "line1_example", line2: "line2_example", line3: "line3_example", postalCode: "postalCode_example", city: "city_example", stateCode: "stateCode_example", countryCode: "countryCode_example"), shippingAddress: nil), broadcastInfo: "TODO", messageExtensions: [ThreeDSMessageExtension(id: "id_example", name: "name_example", critical: false, data: "TODO")]) // AuthenticateThreeDSSessionRequest |  (optional)

ThreeDSAPI.threeDSAuthenticateSession(sessionId: sessionId, authenticateThreeDSSessionRequest: authenticateThreeDSSessionRequest) { (response, error) in
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
 **sessionId** | **UUID** |  | 
 **authenticateThreeDSSessionRequest** | [**AuthenticateThreeDSSessionRequest**](AuthenticateThreeDSSessionRequest.md) |  | [optional] 

### Return type

[**ThreeDSAuthentication**](ThreeDSAuthentication.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **threeDSGetChallengeResult**
```swift
    open class func threeDSGetChallengeResult(sessionId: UUID, completion: @escaping (_ data: ThreeDSAuthentication?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BasisTheory

let sessionId = 987 // UUID | 

ThreeDSAPI.threeDSGetChallengeResult(sessionId: sessionId) { (response, error) in
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
 **sessionId** | **UUID** |  | 

### Return type

[**ThreeDSAuthentication**](ThreeDSAuthentication.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

