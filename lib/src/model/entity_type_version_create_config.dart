// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/sync_strategy.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_type_version_create_config.g.dart';

/// EntityTypeVersionCreateConfig
///
/// Properties:
/// * [saveRelations]
/// * [saveAttributes]
/// * [saveCredentials]
/// * [saveCalculatedFields]
/// * [savePermissions]
/// * [saveGroupEntities]
/// * [syncStrategy]
/// * [entityIds]
/// * [allEntities]
@BuiltValue()
abstract class EntityTypeVersionCreateConfig
    implements
        Built<
          EntityTypeVersionCreateConfig,
          EntityTypeVersionCreateConfigBuilder
        > {
  @BuiltValueField(wireName: r'saveRelations')
  bool? get saveRelations;

  @BuiltValueField(wireName: r'saveAttributes')
  bool? get saveAttributes;

  @BuiltValueField(wireName: r'saveCredentials')
  bool? get saveCredentials;

  @BuiltValueField(wireName: r'saveCalculatedFields')
  bool? get saveCalculatedFields;

  @BuiltValueField(wireName: r'savePermissions')
  bool? get savePermissions;

  @BuiltValueField(wireName: r'saveGroupEntities')
  bool? get saveGroupEntities;

  @BuiltValueField(wireName: r'syncStrategy')
  SyncStrategy? get syncStrategy;
  // enum syncStrategyEnum {  MERGE,  OVERWRITE,  };

  @BuiltValueField(wireName: r'entityIds')
  BuiltList<String>? get entityIds;

  @BuiltValueField(wireName: r'allEntities')
  bool? get allEntities;

  EntityTypeVersionCreateConfig._();

  factory EntityTypeVersionCreateConfig([
    void updates(EntityTypeVersionCreateConfigBuilder b),
  ]) = _$EntityTypeVersionCreateConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityTypeVersionCreateConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityTypeVersionCreateConfig> get serializer =>
      _$EntityTypeVersionCreateConfigSerializer();
}

class _$EntityTypeVersionCreateConfigSerializer
    implements PrimitiveSerializer<EntityTypeVersionCreateConfig> {
  @override
  final Iterable<Type> types = const [
    EntityTypeVersionCreateConfig,
    _$EntityTypeVersionCreateConfig,
  ];

  @override
  final String wireName = r'EntityTypeVersionCreateConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityTypeVersionCreateConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.saveRelations != null) {
      yield r'saveRelations';
      yield serializers.serialize(
        object.saveRelations,
        specifiedType: const FullType(bool),
      );
    }
    if (object.saveAttributes != null) {
      yield r'saveAttributes';
      yield serializers.serialize(
        object.saveAttributes,
        specifiedType: const FullType(bool),
      );
    }
    if (object.saveCredentials != null) {
      yield r'saveCredentials';
      yield serializers.serialize(
        object.saveCredentials,
        specifiedType: const FullType(bool),
      );
    }
    if (object.saveCalculatedFields != null) {
      yield r'saveCalculatedFields';
      yield serializers.serialize(
        object.saveCalculatedFields,
        specifiedType: const FullType(bool),
      );
    }
    if (object.savePermissions != null) {
      yield r'savePermissions';
      yield serializers.serialize(
        object.savePermissions,
        specifiedType: const FullType(bool),
      );
    }
    if (object.saveGroupEntities != null) {
      yield r'saveGroupEntities';
      yield serializers.serialize(
        object.saveGroupEntities,
        specifiedType: const FullType(bool),
      );
    }
    if (object.syncStrategy != null) {
      yield r'syncStrategy';
      yield serializers.serialize(
        object.syncStrategy,
        specifiedType: const FullType(SyncStrategy),
      );
    }
    if (object.entityIds != null) {
      yield r'entityIds';
      yield serializers.serialize(
        object.entityIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.allEntities != null) {
      yield r'allEntities';
      yield serializers.serialize(
        object.allEntities,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityTypeVersionCreateConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EntityTypeVersionCreateConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'saveRelations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.saveRelations = valueDes;
          break;
        case r'saveAttributes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.saveAttributes = valueDes;
          break;
        case r'saveCredentials':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.saveCredentials = valueDes;
          break;
        case r'saveCalculatedFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.saveCalculatedFields = valueDes;
          break;
        case r'savePermissions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.savePermissions = valueDes;
          break;
        case r'saveGroupEntities':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.saveGroupEntities = valueDes;
          break;
        case r'syncStrategy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SyncStrategy),
                  )
                  as SyncStrategy?;
          if (valueDes == null) continue;
          result.syncStrategy = valueDes;
          break;
        case r'entityIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.entityIds.replace(valueDes);
          break;
        case r'allEntities':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.allEntities = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityTypeVersionCreateConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityTypeVersionCreateConfigBuilder();
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
