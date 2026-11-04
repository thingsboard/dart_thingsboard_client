// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_settings_id.g.dart';

/// AdminSettingsId
///
/// Properties:
/// * [entityType] 
/// * [id] - ID of the entity, time-based UUID v1
@BuiltValue()
abstract class AdminSettingsId implements EntityId, Built<AdminSettingsId, AdminSettingsIdBuilder> {
  AdminSettingsId._();

  factory AdminSettingsId([void updates(AdminSettingsIdBuilder b)]) = _$AdminSettingsId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminSettingsIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminSettingsId> get serializer => _$AdminSettingsIdSerializer();
}

class _$AdminSettingsIdSerializer implements PrimitiveSerializer<AdminSettingsId> {
  @override
  final Iterable<Type> types = const [AdminSettingsId, _$AdminSettingsId];

  @override
  final String wireName = r'AdminSettingsId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminSettingsId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'entityType';
    yield serializers.serialize(
      object.entityType,
      specifiedType: const FullType(EntityType),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminSettingsId object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdminSettingsIdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityType),
          ) as EntityType;
          result.entityType = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminSettingsId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminSettingsIdBuilder();
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


