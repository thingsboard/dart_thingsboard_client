// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tb_resource_delete_result.g.dart';

/// TbResourceDeleteResult
///
/// Properties:
/// * [success] 
/// * [references] 
@BuiltValue()
abstract class TbResourceDeleteResult implements Built<TbResourceDeleteResult, TbResourceDeleteResultBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'references')
  BuiltMap<String, BuiltList<EntityInfo>>? get references;

  TbResourceDeleteResult._();

  factory TbResourceDeleteResult([void updates(TbResourceDeleteResultBuilder b)]) = _$TbResourceDeleteResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TbResourceDeleteResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TbResourceDeleteResult> get serializer => _$TbResourceDeleteResultSerializer();
}

class _$TbResourceDeleteResultSerializer implements PrimitiveSerializer<TbResourceDeleteResult> {
  @override
  final Iterable<Type> types = const [TbResourceDeleteResult, _$TbResourceDeleteResult];

  @override
  final String wireName = r'TbResourceDeleteResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TbResourceDeleteResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.references != null) {
      yield r'references';
      yield serializers.serialize(
        object.references,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(EntityInfo)])]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TbResourceDeleteResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TbResourceDeleteResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.success = valueDes;
          break;
        case r'references':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(EntityInfo)])]),
          ) as BuiltMap<String, BuiltList<EntityInfo>>?;
          if (valueDes == null) continue;
          result.references.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TbResourceDeleteResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TbResourceDeleteResultBuilder();
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


