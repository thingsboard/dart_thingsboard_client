import 'package:thingsboard_client/thingsboard_client.dart';

import 'has_uuid.dart';

class AdminSettingsId extends EntityId {
  AdminSettingsId(String id) : super(EntityType.ADMIN_SETTINGS,id);

  @override
  factory AdminSettingsId.fromJson(Map<String, dynamic> json) {
   return EntityId.fromJson(json) as AdminSettingsId;
  }

  @override
  String toString() {
    return 'AdminSettingsId {id: $id}';
  }
}
