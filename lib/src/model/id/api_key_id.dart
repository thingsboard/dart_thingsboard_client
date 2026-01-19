import 'package:thingsboard_client/thingsboard_client.dart';

class ApiKeyId extends EntityId {
  ApiKeyId(String id) : super(EntityType.API_KEY,id);

  @override
  factory ApiKeyId.fromJson(Map<String, dynamic> json) {
   return EntityId.fromJson(json) as ApiKeyId;
  }

  @override
  String toString() {
    return 'ApiKeyId {id: $id}';
  }
}
