// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agg_key_input.dart';
import 'package:thingsboard_client/src/model/agg_function_input.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agg_input.g.dart';

/// AggInput
///
/// Properties:
/// * [type] 
@BuiltValue(instantiable: false)
abstract class AggInput  {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'function': AggFunctionInput,
    r'key': AggKeyInput,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<AggInput> get serializer => _$AggInputSerializer();
}

extension AggInputDiscriminatorExt on AggInput {
    String? get discriminatorValue {
        if (this is AggFunctionInput) {
            return r'function';
        }
        if (this is AggKeyInput) {
            return r'key';
        }
        return null;
    }
}
extension AggInputBuilderDiscriminatorExt on AggInputBuilder {
    String? get discriminatorValue {
        if (this is AggFunctionInputBuilder) {
            return r'function';
        }
        if (this is AggKeyInputBuilder) {
            return r'key';
        }
        return null;
    }
}

class _$AggInputSerializer implements PrimitiveSerializer<AggInput> {
  @override
  final Iterable<Type> types = const [AggInput];

  @override
  final String wireName = r'AggInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AggInput object, {
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
    AggInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AggFunctionInput) {
      return serializers.serialize(object, specifiedType: FullType(AggFunctionInput))!;
    }
    if (object is AggKeyInput) {
      return serializers.serialize(object, specifiedType: FullType(AggKeyInput))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AggInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(AggInput.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'function':
        return serializers.deserialize(serialized, specifiedType: FullType(AggFunctionInput)) as AggFunctionInput;
      case r'key':
        return serializers.deserialize(serialized, specifiedType: FullType(AggKeyInput)) as AggKeyInput;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($AggInput)) as $AggInput;
    }
  }
}


/// a concrete implementation of [AggInput], since [AggInput] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AggInput implements AggInput, Built<$AggInput, $AggInputBuilder> {
  $AggInput._();

  factory $AggInput([void Function($AggInputBuilder)? updates]) = _$$AggInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AggInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AggInput> get serializer => _$$AggInputSerializer();
}

class _$$AggInputSerializer implements PrimitiveSerializer<$AggInput> {
  @override
  final Iterable<Type> types = const [$AggInput, _$$AggInput];

  @override
  final String wireName = r'$AggInput';

  @override
  Object serialize(
    Serializers serializers,
    $AggInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AggInput))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AggInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  $AggInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AggInputBuilder();
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

