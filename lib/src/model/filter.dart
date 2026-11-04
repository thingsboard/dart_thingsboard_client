// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/key_filter.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter.g.dart';

/// Filter
///
/// Properties:
/// * [id] 
/// * [filter] 
/// * [keyFilters] 
@BuiltValue()
abstract class Filter implements Built<Filter, FilterBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'filter')
  String? get filter;

  @BuiltValueField(wireName: r'keyFilters')
  BuiltList<KeyFilter>? get keyFilters;

  Filter._();

  factory Filter([void updates(FilterBuilder b)]) = _$Filter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Filter> get serializer => _$FilterSerializer();
}

class _$FilterSerializer implements PrimitiveSerializer<Filter> {
  @override
  final Iterable<Type> types = const [Filter, _$Filter];

  @override
  final String wireName = r'Filter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Filter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.filter != null) {
      yield r'filter';
      yield serializers.serialize(
        object.filter,
        specifiedType: const FullType(String),
      );
    }
    if (object.keyFilters != null) {
      yield r'keyFilters';
      yield serializers.serialize(
        object.keyFilters,
        specifiedType: const FullType(BuiltList, [FullType(KeyFilter)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Filter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'filter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.filter = valueDes;
          break;
        case r'keyFilters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(KeyFilter)]),
          ) as BuiltList<KeyFilter>?;
          if (valueDes == null) continue;
          result.keyFilters.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Filter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterBuilder();
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


