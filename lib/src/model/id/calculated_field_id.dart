
import 'package:thingsboard_client/thingsboard_client.dart';

class CalculatedFieldId extends EntityId {
  CalculatedFieldId(String id) : super(EntityType.CALCULATED_FIELD, id);

  @override
  factory CalculatedFieldId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as CalculatedFieldId;
  }

  @override
  String toString() {
    return 'CalculatedFieldId {id: $id}';
  }
}
