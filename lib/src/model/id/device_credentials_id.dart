import 'has_uuid.dart';

class DeviceCredentialsId extends HasUuid {
  DeviceCredentialsId(String? id) : super(id);

  @override
  factory DeviceCredentialsId.fromJson(Map<String, dynamic> json) {
    return HasUuid.fromJson(json, (id) => DeviceCredentialsId(id))
        as DeviceCredentialsId;
  }

  @override
  String toString() {
    return 'DeviceCredentialsId {id: $id}';
  }
}
