# thingsboard_client.api.ConverterLibraryControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDownlinkConverter**](ConverterLibraryControllerApi.md#getdownlinkconverter) | **GET** /api/converter/library/{integrationType}/{vendorName}/{model}/downlink | Get downlink converter (getDownlinkConverter)
[**getDownlinkConverterMetadata**](ConverterLibraryControllerApi.md#getdownlinkconvertermetadata) | **GET** /api/converter/library/{integrationType}/{vendorName}/{model}/downlink/metadata | Get downlink converter metadata (getDownlinkConverterMetadata)
[**getDownlinkPayload**](ConverterLibraryControllerApi.md#getdownlinkpayload) | **GET** /api/converter/library/{integrationType}/{vendorName}/{model}/downlink/payload | Get downlink payload (getDownlinkPayload)
[**getUplinkConverter**](ConverterLibraryControllerApi.md#getuplinkconverter) | **GET** /api/converter/library/{integrationType}/{vendorName}/{model}/uplink | Get uplink converter (getUplinkConverter)
[**getUplinkConverterMetadata**](ConverterLibraryControllerApi.md#getuplinkconvertermetadata) | **GET** /api/converter/library/{integrationType}/{vendorName}/{model}/uplink/metadata | Get uplink converter metadata (getUplinkConverterMetadata)
[**getUplinkPayload**](ConverterLibraryControllerApi.md#getuplinkpayload) | **GET** /api/converter/library/{integrationType}/{vendorName}/{model}/uplink/payload | Get uplink payload (getUplinkPayload)
[**getVendorModels**](ConverterLibraryControllerApi.md#getvendormodels) | **GET** /api/converter/library/{integrationType}/{vendorName}/models | Get vendor models (getVendorModels)
[**getVendors**](ConverterLibraryControllerApi.md#getvendors) | **GET** /api/converter/library/{integrationType}/vendors | Get vendors (getVendors)


# **getDownlinkConverter**
> String getDownlinkConverter(integrationType, vendorName, model)

Get downlink converter (getDownlinkConverter)

Returns downlink converter body for the vendor, integration type and model

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getConverterLibraryControllerApi();
final IntegrationType integrationType = ; // IntegrationType | 
final String vendorName = vendorName_example; // String | 
final String model = model_example; // String | 

try {
    final response = api.getDownlinkConverter(integrationType, vendorName, model);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConverterLibraryControllerApi->getDownlinkConverter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationType** | [**IntegrationType**](.md)|  | 
 **vendorName** | **String**|  | 
 **model** | **String**|  | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDownlinkConverterMetadata**
> String getDownlinkConverterMetadata(integrationType, vendorName, model)

Get downlink converter metadata (getDownlinkConverterMetadata)

Returns downlink converter metadata for the vendor, integration type and model

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getConverterLibraryControllerApi();
final IntegrationType integrationType = ; // IntegrationType | 
final String vendorName = vendorName_example; // String | 
final String model = model_example; // String | 

try {
    final response = api.getDownlinkConverterMetadata(integrationType, vendorName, model);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConverterLibraryControllerApi->getDownlinkConverterMetadata: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationType** | [**IntegrationType**](.md)|  | 
 **vendorName** | **String**|  | 
 **model** | **String**|  | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDownlinkPayload**
> String getDownlinkPayload(integrationType, vendorName, model)

Get downlink payload (getDownlinkPayload)

Returns payload example for the downlink converter for the vendor, integration type and model

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getConverterLibraryControllerApi();
final IntegrationType integrationType = ; // IntegrationType | 
final String vendorName = vendorName_example; // String | 
final String model = model_example; // String | 

try {
    final response = api.getDownlinkPayload(integrationType, vendorName, model);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConverterLibraryControllerApi->getDownlinkPayload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationType** | [**IntegrationType**](.md)|  | 
 **vendorName** | **String**|  | 
 **model** | **String**|  | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUplinkConverter**
> String getUplinkConverter(integrationType, vendorName, model)

Get uplink converter (getUplinkConverter)

Returns uplink converter body for the vendor, integration type and model

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getConverterLibraryControllerApi();
final IntegrationType integrationType = ; // IntegrationType | 
final String vendorName = vendorName_example; // String | 
final String model = model_example; // String | 

try {
    final response = api.getUplinkConverter(integrationType, vendorName, model);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConverterLibraryControllerApi->getUplinkConverter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationType** | [**IntegrationType**](.md)|  | 
 **vendorName** | **String**|  | 
 **model** | **String**|  | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUplinkConverterMetadata**
> String getUplinkConverterMetadata(integrationType, vendorName, model)

Get uplink converter metadata (getUplinkConverterMetadata)

Returns uplink converter metadata for the vendor, integration type and model

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getConverterLibraryControllerApi();
final IntegrationType integrationType = ; // IntegrationType | 
final String vendorName = vendorName_example; // String | 
final String model = model_example; // String | 

try {
    final response = api.getUplinkConverterMetadata(integrationType, vendorName, model);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConverterLibraryControllerApi->getUplinkConverterMetadata: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationType** | [**IntegrationType**](.md)|  | 
 **vendorName** | **String**|  | 
 **model** | **String**|  | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUplinkPayload**
> String getUplinkPayload(integrationType, vendorName, model)

Get uplink payload (getUplinkPayload)

Returns payload example for the uplink converter for the vendor, integration type and model

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getConverterLibraryControllerApi();
final IntegrationType integrationType = ; // IntegrationType | 
final String vendorName = vendorName_example; // String | 
final String model = model_example; // String | 

try {
    final response = api.getUplinkPayload(integrationType, vendorName, model);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConverterLibraryControllerApi->getUplinkPayload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationType** | [**IntegrationType**](.md)|  | 
 **vendorName** | **String**|  | 
 **model** | **String**|  | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVendorModels**
> BuiltList<Model> getVendorModels(integrationType, vendorName, converterType, page, pageSize, loadImages)

Get vendor models (getVendorModels)

Returns a list of models for the vendor, integration type and converter type

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getConverterLibraryControllerApi();
final IntegrationType integrationType = ; // IntegrationType | 
final String vendorName = vendorName_example; // String | 
final String converterType = converterType_example; // String | 
final int page = 56; // int | 
final int pageSize = 56; // int | 
final bool loadImages = true; // bool | 

try {
    final response = api.getVendorModels(integrationType, vendorName, converterType, page, pageSize, loadImages);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConverterLibraryControllerApi->getVendorModels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationType** | [**IntegrationType**](.md)|  | 
 **vendorName** | **String**|  | 
 **converterType** | **String**|  | [optional] 
 **page** | **int**|  | [optional] [default to 0]
 **pageSize** | **int**|  | [optional] [default to 2147483647]
 **loadImages** | **bool**|  | [optional] [default to true]

### Return type

[**BuiltList&lt;Model&gt;**](Model.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVendors**
> BuiltList<Vendor> getVendors(integrationType, converterType, page, pageSize, loadImages)

Get vendors (getVendors)

Returns a list of vendors for the integration type

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getConverterLibraryControllerApi();
final IntegrationType integrationType = ; // IntegrationType | 
final String converterType = converterType_example; // String | 
final int page = 56; // int | 
final int pageSize = 56; // int | 
final bool loadImages = true; // bool | 

try {
    final response = api.getVendors(integrationType, converterType, page, pageSize, loadImages);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ConverterLibraryControllerApi->getVendors: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationType** | [**IntegrationType**](.md)|  | 
 **converterType** | **String**|  | [optional] 
 **page** | **int**|  | [optional] [default to 0]
 **pageSize** | **int**|  | [optional] [default to 2147483647]
 **loadImages** | **bool**|  | [optional] [default to true]

### Return type

[**BuiltList&lt;Vendor&gt;**](Vendor.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

