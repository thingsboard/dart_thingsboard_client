import 'has_uuid.dart';

class AdminSettingsId extends HasUuid {
  AdminSettingsId(String? id) : super(id);

  @override
  factory AdminSettingsId.fromJson(Map<String, dynamic> json) {
    return HasUuid.fromJson(json, (id) => AdminSettingsId(id))
        as AdminSettingsId;
  }

  @override
  String toString() {
    return 'AdminSettingsId {id: $id}';
  }
}
