// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trendz_view_config.g.dart';

/// TrendzViewConfig
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [runtimeFilters] 
@BuiltValue()
abstract class TrendzViewConfig implements Built<TrendzViewConfig, TrendzViewConfigBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'runtimeFilters')
  BuiltList<JsonObject?>? get runtimeFilters;

  TrendzViewConfig._();

  factory TrendzViewConfig([void updates(TrendzViewConfigBuilder b)]) = _$TrendzViewConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrendzViewConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrendzViewConfig> get serializer => _$TrendzViewConfigSerializer();
}

class _$TrendzViewConfigSerializer implements PrimitiveSerializer<TrendzViewConfig> {
  @override
  final Iterable<Type> types = const [TrendzViewConfig, _$TrendzViewConfig];

  @override
  final String wireName = r'TrendzViewConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrendzViewConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.runtimeFilters != null) {
      yield r'runtimeFilters';
      yield serializers.serialize(
        object.runtimeFilters,
        specifiedType: const FullType(BuiltList, [FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrendzViewConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrendzViewConfigBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'runtimeFilters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType.nullable(JsonObject)]),
          ) as BuiltList<JsonObject?>?;
          if (valueDes == null) continue;
          result.runtimeFilters.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrendzViewConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrendzViewConfigBuilder();
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


