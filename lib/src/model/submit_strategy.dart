// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/submit_strategy_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'submit_strategy.g.dart';

/// SubmitStrategy
///
/// Properties:
/// * [type] 
/// * [batchSize] 
@BuiltValue()
abstract class SubmitStrategy implements Built<SubmitStrategy, SubmitStrategyBuilder> {
  @BuiltValueField(wireName: r'type')
  SubmitStrategyType? get type;
  // enum typeEnum {  BURST,  BATCH,  SEQUENTIAL_BY_ORIGINATOR,  SEQUENTIAL_BY_TENANT,  SEQUENTIAL,  };

  @BuiltValueField(wireName: r'batchSize')
  int? get batchSize;

  SubmitStrategy._();

  factory SubmitStrategy([void updates(SubmitStrategyBuilder b)]) = _$SubmitStrategy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubmitStrategyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubmitStrategy> get serializer => _$SubmitStrategySerializer();
}

class _$SubmitStrategySerializer implements PrimitiveSerializer<SubmitStrategy> {
  @override
  final Iterable<Type> types = const [SubmitStrategy, _$SubmitStrategy];

  @override
  final String wireName = r'SubmitStrategy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubmitStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(SubmitStrategyType),
      );
    }
    if (object.batchSize != null) {
      yield r'batchSize';
      yield serializers.serialize(
        object.batchSize,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubmitStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubmitStrategyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SubmitStrategyType),
          ) as SubmitStrategyType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'batchSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.batchSize = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubmitStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubmitStrategyBuilder();
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


