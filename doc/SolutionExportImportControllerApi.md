# thingsboard_client.api.SolutionExportImportControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exportSolution**](SolutionExportImportControllerApi.md#exportsolution) | **POST** /api/solution/export | Export Solution (exportSolution)
[**importSolution**](SolutionExportImportControllerApi.md#importsolution) | **POST** /api/solution/import | Import Solution (importSolution)
[**validateSolution**](SolutionExportImportControllerApi.md#validatesolution) | **POST** /api/solution/validate | Validate Solution (validateSolution)


# **exportSolution**
> SolutionExportResponse exportSolution(solutionExportRequest)

Export Solution (exportSolution)

Exports a set of entities as a portable solution package. The request specifies entities to include via 'internalIds' (server-internal UUIDs) and/or 'externalIds' (looked up by the entity's stored externalId within the current tenant); at least one of the two collections must be non-empty, and entities reached via both sides are deduplicated. Optional export settings control inclusion of relations, attributes, and credentials. All resolved entities must belong to the current tenant. The response contains the solution data (entities grouped by type) and any dependency warnings (e.g. when an exported device profile references a rule chain that was not included in the export). The solution data can later be imported into the same or a different tenant via the import endpoint.  Available for users with 'TENANT_ADMIN' authority. Requires VERSION_CONTROL WRITE permission.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSolutionExportImportControllerApi();
final SolutionExportRequest solutionExportRequest = ; // SolutionExportRequest | Export request with internal and/or external entity IDs and optional settings.

try {
    final response = api.exportSolution(solutionExportRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SolutionExportImportControllerApi->exportSolution: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **solutionExportRequest** | [**SolutionExportRequest**](SolutionExportRequest.md)| Export request with internal and/or external entity IDs and optional settings. | 

### Return type

[**SolutionExportResponse**](SolutionExportResponse.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importSolution**
> SolutionImportResult importSolution(solutionData)

Import Solution (importSolution)

Imports a solution package into the current tenant. Before importing, the endpoint checks for name conflicts with existing entities in the tenant. If name conflicts are detected, the import is rejected with HTTP 409 (Conflict). The import is transactional — if any entity fails to import, all changes are rolled back (all-or-nothing). Entities are imported in dependency order with a two-pass resolution for circular references (e.g. rule chains referencing each other).  Available for users with 'TENANT_ADMIN' authority. Requires VERSION_CONTROL WRITE permission.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSolutionExportImportControllerApi();
final SolutionData solutionData = ; // SolutionData | Solution data exported via the export endpoint.

try {
    final response = api.importSolution(solutionData);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SolutionExportImportControllerApi->importSolution: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **solutionData** | [**SolutionData**](SolutionData.md)| Solution data exported via the export endpoint. | 

### Return type

[**SolutionImportResult**](SolutionImportResult.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateSolution**
> SolutionValidationResult validateSolution(solutionData)

Validate Solution (validateSolution)

Performs a dry-run validation of a solution without modifying any data. Detects duplicate entities within the solution, identifies name conflicts with existing entities in the current tenant, and reports missing dependency references (e.g. a device profile referencing an absent rule chain). The result indicates whether the solution is safe to import (valid=true) and lists any conflicts or warnings.  Available for users with 'TENANT_ADMIN' authority. Requires VERSION_CONTROL WRITE permission.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSolutionExportImportControllerApi();
final SolutionData solutionData = ; // SolutionData | Solution data to validate.

try {
    final response = api.validateSolution(solutionData);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SolutionExportImportControllerApi->validateSolution: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **solutionData** | [**SolutionData**](SolutionData.md)| Solution data to validate. | 

### Return type

[**SolutionValidationResult**](SolutionValidationResult.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

