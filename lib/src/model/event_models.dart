import 'id/entity_id.dart';

import 'base_data.dart';
import 'id/event_id.dart';
import 'id/tenant_id.dart';

class Event extends BaseData<EventId> {
  TenantId tenantId;
  EntityId entityId;
  String type;
  String uid;
  EventBody body;

  Event.fromJson(Map<String, dynamic> json)
      : tenantId = TenantId.fromJson(json['tenantId']),
        entityId = EntityId.fromJson(json['entityId']),
        type = json['type'],
        uid = json['uid'],
        body = EventBody.fromJson(json['type'], json['body']),
        super.fromJson(json, (id) => EventId(id));

  @override
  String toString() {
    return 'Event{${baseDataString('tenantId: $tenantId, entityId: $entityId, type: $type, uid: $uid, body: $body')}}';
  }
}

enum EventType {
  ERROR,
  LC_EVENT,
  STATS,
  DEBUG_RULE_NODE,
  DEBUG_RULE_CHAIN,
  RAW
}

abstract class EventBody {
  static const ERROR = 'ERROR';
  static const LC_EVENT = 'LC_EVENT';
  static const STATS = 'STATS';
  static const DEBUG_RULE_NODE = 'DEBUG_RULE_NODE';
  static const DEBUG_RULE_CHAIN = 'DEBUG_RULE_CHAIN';

  EventBody();

  EventType getEventType();

  factory EventBody.fromJson(String type, Map<String, dynamic> json) {
    switch (type) {
      case ERROR:
        return ErrorEventBody.fromJson(json);
      case LC_EVENT:
        return LcEventEventBody.fromJson(json);
      case STATS:
        return StatsEventBody.fromJson(json);
      case DEBUG_RULE_NODE:
        return DebugRuleNodeEventBody.fromJson(json);
      case DEBUG_RULE_CHAIN:
        return DebugRuleChainEventBody.fromJson(json);
      default:
        return RawEventBody.fromJson(json);
    }
  }
}

class RawEventBody extends EventBody {
  Map<String, dynamic> rawBody;

  @override
  EventType getEventType() => EventType.RAW;

  RawEventBody.fromJson(Map<String, dynamic> json) : rawBody = json;

  @override
  String toString() {
    return 'RawEventBody{rawBody: $rawBody}';
  }
}

abstract class BaseEventBody extends EventBody {
  String server;

  BaseEventBody.fromJson(Map<String, dynamic> json) : server = json['server'];

  String baseEventBodyString([String? toStringBody]) {
    return 'server: $server${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}

class ErrorEventBody extends BaseEventBody {
  String method;
  String error;

  @override
  EventType getEventType() => EventType.ERROR;

  ErrorEventBody.fromJson(Map<String, dynamic> json)
      : method = json['method'],
        error = json['error'],
        super.fromJson(json);

  @override
  String toString() {
    return 'ErrorEventBody{${baseEventBodyString('method: $method, error: $error')}}';
  }
}

class LcEventEventBody extends BaseEventBody {
  String event;
  bool success;
  String? error;

  @override
  EventType getEventType() => EventType.LC_EVENT;

  LcEventEventBody.fromJson(Map<String, dynamic> json)
      : event = json['event'],
        success = json['success'],
        error = json['error'],
        super.fromJson(json);

  @override
  String toString() {
    return 'LcEventEventBody{${baseEventBodyString('event: $event, success: $success, error: $error')}}';
  }
}

class StatsEventBody extends BaseEventBody {
  int messagesProcessed;
  int errorsOccurred;

  @override
  EventType getEventType() => EventType.STATS;

  StatsEventBody.fromJson(Map<String, dynamic> json)
      : messagesProcessed = json['messagesProcessed'],
        errorsOccurred = json['errorsOccurred'],
        super.fromJson(json);

  @override
  String toString() {
    return 'StatsEventBody{${baseEventBodyString('messagesProcessed: $messagesProcessed, errorsOccurred: $errorsOccurred')}}';
  }
}

class DebugRuleNodeEventBody extends BaseEventBody {
  String type;
  String entityId;
  String entityName;
  String msgId;
  String msgType;
  String relationType;
  ContentType dataType;
  String data;
  String metadata;
  String? error;

  @override
  EventType getEventType() => EventType.DEBUG_RULE_NODE;

  DebugRuleNodeEventBody.fromJson(Map<String, dynamic> json)
      : type = json['type'],
        entityId = json['entityId'],
        entityName = json['entityName'],
        msgId = json['msgId'],
        msgType = json['msgType'],
        relationType = json['relationType'],
        dataType = contentTypeFromString(json['dataType']),
        data = json['data'],
        metadata = json['metadata'],
        error = json['error'],
        super.fromJson(json);

  @override
  String toString() {
    return 'DebugRuleNodeEventBody{${baseEventBodyString('type: $type, entityId: $entityId, entityName: $entityName, msgId: $msgId, '
        'msgType: $msgType, relationType: $relationType, dataType: ${dataType.toShortString()}, data: $data, metadata: $metadata, error: $error')}}';
  }
}

class DebugRuleChainEventBody extends BaseEventBody {
  String message;
  String? error;

  @override
  EventType getEventType() => EventType.DEBUG_RULE_CHAIN;

  DebugRuleChainEventBody.fromJson(Map<String, dynamic> json)
      : message = json['message'],
        error = json['error'],
        super.fromJson(json);

  @override
  String toString() {
    return 'DebugRuleChainEventBody{${baseEventBodyString('message: $message, error: $error')}}';
  }
}

enum ContentType { JSON, TEXT, BINARY }

ContentType contentTypeFromString(String value) {
  return ContentType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension ContentTypeToString on ContentType {
  String toShortString() {
    return toString().split('.').last;
  }
}
