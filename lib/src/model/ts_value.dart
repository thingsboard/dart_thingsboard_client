// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ts_value.g.dart';

/// TsValue
///
/// Properties:
/// * [ts] 
/// * [value] 
/// * [count] 
@BuiltValue()
abstract class TsValue implements Built<TsValue, TsValueBuilder> {
  @BuiltValueField(wireName: r'ts')
  int? get ts;

  @BuiltValueField(wireName: r'value')
  String? get value;

  @BuiltValueField(wireName: r'count')
  int? get count;

  TsValue._();

  factory TsValue([void updates(TsValueBuilder b)]) = _$TsValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TsValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TsValue> get serializer => _$TsValueSerializer();
}

class _$TsValueSerializer implements PrimitiveSerializer<TsValue> {
  @override
  final Iterable<Type> types = const [TsValue, _$TsValue];

  @override
  final String wireName = r'TsValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TsValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ts != null) {
      yield r'ts';
      yield serializers.serialize(
        object.ts,
        specifiedType: const FullType(int),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TsValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TsValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ts = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TsValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TsValueBuilder();
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


