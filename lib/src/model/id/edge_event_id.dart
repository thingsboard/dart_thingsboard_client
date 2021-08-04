import 'has_uuid.dart';

class EdgeEventId extends HasUuid {
  EdgeEventId(String? id) : super(id);

  @override
  factory EdgeEventId.fromJson(Map<String, dynamic> json) {
    return HasUuid.fromJson(json, (id) => EdgeEventId(id)) as EdgeEventId;
  }

  @override
  String toString() {
    return 'EdgeEventId {id: $id}';
  }
}
