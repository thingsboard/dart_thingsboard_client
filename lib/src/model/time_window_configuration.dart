// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/history.dart';
import 'package:thingsboard_client/src/model/aggregation_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_window_configuration.g.dart';

/// TimeWindowConfiguration
///
/// Properties:
/// * [history]
/// * [aggregation]
/// * [timezone]
@BuiltValue()
abstract class TimeWindowConfiguration
    implements Built<TimeWindowConfiguration, TimeWindowConfigurationBuilder> {
  @BuiltValueField(wireName: r'history')
  History? get history;

  @BuiltValueField(wireName: r'aggregation')
  AggregationConfiguration? get aggregation;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  TimeWindowConfiguration._();

  factory TimeWindowConfiguration([
    void updates(TimeWindowConfigurationBuilder b),
  ]) = _$TimeWindowConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeWindowConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeWindowConfiguration> get serializer =>
      _$TimeWindowConfigurationSerializer();
}

class _$TimeWindowConfigurationSerializer
    implements PrimitiveSerializer<TimeWindowConfiguration> {
  @override
  final Iterable<Type> types = const [
    TimeWindowConfiguration,
    _$TimeWindowConfiguration,
  ];

  @override
  final String wireName = r'TimeWindowConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeWindowConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.history != null) {
      yield r'history';
      yield serializers.serialize(
        object.history,
        specifiedType: const FullType(History),
      );
    }
    if (object.aggregation != null) {
      yield r'aggregation';
      yield serializers.serialize(
        object.aggregation,
        specifiedType: const FullType(AggregationConfiguration),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeWindowConfiguration object, {
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
    required TimeWindowConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'history':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(History),
                  )
                  as History?;
          if (valueDes == null) continue;
          result.history.replace(valueDes);
          break;
        case r'aggregation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AggregationConfiguration,
                    ),
                  )
                  as AggregationConfiguration?;
          if (valueDes == null) continue;
          result.aggregation.replace(valueDes);
          break;
        case r'timezone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeWindowConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeWindowConfigurationBuilder();
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
