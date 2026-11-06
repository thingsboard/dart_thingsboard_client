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

part 'time_series_rule_chain_output_strategy.g.dart';

/// TimeSeriesRuleChainOutputStrategy
///
/// Properties:
/// * [type]
@BuiltValue()
abstract class TimeSeriesRuleChainOutputStrategy
    implements
        TimeSeriesOutputStrategy,
        Built<
          TimeSeriesRuleChainOutputStrategy,
          TimeSeriesRuleChainOutputStrategyBuilder
        > {
  TimeSeriesRuleChainOutputStrategy._();

  factory TimeSeriesRuleChainOutputStrategy([
    void updates(TimeSeriesRuleChainOutputStrategyBuilder b),
  ]) = _$TimeSeriesRuleChainOutputStrategy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeSeriesRuleChainOutputStrategyBuilder b) =>
      b..type = r'RULE_CHAIN';

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSeriesRuleChainOutputStrategy> get serializer =>
      _$TimeSeriesRuleChainOutputStrategySerializer();
}

class _$TimeSeriesRuleChainOutputStrategySerializer
    implements PrimitiveSerializer<TimeSeriesRuleChainOutputStrategy> {
  @override
  final Iterable<Type> types = const [
    TimeSeriesRuleChainOutputStrategy,
    _$TimeSeriesRuleChainOutputStrategy,
  ];

  @override
  final String wireName = r'TimeSeriesRuleChainOutputStrategy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSeriesRuleChainOutputStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeSeriesRuleChainOutputStrategy object, {
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
    required TimeSeriesRuleChainOutputStrategyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeSeriesRuleChainOutputStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeSeriesRuleChainOutputStrategyBuilder();
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
