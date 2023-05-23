import 'has_uuid.dart';

class AlarmCommentId extends HasUuid {
  AlarmCommentId(String? id) : super(id);

  @override
  factory AlarmCommentId.fromJson(Map<String, dynamic> json) {
    return HasUuid.fromJson(json, (id) => AlarmCommentId(id))
    as AlarmCommentId;
  }

  @override
  String toString() {
    return 'AlarmCommentId {id: $id}';
  }
}