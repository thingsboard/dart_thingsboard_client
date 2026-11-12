// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/device_group_ota_package.dart';
import 'package:thingsboard_client/src/model/entity_relation.dart';
import 'package:thingsboard_client/src/model/group_permission.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/calculated_field.dart';
import 'package:thingsboard_client/src/model/entity_export_data.dart';
import 'package:thingsboard_client/src/model/attribute_export_data.dart';
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:thingsboard_client/src/model/exportable_entity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_group_export_data.g.dart';

/// EntityGroupExportData
///
/// Properties:
/// * [entity]
/// * [relations]
/// * [attributes] - Map of attributes where key is the scope of attributes and value is the list of attributes for that scope
/// * [calculatedFields]
/// * [entityType]
/// * [permissions] - Group permissions to apply to this group on import. Meaningful only for USER groups; ignored for groups of any other type. Each entry's userGroupId, roleId, and entityGroupId may use the external IDs of other entities in this payload or the IDs of entities that already exist on the target tenant; the importer resolves them against the target tenant. System-tenant roles are not allowed and will be rejected. Leave null to skip permission management for this group.
/// * [groupOtaPackages] - OTA package assignments to apply to this group on import. Meaningful only for DEVICE groups; ignored for groups of any other type. Each entry's otaPackageId and groupId may reference external IDs of entities in this payload or IDs of entities that already exist on the target tenant. Leave null to skip OTA assignment management for this group.
/// * [groupEntities] - Marker indicating that the group's member entities are intended to be transported alongside this payload. Used by flows that convey members through a side channel (notably the version control flow, which stores members in a separate git index). The solution import API does not consume this flag and does not require it to be set. Safe to leave false (default).
/// * [memberIds] - External IDs of the entities that should be members of this group after import. Each ID is resolved against the target tenant — by other entity in this payload, by external ID, or by existing internal ID — and the matching entities are added to the group. The import fails if any listed member cannot be resolved. Must be null for the special 'All' group (whose membership is implicit and managed by the platform). Leave null to skip membership wiring; existing membership on the target tenant is left untouched.
@BuiltValue()
abstract class EntityGroupExportData
    implements
        EntityExportData,
        Built<EntityGroupExportData, EntityGroupExportDataBuilder> {
  /// OTA package assignments to apply to this group on import. Meaningful only for DEVICE groups; ignored for groups of any other type. Each entry's otaPackageId and groupId may reference external IDs of entities in this payload or IDs of entities that already exist on the target tenant. Leave null to skip OTA assignment management for this group.
  @BuiltValueField(wireName: r'groupOtaPackages')
  BuiltList<DeviceGroupOtaPackage>? get groupOtaPackages;

  /// Group permissions to apply to this group on import. Meaningful only for USER groups; ignored for groups of any other type. Each entry's userGroupId, roleId, and entityGroupId may use the external IDs of other entities in this payload or the IDs of entities that already exist on the target tenant; the importer resolves them against the target tenant. System-tenant roles are not allowed and will be rejected. Leave null to skip permission management for this group.
  @BuiltValueField(wireName: r'permissions')
  BuiltList<GroupPermission>? get permissions;

  /// Marker indicating that the group's member entities are intended to be transported alongside this payload. Used by flows that convey members through a side channel (notably the version control flow, which stores members in a separate git index). The solution import API does not consume this flag and does not require it to be set. Safe to leave false (default).
  @BuiltValueField(wireName: r'groupEntities')
  bool? get groupEntities;

  /// External IDs of the entities that should be members of this group after import. Each ID is resolved against the target tenant — by other entity in this payload, by external ID, or by existing internal ID — and the matching entities are added to the group. The import fails if any listed member cannot be resolved. Must be null for the special 'All' group (whose membership is implicit and managed by the platform). Leave null to skip membership wiring; existing membership on the target tenant is left untouched.
  @BuiltValueField(wireName: r'memberIds')
  BuiltList<String>? get memberIds;

  EntityGroupExportData._();

  factory EntityGroupExportData([
    void updates(EntityGroupExportDataBuilder b),
  ]) = _$EntityGroupExportData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityGroupExportDataBuilder b) =>
      b..entityType = EntityType.ENTITY_GROUP;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityGroupExportData> get serializer =>
      _$EntityGroupExportDataSerializer();
}

class _$EntityGroupExportDataSerializer
    implements PrimitiveSerializer<EntityGroupExportData> {
  @override
  final Iterable<Type> types = const [
    EntityGroupExportData,
    _$EntityGroupExportData,
  ];

  @override
  final String wireName = r'EntityGroupExportData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityGroupExportData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.groupOtaPackages != null) {
      yield r'groupOtaPackages';
      yield serializers.serialize(
        object.groupOtaPackages,
        specifiedType: const FullType(BuiltList, [
          FullType(DeviceGroupOtaPackage),
        ]),
      );
    }
    if (object.permissions != null) {
      yield r'permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType(BuiltList, [FullType(GroupPermission)]),
      );
    }
    yield r'entityType';
    yield serializers.serialize(
      object.entityType,
      specifiedType: const FullType(EntityType),
    );
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(BuiltList, [FullType(AttributeExportData)]),
        ]),
      );
    }
    if (object.groupEntities != null) {
      yield r'groupEntities';
      yield serializers.serialize(
        object.groupEntities,
        specifiedType: const FullType(bool),
      );
    }
    if (object.relations != null) {
      yield r'relations';
      yield serializers.serialize(
        object.relations,
        specifiedType: const FullType(BuiltList, [FullType(EntityRelation)]),
      );
    }
    if (object.calculatedFields != null) {
      yield r'calculatedFields';
      yield serializers.serialize(
        object.calculatedFields,
        specifiedType: const FullType(BuiltList, [FullType(CalculatedField)]),
      );
    }
    if (object.memberIds != null) {
      yield r'memberIds';
      yield serializers.serialize(
        object.memberIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.entity != null) {
      yield r'entity';
      yield serializers.serialize(
        object.entity,
        specifiedType: const FullType(ExportableEntity),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityGroupExportData object, {
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
    required EntityGroupExportDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'groupOtaPackages':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(DeviceGroupOtaPackage),
                    ]),
                  )
                  as BuiltList<DeviceGroupOtaPackage>?;
          if (valueDes == null) continue;
          result.groupOtaPackages.replace(valueDes);
          break;
        case r'permissions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(GroupPermission),
                    ]),
                  )
                  as BuiltList<GroupPermission>?;
          if (valueDes == null) continue;
          result.permissions.replace(valueDes);
          break;
        case r'entityType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EntityType),
                  )
                  as EntityType;
          result.entityType = valueDes;
          break;
        case r'attributes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(BuiltList, [FullType(AttributeExportData)]),
                    ]),
                  )
                  as BuiltMap<String, BuiltList<AttributeExportData>>?;
          if (valueDes == null) continue;
          result.attributes.replace(valueDes);
          break;
        case r'groupEntities':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.groupEntities = valueDes;
          break;
        case r'relations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EntityRelation),
                    ]),
                  )
                  as BuiltList<EntityRelation>?;
          if (valueDes == null) continue;
          result.relations.replace(valueDes);
          break;
        case r'calculatedFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(CalculatedField),
                    ]),
                  )
                  as BuiltList<CalculatedField>?;
          if (valueDes == null) continue;
          result.calculatedFields.replace(valueDes);
          break;
        case r'memberIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.memberIds.replace(valueDes);
          break;
        case r'entity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ExportableEntity),
                  )
                  as ExportableEntity?;
          if (valueDes == null) continue;
          result.entity.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityGroupExportData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityGroupExportDataBuilder();
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
