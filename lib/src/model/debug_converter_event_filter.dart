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

part 'debug_converter_event_filter.g.dart';

/// DebugConverterEventFilter
///
/// Properties:
/// * [eventType] - String value representing the event type
/// * [notEmpty]
/// * [server] - String value representing the server name, identifier or ip address where the platform is running
/// * [isError] - Boolean value to filter the errors
/// * [errorStr] - The case insensitive 'contains' filter based on error message
/// * [type]
/// * [in_]
/// * [out_]
/// * [metadata]
@BuiltValue()
abstract class DebugConverterEventFilter
    implements
        EventFilter,
        Built<DebugConverterEventFilter, DebugConverterEventFilterBuilder> {
  /// String value representing the server name, identifier or ip address where the platform is running
  @BuiltValueField(wireName: r'server')
  String? get server;

  @BuiltValueField(wireName: r'metadata')
  String? get metadata;

  /// Boolean value to filter the errors
  @BuiltValueField(wireName: r'isError')
  DebugConverterEventFilterIsErrorEnum? get isError;
  // enum isErrorEnum {  false,  true,  };

  @BuiltValueField(wireName: r'out')
  String? get out_;

  @BuiltValueField(wireName: r'in')
  String? get in_;

  @BuiltValueField(wireName: r'type')
  String? get type;

  /// The case insensitive 'contains' filter based on error message
  @BuiltValueField(wireName: r'errorStr')
  String? get errorStr;

  DebugConverterEventFilter._();

  factory DebugConverterEventFilter([
    void updates(DebugConverterEventFilterBuilder b),
  ]) = _$DebugConverterEventFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DebugConverterEventFilterBuilder b) =>
      b..eventType = EventType.DEBUG_CONVERTER;

  @BuiltValueSerializer(custom: true)
  static Serializer<DebugConverterEventFilter> get serializer =>
      _$DebugConverterEventFilterSerializer();
}

class _$DebugConverterEventFilterSerializer
    implements PrimitiveSerializer<DebugConverterEventFilter> {
  @override
  final Iterable<Type> types = const [
    DebugConverterEventFilter,
    _$DebugConverterEventFilter,
  ];

  @override
  final String wireName = r'DebugConverterEventFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DebugConverterEventFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.server != null) {
      yield r'server';
      yield serializers.serialize(
        object.server,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(String),
      );
    }
    if (object.isError != null) {
      yield r'isError';
      yield serializers.serialize(
        object.isError,
        specifiedType: const FullType(DebugConverterEventFilterIsErrorEnum),
      );
    }
    if (object.out_ != null) {
      yield r'out';
      yield serializers.serialize(
        object.out_,
        specifiedType: const FullType(String),
      );
    }
    if (object.in_ != null) {
      yield r'in';
      yield serializers.serialize(
        object.in_,
        specifiedType: const FullType(String),
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
    DebugConverterEventFilter object, {
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
    required DebugConverterEventFilterBuilder result,
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
        case r'metadata':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.metadata = valueDes;
          break;
        case r'isError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DebugConverterEventFilterIsErrorEnum,
                    ),
                  )
                  as DebugConverterEventFilterIsErrorEnum?;
          if (valueDes == null) continue;
          result.isError = valueDes;
          break;
        case r'out':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.out_ = valueDes;
          break;
        case r'in':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.in_ = valueDes;
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
  DebugConverterEventFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DebugConverterEventFilterBuilder();
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
class DebugConverterEventFilterIsErrorEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'false')
  static const DebugConverterEventFilterIsErrorEnum false_ =
      _$debugConverterEventFilterIsErrorEnum_false_;
  @BuiltValueEnumConst(wireName: r'true')
  static const DebugConverterEventFilterIsErrorEnum true_ =
      _$debugConverterEventFilterIsErrorEnum_true_;
  @BuiltValueEnumConst(wireName: r'11184809', fallback: true)
  static const DebugConverterEventFilterIsErrorEnum unknownDefaultOpenApi =
      _$debugConverterEventFilterIsErrorEnum_unknownDefaultOpenApi;

  static Serializer<DebugConverterEventFilterIsErrorEnum> get serializer =>
      _$debugConverterEventFilterIsErrorEnumSerializer;

  const DebugConverterEventFilterIsErrorEnum._(String name) : super(name);

  static BuiltSet<DebugConverterEventFilterIsErrorEnum> get values =>
      _$debugConverterEventFilterIsErrorEnumValues;
  static DebugConverterEventFilterIsErrorEnum valueOf(String name) =>
      _$debugConverterEventFilterIsErrorEnumValueOf(name);
}
