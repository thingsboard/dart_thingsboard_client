// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/event_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/event_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_node_debug_event_filter.g.dart';

/// RuleNodeDebugEventFilter
///
/// Properties:
/// * [eventType] - String value representing the event type
/// * [notEmpty]
/// * [server] - String value representing the server name, identifier or ip address where the platform is running
/// * [isError] - Boolean value to filter the errors
/// * [errorStr] - The case insensitive 'contains' filter based on error message
/// * [msgDirectionType] - String value representing msg direction type (incoming to entity or outcoming from entity)
/// * [entityId] - String value representing the entity id in the event body (originator of the message)
/// * [entityType] - String value representing the entity type
/// * [msgId] - String value representing the message id in the rule engine
/// * [msgType] - String value representing the message type
/// * [relationType] - String value representing the type of message routing
/// * [dataSearch] - The case insensitive 'contains' filter based on data (key and value) for the message.
/// * [metadataSearch] - The case insensitive 'contains' filter based on metadata (key and value) for the message.
@BuiltValue()
abstract class RuleNodeDebugEventFilter
    implements
        EventFilter,
        Built<RuleNodeDebugEventFilter, RuleNodeDebugEventFilterBuilder> {
  /// String value representing the type of message routing
  @BuiltValueField(wireName: r'relationType')
  String? get relationType;

  /// The case insensitive 'contains' filter based on data (key and value) for the message.
  @BuiltValueField(wireName: r'dataSearch')
  String? get dataSearch;

  /// String value representing the server name, identifier or ip address where the platform is running
  @BuiltValueField(wireName: r'server')
  String? get server;

  /// Boolean value to filter the errors
  @BuiltValueField(wireName: r'isError')
  RuleNodeDebugEventFilterIsErrorEnum? get isError;
  // enum isErrorEnum {  false,  true,  };

  /// String value representing the message type
  @BuiltValueField(wireName: r'msgType')
  String? get msgType;

  /// String value representing the entity type
  @BuiltValueField(wireName: r'entityType')
  RuleNodeDebugEventFilterEntityTypeEnum? get entityType;
  // enum entityTypeEnum {  DEVICE,  };

  /// String value representing msg direction type (incoming to entity or outcoming from entity)
  @BuiltValueField(wireName: r'msgDirectionType')
  RuleNodeDebugEventFilterMsgDirectionTypeEnum? get msgDirectionType;
  // enum msgDirectionTypeEnum {  IN,  OUT,  };

  /// String value representing the message id in the rule engine
  @BuiltValueField(wireName: r'msgId')
  String? get msgId;

  /// String value representing the entity id in the event body (originator of the message)
  @BuiltValueField(wireName: r'entityId')
  String? get entityId;

  /// The case insensitive 'contains' filter based on metadata (key and value) for the message.
  @BuiltValueField(wireName: r'metadataSearch')
  String? get metadataSearch;

  /// The case insensitive 'contains' filter based on error message
  @BuiltValueField(wireName: r'errorStr')
  String? get errorStr;

  RuleNodeDebugEventFilter._();

  factory RuleNodeDebugEventFilter([
    void updates(RuleNodeDebugEventFilterBuilder b),
  ]) = _$RuleNodeDebugEventFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleNodeDebugEventFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleNodeDebugEventFilter> get serializer =>
      _$RuleNodeDebugEventFilterSerializer();
}

class _$RuleNodeDebugEventFilterSerializer
    implements PrimitiveSerializer<RuleNodeDebugEventFilter> {
  @override
  final Iterable<Type> types = const [
    RuleNodeDebugEventFilter,
    _$RuleNodeDebugEventFilter,
  ];

  @override
  final String wireName = r'RuleNodeDebugEventFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleNodeDebugEventFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.relationType != null) {
      yield r'relationType';
      yield serializers.serialize(
        object.relationType,
        specifiedType: const FullType(String),
      );
    }
    if (object.server != null) {
      yield r'server';
      yield serializers.serialize(
        object.server,
        specifiedType: const FullType(String),
      );
    }
    if (object.msgType != null) {
      yield r'msgType';
      yield serializers.serialize(
        object.msgType,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityType != null) {
      yield r'entityType';
      yield serializers.serialize(
        object.entityType,
        specifiedType: const FullType(RuleNodeDebugEventFilterEntityTypeEnum),
      );
    }
    if (object.msgDirectionType != null) {
      yield r'msgDirectionType';
      yield serializers.serialize(
        object.msgDirectionType,
        specifiedType: const FullType(
          RuleNodeDebugEventFilterMsgDirectionTypeEnum,
        ),
      );
    }
    if (object.msgId != null) {
      yield r'msgId';
      yield serializers.serialize(
        object.msgId,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityId != null) {
      yield r'entityId';
      yield serializers.serialize(
        object.entityId,
        specifiedType: const FullType(String),
      );
    }
    yield r'eventType';
    yield serializers.serialize(
      object.eventType,
      specifiedType: const FullType(EventType),
    );
    if (object.dataSearch != null) {
      yield r'dataSearch';
      yield serializers.serialize(
        object.dataSearch,
        specifiedType: const FullType(String),
      );
    }
    if (object.isError != null) {
      yield r'isError';
      yield serializers.serialize(
        object.isError,
        specifiedType: const FullType(RuleNodeDebugEventFilterIsErrorEnum),
      );
    }
    if (object.notEmpty != null) {
      yield r'notEmpty';
      yield serializers.serialize(
        object.notEmpty,
        specifiedType: const FullType(bool),
      );
    }
    if (object.metadataSearch != null) {
      yield r'metadataSearch';
      yield serializers.serialize(
        object.metadataSearch,
        specifiedType: const FullType(String),
      );
    }
    if (object.errorStr != null) {
      yield r'errorStr';
      yield serializers.serialize(
        object.errorStr,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleNodeDebugEventFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RuleNodeDebugEventFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'relationType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.relationType = valueDes;
          break;
        case r'server':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.server = valueDes;
          break;
        case r'msgType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.msgType = valueDes;
          break;
        case r'entityType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RuleNodeDebugEventFilterEntityTypeEnum,
                    ),
                  )
                  as RuleNodeDebugEventFilterEntityTypeEnum?;
          if (valueDes == null) continue;
          result.entityType = valueDes;
          break;
        case r'msgDirectionType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RuleNodeDebugEventFilterMsgDirectionTypeEnum,
                    ),
                  )
                  as RuleNodeDebugEventFilterMsgDirectionTypeEnum?;
          if (valueDes == null) continue;
          result.msgDirectionType = valueDes;
          break;
        case r'msgId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.msgId = valueDes;
          break;
        case r'entityId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityId = valueDes;
          break;
        case r'eventType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EventType),
                  )
                  as EventType;
          result.eventType = valueDes;
          break;
        case r'dataSearch':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.dataSearch = valueDes;
          break;
        case r'isError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RuleNodeDebugEventFilterIsErrorEnum,
                    ),
                  )
                  as RuleNodeDebugEventFilterIsErrorEnum?;
          if (valueDes == null) continue;
          result.isError = valueDes;
          break;
        case r'notEmpty':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.notEmpty = valueDes;
          break;
        case r'metadataSearch':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.metadataSearch = valueDes;
          break;
        case r'errorStr':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.errorStr = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleNodeDebugEventFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleNodeDebugEventFilterBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

/// Boolean value to filter the errors
class RuleNodeDebugEventFilterIsErrorEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'false')
  static const RuleNodeDebugEventFilterIsErrorEnum false_ =
      _$ruleNodeDebugEventFilterIsErrorEnum_false_;
  @BuiltValueEnumConst(wireName: r'true')
  static const RuleNodeDebugEventFilterIsErrorEnum true_ =
      _$ruleNodeDebugEventFilterIsErrorEnum_true_;
  @BuiltValueEnumConst(wireName: r'11184809', fallback: true)
  static const RuleNodeDebugEventFilterIsErrorEnum unknownDefaultOpenApi =
      _$ruleNodeDebugEventFilterIsErrorEnum_unknownDefaultOpenApi;

  static Serializer<RuleNodeDebugEventFilterIsErrorEnum> get serializer =>
      _$ruleNodeDebugEventFilterIsErrorEnumSerializer;

  const RuleNodeDebugEventFilterIsErrorEnum._(String name) : super(name);

  static BuiltSet<RuleNodeDebugEventFilterIsErrorEnum> get values =>
      _$ruleNodeDebugEventFilterIsErrorEnumValues;
  static RuleNodeDebugEventFilterIsErrorEnum valueOf(String name) =>
      _$ruleNodeDebugEventFilterIsErrorEnumValueOf(name);
}

/// String value representing msg direction type (incoming to entity or outcoming from entity)
class RuleNodeDebugEventFilterMsgDirectionTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'IN')
  static const RuleNodeDebugEventFilterMsgDirectionTypeEnum IN =
      _$ruleNodeDebugEventFilterMsgDirectionTypeEnum_IN;
  @BuiltValueEnumConst(wireName: r'OUT')
  static const RuleNodeDebugEventFilterMsgDirectionTypeEnum OUT =
      _$ruleNodeDebugEventFilterMsgDirectionTypeEnum_OUT;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RuleNodeDebugEventFilterMsgDirectionTypeEnum
  unknownDefaultOpenApi =
      _$ruleNodeDebugEventFilterMsgDirectionTypeEnum_unknownDefaultOpenApi;

  static Serializer<RuleNodeDebugEventFilterMsgDirectionTypeEnum>
  get serializer => _$ruleNodeDebugEventFilterMsgDirectionTypeEnumSerializer;

  const RuleNodeDebugEventFilterMsgDirectionTypeEnum._(String name)
    : super(name);

  static BuiltSet<RuleNodeDebugEventFilterMsgDirectionTypeEnum> get values =>
      _$ruleNodeDebugEventFilterMsgDirectionTypeEnumValues;
  static RuleNodeDebugEventFilterMsgDirectionTypeEnum valueOf(String name) =>
      _$ruleNodeDebugEventFilterMsgDirectionTypeEnumValueOf(name);
}

/// String value representing the entity type
class RuleNodeDebugEventFilterEntityTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DEVICE')
  static const RuleNodeDebugEventFilterEntityTypeEnum DEVICE =
      _$ruleNodeDebugEventFilterEntityTypeEnum_DEVICE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RuleNodeDebugEventFilterEntityTypeEnum unknownDefaultOpenApi =
      _$ruleNodeDebugEventFilterEntityTypeEnum_unknownDefaultOpenApi;

  static Serializer<RuleNodeDebugEventFilterEntityTypeEnum> get serializer =>
      _$ruleNodeDebugEventFilterEntityTypeEnumSerializer;

  const RuleNodeDebugEventFilterEntityTypeEnum._(String name) : super(name);

  static BuiltSet<RuleNodeDebugEventFilterEntityTypeEnum> get values =>
      _$ruleNodeDebugEventFilterEntityTypeEnumValues;
  static RuleNodeDebugEventFilterEntityTypeEnum valueOf(String name) =>
      _$ruleNodeDebugEventFilterEntityTypeEnumValueOf(name);
}
