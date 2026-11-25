# thingsboard_client.model.OAuth2BasicMapperConfig

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**emailAttributeKey** | **String** | Email attribute key of OAuth2 principal attributes. Must be specified for BASIC mapper type and cannot be specified for GITHUB type | [optional] 
**firstNameAttributeKey** | **String** | First name attribute key | [optional] 
**lastNameAttributeKey** | **String** | Last name attribute key | [optional] 
**tenantNameStrategy** | [**TenantNameStrategyType**](TenantNameStrategyType.md) | Tenant naming strategy. For DOMAIN type, domain for tenant name will be taken from the email (substring before '@') | 
**tenantNamePattern** | **String** | Tenant name pattern for CUSTOM naming strategy. OAuth2 attributes in the pattern can be used by enclosing attribute key in '%{' and '}' | [optional] 
**customerNamePattern** | **String** | Customer name pattern. When creating a user on the first OAuth2 log in, if specified, customer name will be used to create or find existing customer in the platform and assign customerId to the user | [optional] 
**defaultDashboardName** | **String** | Name of the tenant's dashboard to set as default dashboard for newly created user | [optional] 
**alwaysFullScreen** | **bool** | Whether default dashboard should be open in full screen | [optional] 
**parentCustomerNamePattern** | **String** |  | [optional] 
**userGroupsNamePattern** | **BuiltList&lt;String&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


