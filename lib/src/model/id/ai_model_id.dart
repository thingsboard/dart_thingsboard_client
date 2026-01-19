import 'package:thingsboard_client/thingsboard_client.dart';

class AiModelId extends EntityId {
  AiModelId(String id) : super(EntityType.AI_MODEL,id);

  @override
  factory AiModelId.fromJson(Map<String, dynamic> json) {
   return EntityId.fromJson(json) as AiModelId;
  }

  @override
  String toString() {
    return 'AiModelId {id: $id}';
  }
}
