// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agg_input.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agg_function_input.g.dart';

/// AggFunctionInput
///
/// Properties:
/// * [type] 
/// * [function_] 
@BuiltValue()
abstract class AggFunctionInput implements AggInput, Built<AggFunctionInput, AggFunctionInputBuilder> {
  @BuiltValueField(wireName: r'function')
  String? get function_;

  AggFunctionInput._();

  factory AggFunctionInput([void updates(AggFunctionInputBuilder b)]) = _$AggFunctionInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AggFunctionInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AggFunctionInput> get serializer => _$AggFunctionInputSerializer();
}

class _$AggFunctionInputSerializer implements PrimitiveSerializer<AggFunctionInput> {
  @override
  final Iterable<Type> types = const [AggFunctionInput, _$AggFunctionInput];

  @override
  final String wireName = r'AggFunctionInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AggFunctionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.function_ != null) {
      yield r'function';
      yield serializers.serialize(
        object.function_,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AggFunctionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AggFunctionInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'function':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.function_ = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  AggFunctionInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggFunctionInputBuilder();
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


