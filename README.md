# Basis Theory Swift client library

## Getting Started
* Sign-in to [Basis Theory](https://basistheory.com) and go to [Applications](https://portal.basistheory.com/applications)
* Create a Basis Theory Private Application
* All permissions should be selected
* Paste the API Key into the `BT-API-KEY` variable

## Installation

### Swift Package Manager

#### Via Xcode

Add through Xcode via _File -> Add Packages_. Search for "https://github.com/Basis-Theory/basistheory-swift" and click on "Copy Dependency".

#### Via Package.swift

Add the following line under `dependencies` to your `Package.swift`:

```swift
    .package(url: "https://github.com/Basis-Theory/basistheory-swift", from: "X.X.X"),
```

And add `BasisTheory` as a dependency to your `target`:

```swift
    dependencies: ["BasisTheory", ...],
```

### CocoaPods

Add the following line to your `Podfile` under your `target`:

```
    pod 'BasisTheory'
```

## Documentation for API Endpoints

All URIs are relative to *https://api.basistheory.com*

| Class                | Method                                                                      | HTTP request                                             | Description |
|----------------------|-----------------------------------------------------------------------------|----------------------------------------------------------|-------------|
| *ApplicationsAPI*    | [**callGet**](docs/ApplicationsAPI.md#callget)                              | **GET** /applications                                    |             |
| *ApplicationsAPI*    | [**create**](docs/ApplicationsAPI.md#create)                                | **POST** /applications                                   |             |
| *ApplicationsAPI*    | [**delete**](docs/ApplicationsAPI.md#delete)                                | **DELETE** /applications/{id}                            |             |
| *ApplicationsAPI*    | [**getById**](docs/ApplicationsAPI.md#getbyid)                              | **GET** /applications/{id}                               |             |
| *ApplicationsAPI*    | [**getByKey**](docs/ApplicationsAPI.md#getbykey)                            | **GET** /applications/key                                |             |
| *ApplicationsAPI*    | [**regenerateKey**](docs/ApplicationsAPI.md#regeneratekey)                  | **POST** /applications/{id}/regenerate                   |             |
| *ApplicationsAPI*    | [**update**](docs/ApplicationsAPI.md#update)                                | **PUT** /applications/{id}                               |             |
| *LogsAPI*            | [**callGet**](docs/LogsAPI.md#callget)                                      | **GET** /logs                                            |             |
| *LogsAPI*            | [**getEntityTypes**](docs/LogsAPI.md#getentitytypes)                        | **GET** /logs/entity-types                               |             |
| *PermissionsAPI*     | [**callGet**](docs/PermissionsAPI.md#callget)                               | **GET** /permissions                                     |             |
| *ProxiesAPI*         | [**callGet**](docs/ProxiesAPI.md#callget)                                   | **GET** /proxies                                         |             |
| *ProxiesAPI*         | [**create**](docs/ProxiesAPI.md#create)                                     | **POST** /proxies                                        |             |
| *ProxiesAPI*         | [**delete**](docs/ProxiesAPI.md#delete)                                     | **DELETE** /proxies/{id}                                 |             |
| *ProxiesAPI*         | [**getById**](docs/ProxiesAPI.md#getbyid)                                   | **GET** /proxies/{id}                                    |             |
| *ProxiesAPI*         | [**update**](docs/ProxiesAPI.md#update)                                     | **PUT** /proxies/{id}                                    |             |
| *ReactorFormulasAPI* | [**callGet**](docs/ReactorFormulasAPI.md#callget)                           | **GET** /reactor-formulas                                |             |
| *ReactorFormulasAPI* | [**create**](docs/ReactorFormulasAPI.md#create)                             | **POST** /reactor-formulas                               |             |
| *ReactorFormulasAPI* | [**delete**](docs/ReactorFormulasAPI.md#delete)                             | **DELETE** /reactor-formulas/{id}                        |             |
| *ReactorFormulasAPI* | [**getById**](docs/ReactorFormulasAPI.md#getbyid)                           | **GET** /reactor-formulas/{id}                           |             |
| *ReactorFormulasAPI* | [**update**](docs/ReactorFormulasAPI.md#update)                             | **PUT** /reactor-formulas/{id}                           |             |
| *ReactorsAPI*        | [**callGet**](docs/ReactorsAPI.md#callget)                                  | **GET** /reactors                                        |             |
| *ReactorsAPI*        | [**create**](docs/ReactorsAPI.md#create)                                    | **POST** /reactors                                       |             |
| *ReactorsAPI*        | [**delete**](docs/ReactorsAPI.md#delete)                                    | **DELETE** /reactors/{id}                                |             |
| *ReactorsAPI*        | [**getById**](docs/ReactorsAPI.md#getbyid)                                  | **GET** /reactors/{id}                                   |             |
| *ReactorsAPI*        | [**react**](docs/ReactorsAPI.md#react)                                      | **POST** /reactors/{id}/react                            |             |
| *ReactorsAPI*        | [**update**](docs/ReactorsAPI.md#update)                                    | **PUT** /reactors/{id}                                   |             |
| *TenantsAPI*         | [**callGet**](docs/TenantsAPI.md#callget)                                   | **GET** /tenants/self                                    |             |
| *TenantsAPI*         | [**createInvitation**](docs/TenantsAPI.md#createinvitation)                 | **POST** /tenants/self/invitations                       |             |
| *TenantsAPI*         | [**delete**](docs/TenantsAPI.md#delete)                                     | **DELETE** /tenants/self                                 |             |
| *TenantsAPI*         | [**deleteInvitation**](docs/TenantsAPI.md#deleteinvitation)                 | **DELETE** /tenants/self/invitations/{invitationId}      |             |
| *TenantsAPI*         | [**deleteMember**](docs/TenantsAPI.md#deletemember)                         | **DELETE** /tenants/self/members/{memberId}              |             |
| *TenantsAPI*         | [**getInvitations**](docs/TenantsAPI.md#getinvitations)                     | **GET** /tenants/self/invitations                        |             |
| *TenantsAPI*         | [**getMembers**](docs/TenantsAPI.md#getmembers)                             | **GET** /tenants/self/members                            |             |
| *TenantsAPI*         | [**getTenantOperationReport**](docs/TenantsAPI.md#gettenantoperationreport) | **GET** /tenants/self/reports/operations                 |             |
| *TenantsAPI*         | [**getTenantUsageReport**](docs/TenantsAPI.md#gettenantusagereport)         | **GET** /tenants/self/reports/usage                      |             |
| *TenantsAPI*         | [**resendInvitation**](docs/TenantsAPI.md#resendinvitation)                 | **POST** /tenants/self/invitations/{invitationId}/resend |             |
| *TenantsAPI*         | [**update**](docs/TenantsAPI.md#update)                                     | **PUT** /tenants/self                                    |             |
| *TokenizeAPI*        | [**tokenize**](docs/TokenizeAPI.md#tokenize)                                | **POST** /tokenize                                       |             |
| *TokensAPI*          | [**callGet**](docs/TokensAPI.md#callget)                                    | **GET** /tokens                                          |             |
| *TokensAPI*          | [**create**](docs/TokensAPI.md#create)                                      | **POST** /tokens                                         |             |
| *TokensAPI*          | [**createAssociation**](docs/TokensAPI.md#createassociation)                | **POST** /tokens/{parentId}/children/{childId}           |             |
| *TokensAPI*          | [**createChild**](docs/TokensAPI.md#createchild)                            | **POST** /tokens/{parentId}/children                     |             |
| *TokensAPI*          | [**delete**](docs/TokensAPI.md#delete)                                      | **DELETE** /tokens/{id}                                  |             |
| *TokensAPI*          | [**deleteAssociation**](docs/TokensAPI.md#deleteassociation)                | **DELETE** /tokens/{parentId}/children/{childId}         |             |
| *TokensAPI*          | [**getById**](docs/TokensAPI.md#getbyid)                                    | **GET** /tokens/{id}                                     |             |
| *TokensAPI*          | [**getChildren**](docs/TokensAPI.md#getchildren)                            | **GET** /tokens/{parentId}/children                      |             |
| *TokensAPI*          | [**search**](docs/TokensAPI.md#search)                                      | **POST** /tokens/search                                  |             |
| *TokensAPI*          | [**update**](docs/TokensAPI.md#update)                                      | **PATCH** /tokens/{id}                                   |             |

## Documentation For Models

 - [AccessRule](docs/AccessRule.md)
 - [Application](docs/Application.md)
 - [ApplicationPaginatedList](docs/ApplicationPaginatedList.md)
 - [CreateApplicationRequest](docs/CreateApplicationRequest.md)
 - [CreateProxyRequest](docs/CreateProxyRequest.md)
 - [CreateReactorFormulaRequest](docs/CreateReactorFormulaRequest.md)
 - [CreateReactorRequest](docs/CreateReactorRequest.md)
 - [CreateTenantInvitationRequest](docs/CreateTenantInvitationRequest.md)
 - [CreateTokenRequest](docs/CreateTokenRequest.md)
 - [CreateTokenResponse](docs/CreateTokenResponse.md)
 - [EncryptionKey](docs/EncryptionKey.md)
 - [EncryptionMetadata](docs/EncryptionMetadata.md)
 - [GetApplications](docs/GetApplications.md)
 - [GetLogs](docs/GetLogs.md)
 - [GetPermissions](docs/GetPermissions.md)
 - [GetProxies](docs/GetProxies.md)
 - [GetReactorFormulas](docs/GetReactorFormulas.md)
 - [GetReactors](docs/GetReactors.md)
 - [GetTenantInvitations](docs/GetTenantInvitations.md)
 - [GetTenantMembers](docs/GetTenantMembers.md)
 - [GetTokens](docs/GetTokens.md)
 - [Log](docs/Log.md)
 - [LogEntityType](docs/LogEntityType.md)
 - [LogPaginatedList](docs/LogPaginatedList.md)
 - [MonthlyActiveTokenHistory](docs/MonthlyActiveTokenHistory.md)
 - [Pagination](docs/Pagination.md)
 - [Permission](docs/Permission.md)
 - [Privacy](docs/Privacy.md)
 - [ProblemDetails](docs/ProblemDetails.md)
 - [Proxy](docs/Proxy.md)
 - [ProxyPaginatedList](docs/ProxyPaginatedList.md)
 - [ReactRequest](docs/ReactRequest.md)
 - [ReactResponse](docs/ReactResponse.md)
 - [Reactor](docs/Reactor.md)
 - [ReactorFormula](docs/ReactorFormula.md)
 - [ReactorFormulaConfiguration](docs/ReactorFormulaConfiguration.md)
 - [ReactorFormulaPaginatedList](docs/ReactorFormulaPaginatedList.md)
 - [ReactorFormulaRequestParameter](docs/ReactorFormulaRequestParameter.md)
 - [ReactorPaginatedList](docs/ReactorPaginatedList.md)
 - [SearchTokensRequest](docs/SearchTokensRequest.md)
 - [StringStringKeyValuePair](docs/StringStringKeyValuePair.md)
 - [Tenant](docs/Tenant.md)
 - [TenantInvitationResponse](docs/TenantInvitationResponse.md)
 - [TenantInvitationResponsePaginatedList](docs/TenantInvitationResponsePaginatedList.md)
 - [TenantInvitationStatus](docs/TenantInvitationStatus.md)
 - [TenantMemberResponse](docs/TenantMemberResponse.md)
 - [TenantMemberResponsePaginatedList](docs/TenantMemberResponsePaginatedList.md)
 - [TenantUsageReport](docs/TenantUsageReport.md)
 - [Token](docs/Token.md)
 - [TokenMetrics](docs/TokenMetrics.md)
 - [TokenPaginatedList](docs/TokenPaginatedList.md)
 - [TokenReport](docs/TokenReport.md)
 - [UpdateApplicationRequest](docs/UpdateApplicationRequest.md)
 - [UpdatePrivacy](docs/UpdatePrivacy.md)
 - [UpdateProxyRequest](docs/UpdateProxyRequest.md)
 - [UpdateReactorFormulaRequest](docs/UpdateReactorFormulaRequest.md)
 - [UpdateReactorRequest](docs/UpdateReactorRequest.md)
 - [UpdateTenantRequest](docs/UpdateTenantRequest.md)
 - [UpdateTokenRequest](docs/UpdateTokenRequest.md)
 - [User](docs/User.md)
 - [ValidationProblemDetails](docs/ValidationProblemDetails.md)
