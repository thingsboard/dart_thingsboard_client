# thingsboard_client.model.DeviceCredentials

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**DeviceCredentialsId**](DeviceCredentialsId.md) | The Id is automatically generated during device creation. Use 'getDeviceCredentialsByDeviceId' to obtain the id based on device id. Use 'updateDeviceCredentials' to update device credentials.  | 
**createdTime** | **int** | Timestamp of the device credentials creation, in milliseconds | [optional] 
**deviceId** | [**DeviceId**](DeviceId.md) | JSON object with the device Id. | 
**credentialsType** | [**DeviceCredentialsType**](DeviceCredentialsType.md) | Type of the credentials | [optional] 
**credentialsId** | **String** | Unique Credentials Id per platform instance. Used to lookup credentials from the database. By default, new access token for your device. Depends on the type of the credentials. | 
**credentialsValue** | **String** | Value of the credentials. Null in case of ACCESS_TOKEN credentials type. Base64 value in case of X509_CERTIFICATE. Complex object in case of MQTT_BASIC and LWM2M_CREDENTIALS | [optional] 
**version** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


