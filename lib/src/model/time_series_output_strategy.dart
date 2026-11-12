// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/time_series_rule_chain_output_strategy.dart';
import 'package:thingsboard_client/src/model/time_series_immediate_output_strategy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_series_output_strategy.g.dart';

/// TimeSeriesOutputStrategy
///
/// Properties:
/// * [type]
@BuiltValue(instantiable: false)
abstract class TimeSeriesOutputStrategy {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'IMMEDIATE': TimeSeriesImmediateOutputStrategy,
    r'RULE_CHAIN': TimeSeriesRuleChainOutputStrategy,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSeriesOutputStrategy> get serializer =>
      _$TimeSeriesOutputStrategySerializer();
}

extension TimeSeriesOutputStrategyDiscriminatorExt on TimeSeriesOutputStrategy {
  String? get discriminatorValue {
    if (this is TimeSeriesImmediateOutputStrategy) {
      return r'IMMEDIATE';
    }
    if (this is TimeSeriesRuleChainOutputStrategy) {
      return r'RULE_CHAIN';
    }
    return null;
  }
}

extension TimeSeriesOutputStrategyBuilderDiscriminatorExt
    on TimeSeriesOutputStrategyBuilder {
  String? get discriminatorValue {
    if (this is TimeSeriesImmediateOutputStrategyBuilder) {
      return r'IMMEDIATE';
    }
    if (this is TimeSeriesRuleChainOutputStrategyBuilder) {
      return r'RULE_CHAIN';
    }
    return null;
  }
}

class _$TimeSeriesOutputStrategySerializer
    implements PrimitiveSerializer<TimeSeriesOutputStrategy> {
  @override
  final Iterable<Type> types = const [TimeSeriesOutputStrategy];

  @override
  final String wireName = r'TimeSeriesOutputStrategy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSeriesOutputStrategy object, {
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
    TimeSeriesOutputStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is TimeSeriesImmediateOutputStrategy) {
      return serializers.serialize(
        object,
        specifiedType: FullType(TimeSeriesImmediateOutputStrategy),
      )!;
    }
    if (object is TimeSeriesRuleChainOutputStrategy) {
      return serializers.serialize(
        object,
        specifiedType: FullType(TimeSeriesRuleChainOutputStrategy),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  TimeSeriesOutputStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(
          TimeSeriesOutputStrategy.discriminatorFieldName,
        ) +
        1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'IMMEDIATE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(TimeSeriesImmediateOutputStrategy),
            )
            as TimeSeriesImmediateOutputStrategy;
      case r'RULE_CHAIN':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(TimeSeriesRuleChainOutputStrategy),
            )
            as TimeSeriesRuleChainOutputStrategy;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($TimeSeriesOutputStrategy),
            )
            as $TimeSeriesOutputStrategy;
    }
  }
}

/// a concrete implementation of [TimeSeriesOutputStrategy], since [TimeSeriesOutputStrategy] is not instantiable
@BuiltValue(instantiable: true)
abstract class $TimeSeriesOutputStrategy
    implements
        TimeSeriesOutputStrategy,
        Built<$TimeSeriesOutputStrategy, $TimeSeriesOutputStrategyBuilder> {
  $TimeSeriesOutputStrategy._();

  factory $TimeSeriesOutputStrategy([
    void Function($TimeSeriesOutputStrategyBuilder)? updates,
  ]) = _$$TimeSeriesOutputStrategy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($TimeSeriesOutputStrategyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$TimeSeriesOutputStrategy> get serializer =>
      _$$TimeSeriesOutputStrategySerializer();
}

class _$$TimeSeriesOutputStrategySerializer
    implements PrimitiveSerializer<$TimeSeriesOutputStrategy> {
  @override
  final Iterable<Type> types = const [
    $TimeSeriesOutputStrategy,
    _$$TimeSeriesOutputStrategy,
  ];

  @override
  final String wireName = r'$TimeSeriesOutputStrategy';

  @override
  Object serialize(
    Serializers serializers,
    $TimeSeriesOutputStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(TimeSeriesOutputStrategy),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TimeSeriesOutputStrategyBuilder result,
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
  $TimeSeriesOutputStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TimeSeriesOutputStrategyBuilder();
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
