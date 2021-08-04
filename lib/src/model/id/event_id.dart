import 'has_uuid.dart';

class EventId extends HasUuid {
  EventId(String? id) : super(id);

  @override
  factory EventId.fromJson(Map<String, dynamic> json) {
    return HasUuid.fromJson(json, (id) => EventId(id)) as EventId;
  }

  @override
  String toString() {
    return 'EventId {id: $id}';
  }
}
