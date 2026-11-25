# thingsboard_client.model.CustomMenuInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**CustomMenuId**](CustomMenuId.md) |  | [optional] 
**createdTime** | **int** | Entity creation timestamp in milliseconds since Unix epoch | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id that owns the menu. | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id that owns the menu. | [optional] 
**name** | **String** | Custom menu name | 
**scope** | [**CMScope**](CMScope.md) | Custom menu scope. Possible values: SYSTEM, TENANT, CUSTOMER | 
**assigneeType** | [**CMAssigneeType**](CMAssigneeType.md) | Custom menu assignee type. Possible values are: All (all users of specified scope), CUSTOMERS (specified customers), USERS (specified list of users), NO_ASSIGN (no assignees), USER_GROUPS (user groups) | 
**userGroupNames** | **BuiltList&lt;String&gt;** | User group names menu is applied to | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


