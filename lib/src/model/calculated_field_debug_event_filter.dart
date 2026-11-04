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

part 'calculated_field_debug_event_filter.g.dart';

/// CalculatedFieldDebugEventFilter
///
/// Properties:
/// * [eventType] - String value representing the event type
/// * [notEmpty]
/// * [server] - String value representing the server name, identifier or ip address where the platform is running
/// * [isError] - Boolean value to filter the errors
/// * [errorStr] - The case insensitive 'contains' filter based on error message
/// * [entityId] - String value representing the entity id in the event body
/// * [entityType] - String value representing the entity type
/// * [msgId] - String value representing the message id in the rule engine
/// * [msgType] - String value representing the message type
/// * [arguments] - String value representing the arguments that were used in the calculation performed
/// * [result] - String value representing the result of a calculation
@BuiltValue()
abstract class CalculatedFieldDebugEventFilter
    implements
        EventFilter,
        Built<
          CalculatedFieldDebugEventFilter,
          CalculatedFieldDebugEventFilterBuilder
        > {
  /// String value representing the result of a calculation
  @BuiltValueField(wireName: r'result')
  String? get result;

  /// String value representing the server name, identifier or ip address where the platform is running
  @BuiltValueField(wireName: r'server')
  String? get server;

  /// Boolean value to filter the errors
  @BuiltValueField(wireName: r'isError')
  CalculatedFieldDebugEventFilterIsErrorEnum? get isError;
  // enum isErrorEnum {  false,  true,  };

  /// String value representing the message type
  @BuiltValueField(wireName: r'msgType')
  String? get msgType;

  /// String value representing the entity type
  @BuiltValueField(wireName: r'entityType')
  CalculatedFieldDebugEventFilterEntityTypeEnum? get entityType;
  // enum entityTypeEnum {  DEVICE,  };

  /// String value representing the message id in the rule engine
  @BuiltValueField(wireName: r'msgId')
  String? get msgId;

  /// String value representing the entity id in the event body
  @BuiltValueField(wireName: r'entityId')
  String? get entityId;

  /// String value representing the arguments that were used in the calculation performed
  @BuiltValueField(wireName: r'arguments')
  String? get arguments;

  /// The case insensitive 'contains' filter based on error message
  @BuiltValueField(wireName: r'errorStr')
  String? get errorStr;

  CalculatedFieldDebugEventFilter._();

  factory CalculatedFieldDebugEventFilter([
    void updates(CalculatedFieldDebugEventFilterBuilder b),
  ]) = _$CalculatedFieldDebugEventFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CalculatedFieldDebugEventFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CalculatedFieldDebugEventFilter> get serializer =>
      _$CalculatedFieldDebugEventFilterSerializer();
}

class _$CalculatedFieldDebugEventFilterSerializer
    implements PrimitiveSerializer<CalculatedFieldDebugEventFilter> {
  @override
  final Iterable<Type> types = const [
    CalculatedFieldDebugEventFilter,
    _$CalculatedFieldDebugEventFilter,
  ];

  @override
  final String wireName = r'CalculatedFieldDebugEventFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CalculatedFieldDebugEventFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
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
    if (object.isError != null) {
      yield r'isError';
      yield serializers.serialize(
        object.isError,
        specifiedType: const FullType(
          CalculatedFieldDebugEventFilterIsErrorEnum,
        ),
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
        specifiedType: const FullType(
          CalculatedFieldDebugEventFilterEntityTypeEnum,
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
    if (object.arguments != null) {
      yield r'arguments';
      yield serializers.serialize(
        object.arguments,
        specifiedType: const FullType(String),
      );
    }
    yield r'eventType';
    yield serializers.serialize(
      object.eventType,
      specifiedType: const FullType(EventType),
    );
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
    CalculatedFieldDebugEventFilter object, {
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
    required CalculatedFieldDebugEventFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'result':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.result = valueDes;
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
        case r'isError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CalculatedFieldDebugEventFilterIsErrorEnum,
                    ),
                  )
                  as CalculatedFieldDebugEventFilterIsErrorEnum?;
          if (valueDes == null) continue;
          result.isError = valueDes;
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
                      CalculatedFieldDebugEventFilterEntityTypeEnum,
                    ),
                  )
                  as CalculatedFieldDebugEventFilterEntityTypeEnum?;
          if (valueDes == null) continue;
          result.entityType = valueDes;
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
        case r'arguments':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.arguments = valueDes;
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
  CalculatedFieldDebugEventFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CalculatedFieldDebugEventFilterBuilder();
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
class CalculatedFieldDebugEventFilterIsErrorEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'false')
  static const CalculatedFieldDebugEventFilterIsErrorEnum false_ =
      _$calculatedFieldDebugEventFilterIsErrorEnum_false_;
  @BuiltValueEnumConst(wireName: r'true')
  static const CalculatedFieldDebugEventFilterIsErrorEnum true_ =
      _$calculatedFieldDebugEventFilterIsErrorEnum_true_;
  @BuiltValueEnumConst(wireName: r'11184809', fallback: true)
  static const CalculatedFieldDebugEventFilterIsErrorEnum
  unknownDefaultOpenApi =
      _$calculatedFieldDebugEventFilterIsErrorEnum_unknownDefaultOpenApi;

  static Serializer<CalculatedFieldDebugEventFilterIsErrorEnum>
  get serializer => _$calculatedFieldDebugEventFilterIsErrorEnumSerializer;

  const CalculatedFieldDebugEventFilterIsErrorEnum._(String name) : super(name);

  static BuiltSet<CalculatedFieldDebugEventFilterIsErrorEnum> get values =>
      _$calculatedFieldDebugEventFilterIsErrorEnumValues;
  static CalculatedFieldDebugEventFilterIsErrorEnum valueOf(String name) =>
      _$calculatedFieldDebugEventFilterIsErrorEnumValueOf(name);
}

/// String value representing the entity type
class CalculatedFieldDebugEventFilterEntityTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DEVICE')
  static const CalculatedFieldDebugEventFilterEntityTypeEnum DEVICE =
      _$calculatedFieldDebugEventFilterEntityTypeEnum_DEVICE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const CalculatedFieldDebugEventFilterEntityTypeEnum
  unknownDefaultOpenApi =
      _$calculatedFieldDebugEventFilterEntityTypeEnum_unknownDefaultOpenApi;

  static Serializer<CalculatedFieldDebugEventFilterEntityTypeEnum>
  get serializer => _$calculatedFieldDebugEventFilterEntityTypeEnumSerializer;

  const CalculatedFieldDebugEventFilterEntityTypeEnum._(String name)
    : super(name);

  static BuiltSet<CalculatedFieldDebugEventFilterEntityTypeEnum> get values =>
      _$calculatedFieldDebugEventFilterEntityTypeEnumValues;
  static CalculatedFieldDebugEventFilterEntityTypeEnum valueOf(String name) =>
      _$calculatedFieldDebugEventFilterEntityTypeEnumValueOf(name);
}
