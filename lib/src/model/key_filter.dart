// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_key.dart';
import 'package:thingsboard_client/src/model/key_filter_predicate.dart';
import 'package:thingsboard_client/src/model/entity_key_value_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key_filter.g.dart';

/// KeyFilter
///
/// Properties:
/// * [key] 
/// * [valueType] 
/// * [predicate] 
@BuiltValue()
abstract class KeyFilter implements Built<KeyFilter, KeyFilterBuilder> {
  @BuiltValueField(wireName: r'key')
  EntityKey? get key;

  @BuiltValueField(wireName: r'valueType')
  EntityKeyValueType? get valueType;
  // enum valueTypeEnum {  STRING,  NUMERIC,  BOOLEAN,  DATE_TIME,  };

  @BuiltValueField(wireName: r'predicate')
  KeyFilterPredicate? get predicate;

  KeyFilter._();

  factory KeyFilter([void updates(KeyFilterBuilder b)]) = _$KeyFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeyFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeyFilter> get serializer => _$KeyFilterSerializer();
}

class _$KeyFilterSerializer implements PrimitiveSerializer<KeyFilter> {
  @override
  final Iterable<Type> types = const [KeyFilter, _$KeyFilter];

  @override
  final String wireName = r'KeyFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeyFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(EntityKey),
      );
    }
    if (object.valueType != null) {
      yield r'valueType';
      yield serializers.serialize(
        object.valueType,
        specifiedType: const FullType(EntityKeyValueType),
      );
    }
    if (object.predicate != null) {
      yield r'predicate';
      yield serializers.serialize(
        object.predicate,
        specifiedType: const FullType(KeyFilterPredicate),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KeyFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KeyFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityKey),
          ) as EntityKey?;
          if (valueDes == null) continue;
          result.key.replace(valueDes);
          break;
        case r'valueType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityKeyValueType),
          ) as EntityKeyValueType?;
          if (valueDes == null) continue;
          result.valueType = valueDes;
          break;
        case r'predicate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(KeyFilterPredicate),
          ) as KeyFilterPredicate?;
          if (valueDes == null) continue;
          result.predicate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KeyFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeyFilterBuilder();
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


