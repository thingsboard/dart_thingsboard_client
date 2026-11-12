# thingsboard_client.model.AlarmCommentInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**AlarmCommentId**](AlarmCommentId.md) | JSON object with the alarm comment Id. Specify this field to update the alarm comment. Referencing non-existing alarm Id will cause error. Omit this field to create new alarm. | [optional] 
**createdTime** | **int** | Timestamp of the alarm comment creation, in milliseconds | [optional] 
**alarmId** | [**AlarmId**](AlarmId.md) | JSON object with Alarm id. | [optional] 
**userId** | [**UserId**](UserId.md) | JSON object with User id. | [optional] 
**type** | [**AlarmCommentType**](AlarmCommentType.md) | Defines origination of comment. System type means comment was created by TB. OTHER type means comment was created by user. | [optional] 
**comment** | [**JsonObject**](.md) | JSON object with text of comment. | [optional] 
**firstName** | **String** | User first name | [optional] 
**lastName** | **String** | User last name | [optional] 
**email** | **String** | User email address | [optional] 
**name** | **String** | representing comment text | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


