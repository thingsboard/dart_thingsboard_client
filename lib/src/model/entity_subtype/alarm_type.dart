import 'package:thingsboard_client/src/model/entity_subtype/entity_sub_type.dart';

class AlarmType extends EntitySubType {
  AlarmType(super.entityType, super.tenantId, super.type);
  @override
  factory AlarmType.fromJson(Map<String, dynamic> json) =>
      EntitySubType.fromJson(json) as AlarmType;
}
