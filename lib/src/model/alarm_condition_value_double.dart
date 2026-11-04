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

part 'alarm_condition_value_double.g.dart';

/// AlarmConditionValueDouble
///
/// Properties:
/// * [staticValue] 
/// * [dynamicValueArgument] 
@BuiltValue()
abstract class AlarmConditionValueDouble implements Built<AlarmConditionValueDouble, AlarmConditionValueDoubleBuilder> {
  @BuiltValueField(wireName: r'staticValue')
  double? get staticValue;

  @BuiltValueField(wireName: r'dynamicValueArgument')
  String? get dynamicValueArgument;

  AlarmConditionValueDouble._();

  factory AlarmConditionValueDouble([void updates(AlarmConditionValueDoubleBuilder b)]) = _$AlarmConditionValueDouble;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmConditionValueDoubleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmConditionValueDouble> get serializer => _$AlarmConditionValueDoubleSerializer();
}

class _$AlarmConditionValueDoubleSerializer implements PrimitiveSerializer<AlarmConditionValueDouble> {
  @override
  final Iterable<Type> types = const [AlarmConditionValueDouble, _$AlarmConditionValueDouble];

  @override
  final String wireName = r'AlarmConditionValueDouble';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmConditionValueDouble object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.staticValue != null) {
      yield r'staticValue';
      yield serializers.serialize(
        object.staticValue,
        specifiedType: const FullType(double),
      );
    }
    if (object.dynamicValueArgument != null) {
      yield r'dynamicValueArgument';
      yield serializers.serialize(
        object.dynamicValueArgument,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmConditionValueDouble object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlarmConditionValueDoubleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'staticValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.staticValue = valueDes;
          break;
        case r'dynamicValueArgument':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dynamicValueArgument = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlarmConditionValueDouble deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmConditionValueDoubleBuilder();
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


