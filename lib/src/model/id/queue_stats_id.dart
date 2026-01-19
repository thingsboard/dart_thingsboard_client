import 'package:thingsboard_client/thingsboard_client.dart';

class QueueStatsId extends EntityId {
  QueueStatsId(String id) : super(EntityType.QUEUE_STATS, id);

  @override
  factory QueueStatsId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as QueueStatsId;
  }

  @override
  String toString() {
    return 'QueueStatsId {id: $id}';
  }
}
