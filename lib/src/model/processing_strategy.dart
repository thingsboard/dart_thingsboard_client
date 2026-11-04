// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/processing_strategy_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'processing_strategy.g.dart';

/// ProcessingStrategy
///
/// Properties:
/// * [type]
/// * [retries]
/// * [failurePercentage]
/// * [pauseBetweenRetries]
/// * [maxPauseBetweenRetries]
@BuiltValue()
abstract class ProcessingStrategy
    implements Built<ProcessingStrategy, ProcessingStrategyBuilder> {
  @BuiltValueField(wireName: r'type')
  ProcessingStrategyType? get type;
  // enum typeEnum {  SKIP_ALL_FAILURES,  SKIP_ALL_FAILURES_AND_TIMED_OUT,  RETRY_ALL,  RETRY_FAILED,  RETRY_TIMED_OUT,  RETRY_FAILED_AND_TIMED_OUT,  };

  @BuiltValueField(wireName: r'retries')
  int? get retries;

  @BuiltValueField(wireName: r'failurePercentage')
  double? get failurePercentage;

  @BuiltValueField(wireName: r'pauseBetweenRetries')
  int? get pauseBetweenRetries;

  @BuiltValueField(wireName: r'maxPauseBetweenRetries')
  int? get maxPauseBetweenRetries;

  ProcessingStrategy._();

  factory ProcessingStrategy([void updates(ProcessingStrategyBuilder b)]) =
      _$ProcessingStrategy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProcessingStrategyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProcessingStrategy> get serializer =>
      _$ProcessingStrategySerializer();
}

class _$ProcessingStrategySerializer
    implements PrimitiveSerializer<ProcessingStrategy> {
  @override
  final Iterable<Type> types = const [ProcessingStrategy, _$ProcessingStrategy];

  @override
  final String wireName = r'ProcessingStrategy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProcessingStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ProcessingStrategyType),
      );
    }
    if (object.retries != null) {
      yield r'retries';
      yield serializers.serialize(
        object.retries,
        specifiedType: const FullType(int),
      );
    }
    if (object.failurePercentage != null) {
      yield r'failurePercentage';
      yield serializers.serialize(
        object.failurePercentage,
        specifiedType: const FullType(double),
      );
    }
    if (object.pauseBetweenRetries != null) {
      yield r'pauseBetweenRetries';
      yield serializers.serialize(
        object.pauseBetweenRetries,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxPauseBetweenRetries != null) {
      yield r'maxPauseBetweenRetries';
      yield serializers.serialize(
        object.maxPauseBetweenRetries,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProcessingStrategy object, {
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
    required ProcessingStrategyBuilder result,
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
                    specifiedType: const FullType.nullable(
                      ProcessingStrategyType,
                    ),
                  )
                  as ProcessingStrategyType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'retries':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.retries = valueDes;
          break;
        case r'failurePercentage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.failurePercentage = valueDes;
          break;
        case r'pauseBetweenRetries':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.pauseBetweenRetries = valueDes;
          break;
        case r'maxPauseBetweenRetries':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxPauseBetweenRetries = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProcessingStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProcessingStrategyBuilder();
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
