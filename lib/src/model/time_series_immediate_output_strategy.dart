// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/time_series_output_strategy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_series_immediate_output_strategy.g.dart';

/// TimeSeriesImmediateOutputStrategy
///
/// Properties:
/// * [type] 
/// * [ttl] 
/// * [saveTimeSeries] 
/// * [saveLatest] 
/// * [sendWsUpdate] 
/// * [processCfs] 
@BuiltValue()
abstract class TimeSeriesImmediateOutputStrategy implements TimeSeriesOutputStrategy, Built<TimeSeriesImmediateOutputStrategy, TimeSeriesImmediateOutputStrategyBuilder> {
  @BuiltValueField(wireName: r'sendWsUpdate')
  bool? get sendWsUpdate;

  @BuiltValueField(wireName: r'processCfs')
  bool? get processCfs;

  @BuiltValueField(wireName: r'saveTimeSeries')
  bool? get saveTimeSeries;

  @BuiltValueField(wireName: r'ttl')
  int? get ttl;

  @BuiltValueField(wireName: r'saveLatest')
  bool? get saveLatest;

  TimeSeriesImmediateOutputStrategy._();

  factory TimeSeriesImmediateOutputStrategy([void updates(TimeSeriesImmediateOutputStrategyBuilder b)]) = _$TimeSeriesImmediateOutputStrategy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeSeriesImmediateOutputStrategyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSeriesImmediateOutputStrategy> get serializer => _$TimeSeriesImmediateOutputStrategySerializer();
}

class _$TimeSeriesImmediateOutputStrategySerializer implements PrimitiveSerializer<TimeSeriesImmediateOutputStrategy> {
  @override
  final Iterable<Type> types = const [TimeSeriesImmediateOutputStrategy, _$TimeSeriesImmediateOutputStrategy];

  @override
  final String wireName = r'TimeSeriesImmediateOutputStrategy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSeriesImmediateOutputStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.processCfs != null) {
      yield r'processCfs';
      yield serializers.serialize(
        object.processCfs,
        specifiedType: const FullType(bool),
      );
    }
    if (object.saveTimeSeries != null) {
      yield r'saveTimeSeries';
      yield serializers.serialize(
        object.saveTimeSeries,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sendWsUpdate != null) {
      yield r'sendWsUpdate';
      yield serializers.serialize(
        object.sendWsUpdate,
        specifiedType: const FullType(bool),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.ttl != null) {
      yield r'ttl';
      yield serializers.serialize(
        object.ttl,
        specifiedType: const FullType(int),
      );
    }
    if (object.saveLatest != null) {
      yield r'saveLatest';
      yield serializers.serialize(
        object.saveLatest,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeSeriesImmediateOutputStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TimeSeriesImmediateOutputStrategyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'processCfs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.processCfs = valueDes;
          break;
        case r'saveTimeSeries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.saveTimeSeries = valueDes;
          break;
        case r'sendWsUpdate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.sendWsUpdate = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'ttl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ttl = valueDes;
          break;
        case r'saveLatest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.saveLatest = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeSeriesImmediateOutputStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeSeriesImmediateOutputStrategyBuilder();
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


