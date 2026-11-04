// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/ts_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comparison_ts_value.g.dart';

/// ComparisonTsValue
///
/// Properties:
/// * [current] 
/// * [previous] 
@BuiltValue()
abstract class ComparisonTsValue implements Built<ComparisonTsValue, ComparisonTsValueBuilder> {
  @BuiltValueField(wireName: r'current')
  TsValue? get current;

  @BuiltValueField(wireName: r'previous')
  TsValue? get previous;

  ComparisonTsValue._();

  factory ComparisonTsValue([void updates(ComparisonTsValueBuilder b)]) = _$ComparisonTsValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComparisonTsValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComparisonTsValue> get serializer => _$ComparisonTsValueSerializer();
}

class _$ComparisonTsValueSerializer implements PrimitiveSerializer<ComparisonTsValue> {
  @override
  final Iterable<Type> types = const [ComparisonTsValue, _$ComparisonTsValue];

  @override
  final String wireName = r'ComparisonTsValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComparisonTsValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.current != null) {
      yield r'current';
      yield serializers.serialize(
        object.current,
        specifiedType: const FullType(TsValue),
      );
    }
    if (object.previous != null) {
      yield r'previous';
      yield serializers.serialize(
        object.previous,
        specifiedType: const FullType(TsValue),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ComparisonTsValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ComparisonTsValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'current':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TsValue),
          ) as TsValue?;
          if (valueDes == null) continue;
          result.current.replace(valueDes);
          break;
        case r'previous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TsValue),
          ) as TsValue?;
          if (valueDes == null) continue;
          result.previous.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ComparisonTsValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComparisonTsValueBuilder();
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


