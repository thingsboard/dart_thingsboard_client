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

part 'rule_chain_debug_event_filter.g.dart';

/// RuleChainDebugEventFilter
///
/// Properties:
/// * [eventType] - String value representing the event type
/// * [notEmpty]
/// * [server] - String value representing the server name, identifier or ip address where the platform is running
/// * [isError] - Boolean value to filter the errors
/// * [errorStr] - The case insensitive 'contains' filter based on error message
/// * [message] - String value representing the message
@BuiltValue()
abstract class RuleChainDebugEventFilter
    implements
        EventFilter,
        Built<RuleChainDebugEventFilter, RuleChainDebugEventFilterBuilder> {
  /// String value representing the server name, identifier or ip address where the platform is running
  @BuiltValueField(wireName: r'server')
  String? get server;

  /// Boolean value to filter the errors
  @BuiltValueField(wireName: r'isError')
  RuleChainDebugEventFilterIsErrorEnum? get isError;
  // enum isErrorEnum {  false,  true,  };

  /// String value representing the message
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// The case insensitive 'contains' filter based on error message
  @BuiltValueField(wireName: r'errorStr')
  String? get errorStr;

  RuleChainDebugEventFilter._();

  factory RuleChainDebugEventFilter([
    void updates(RuleChainDebugEventFilterBuilder b),
  ]) = _$RuleChainDebugEventFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleChainDebugEventFilterBuilder b) =>
      b..eventType = EventType.DEBUG_RULE_CHAIN;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleChainDebugEventFilter> get serializer =>
      _$RuleChainDebugEventFilterSerializer();
}

class _$RuleChainDebugEventFilterSerializer
    implements PrimitiveSerializer<RuleChainDebugEventFilter> {
  @override
  final Iterable<Type> types = const [
    RuleChainDebugEventFilter,
    _$RuleChainDebugEventFilter,
  ];

  @override
  final String wireName = r'RuleChainDebugEventFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleChainDebugEventFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.server != null) {
      yield r'server';
      yield serializers.serialize(
        object.server,
        specifiedType: const FullType(String),
      );
    }
    if (object.isError != null) {
      yield r'isError';
      yield serializers.serialize(
        object.isError,
        specifiedType: const FullType(RuleChainDebugEventFilterIsErrorEnum),
      );
    }
    yield r'eventType';
    yield serializers.serialize(
      object.eventType,
      specifiedType: const FullType(EventType),
    );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.notEmpty != null) {
      yield r'notEmpty';
      yield serializers.serialize(
        object.notEmpty,
        specifiedType: const FullType(bool),
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
    RuleChainDebugEventFilter object, {
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
    required RuleChainDebugEventFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'isError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RuleChainDebugEventFilterIsErrorEnum,
                    ),
                  )
                  as RuleChainDebugEventFilterIsErrorEnum?;
          if (valueDes == null) continue;
          result.isError = valueDes;
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
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
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
  RuleChainDebugEventFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleChainDebugEventFilterBuilder();
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
class RuleChainDebugEventFilterIsErrorEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'false')
  static const RuleChainDebugEventFilterIsErrorEnum false_ =
      _$ruleChainDebugEventFilterIsErrorEnum_false_;
  @BuiltValueEnumConst(wireName: r'true')
  static const RuleChainDebugEventFilterIsErrorEnum true_ =
      _$ruleChainDebugEventFilterIsErrorEnum_true_;
  @BuiltValueEnumConst(wireName: r'11184809', fallback: true)
  static const RuleChainDebugEventFilterIsErrorEnum unknownDefaultOpenApi =
      _$ruleChainDebugEventFilterIsErrorEnum_unknownDefaultOpenApi;

  static Serializer<RuleChainDebugEventFilterIsErrorEnum> get serializer =>
      _$ruleChainDebugEventFilterIsErrorEnumSerializer;

  const RuleChainDebugEventFilterIsErrorEnum._(String name) : super(name);

  static BuiltSet<RuleChainDebugEventFilterIsErrorEnum> get values =>
      _$ruleChainDebugEventFilterIsErrorEnumValues;
  static RuleChainDebugEventFilterIsErrorEnum valueOf(String name) =>
      _$ruleChainDebugEventFilterIsErrorEnumValueOf(name);
}
