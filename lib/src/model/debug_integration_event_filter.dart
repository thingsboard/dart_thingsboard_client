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

part 'debug_integration_event_filter.g.dart';

/// DebugIntegrationEventFilter
///
/// Properties:
/// * [eventType] - String value representing the event type
/// * [notEmpty]
/// * [server] - String value representing the server name, identifier or ip address where the platform is running
/// * [isError] - Boolean value to filter the errors
/// * [errorStr] - The case insensitive 'contains' filter based on error message
/// * [type]
/// * [message]
/// * [statusIntegration]
@BuiltValue()
abstract class DebugIntegrationEventFilter
    implements
        EventFilter,
        Built<DebugIntegrationEventFilter, DebugIntegrationEventFilterBuilder> {
  /// String value representing the server name, identifier or ip address where the platform is running
  @BuiltValueField(wireName: r'server')
  String? get server;

  /// Boolean value to filter the errors
  @BuiltValueField(wireName: r'isError')
  DebugIntegrationEventFilterIsErrorEnum? get isError;
  // enum isErrorEnum {  false,  true,  };

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'statusIntegration')
  String? get statusIntegration;

  /// The case insensitive 'contains' filter based on error message
  @BuiltValueField(wireName: r'errorStr')
  String? get errorStr;

  DebugIntegrationEventFilter._();

  factory DebugIntegrationEventFilter([
    void updates(DebugIntegrationEventFilterBuilder b),
  ]) = _$DebugIntegrationEventFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DebugIntegrationEventFilterBuilder b) =>
      b..eventType = EventType.DEBUG_INTEGRATION;

  @BuiltValueSerializer(custom: true)
  static Serializer<DebugIntegrationEventFilter> get serializer =>
      _$DebugIntegrationEventFilterSerializer();
}

class _$DebugIntegrationEventFilterSerializer
    implements PrimitiveSerializer<DebugIntegrationEventFilter> {
  @override
  final Iterable<Type> types = const [
    DebugIntegrationEventFilter,
    _$DebugIntegrationEventFilter,
  ];

  @override
  final String wireName = r'DebugIntegrationEventFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DebugIntegrationEventFilter object, {
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
        specifiedType: const FullType(DebugIntegrationEventFilterIsErrorEnum),
      );
    }
    yield r'eventType';
    yield serializers.serialize(
      object.eventType,
      specifiedType: const FullType(EventType),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.statusIntegration != null) {
      yield r'statusIntegration';
      yield serializers.serialize(
        object.statusIntegration,
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
    DebugIntegrationEventFilter object, {
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
    required DebugIntegrationEventFilterBuilder result,
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
                      DebugIntegrationEventFilterIsErrorEnum,
                    ),
                  )
                  as DebugIntegrationEventFilterIsErrorEnum?;
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
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
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
        case r'statusIntegration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.statusIntegration = valueDes;
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
  DebugIntegrationEventFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DebugIntegrationEventFilterBuilder();
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
class DebugIntegrationEventFilterIsErrorEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'false')
  static const DebugIntegrationEventFilterIsErrorEnum false_ =
      _$debugIntegrationEventFilterIsErrorEnum_false_;
  @BuiltValueEnumConst(wireName: r'true')
  static const DebugIntegrationEventFilterIsErrorEnum true_ =
      _$debugIntegrationEventFilterIsErrorEnum_true_;
  @BuiltValueEnumConst(wireName: r'11184809', fallback: true)
  static const DebugIntegrationEventFilterIsErrorEnum unknownDefaultOpenApi =
      _$debugIntegrationEventFilterIsErrorEnum_unknownDefaultOpenApi;

  static Serializer<DebugIntegrationEventFilterIsErrorEnum> get serializer =>
      _$debugIntegrationEventFilterIsErrorEnumSerializer;

  const DebugIntegrationEventFilterIsErrorEnum._(String name) : super(name);

  static BuiltSet<DebugIntegrationEventFilterIsErrorEnum> get values =>
      _$debugIntegrationEventFilterIsErrorEnumValues;
  static DebugIntegrationEventFilterIsErrorEnum valueOf(String name) =>
      _$debugIntegrationEventFilterIsErrorEnumValueOf(name);
}
