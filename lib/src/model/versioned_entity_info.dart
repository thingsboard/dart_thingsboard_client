// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'versioned_entity_info.g.dart';

/// VersionedEntityInfo
///
/// Properties:
/// * [externalId] 
/// * [path] 
@BuiltValue()
abstract class VersionedEntityInfo implements Built<VersionedEntityInfo, VersionedEntityInfoBuilder> {
  @BuiltValueField(wireName: r'externalId')
  EntityId? get externalId;

  @BuiltValueField(wireName: r'path')
  String? get path;

  VersionedEntityInfo._();

  factory VersionedEntityInfo([void updates(VersionedEntityInfoBuilder b)]) = _$VersionedEntityInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VersionedEntityInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VersionedEntityInfo> get serializer => _$VersionedEntityInfoSerializer();
}

class _$VersionedEntityInfoSerializer implements PrimitiveSerializer<VersionedEntityInfo> {
  @override
  final Iterable<Type> types = const [VersionedEntityInfo, _$VersionedEntityInfo];

  @override
  final String wireName = r'VersionedEntityInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VersionedEntityInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.externalId != null) {
      yield r'externalId';
      yield serializers.serialize(
        object.externalId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VersionedEntityInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VersionedEntityInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityId),
          ) as EntityId?;
          if (valueDes == null) continue;
          result.externalId = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VersionedEntityInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VersionedEntityInfoBuilder();
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


