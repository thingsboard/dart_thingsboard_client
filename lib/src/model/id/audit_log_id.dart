import 'has_uuid.dart';

class AuditLogId extends HasUuid {
  AuditLogId(String? id) : super(id);

  @override
  factory AuditLogId.fromJson(Map<String, dynamic> json) {
    return HasUuid.fromJson(json, (id) => AuditLogId(id)) as AuditLogId;
  }

  @override
  String toString() {
    return 'AuditLogId {id: $id}';
  }
}
