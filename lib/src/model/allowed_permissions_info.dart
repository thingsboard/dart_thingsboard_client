// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/merged_user_permissions.dart';
import 'package:thingsboard_client/src/model/resource.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/operation.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'allowed_permissions_info.g.dart';

/// AllowedPermissionsInfo
///
/// Properties:
/// * [operationsByResource] - Static map (vocabulary) of allowed operations by resource type
/// * [allowedForGroupRoleOperations] - Static set (vocabulary) of allowed operations for group roles
/// * [allowedForGroupOwnerOnlyOperations] - Static set (vocabulary) of allowed operations for group owner
/// * [allowedForGroupOwnerOnlyGroupOperations] - Static set (vocabulary) of allowed group operations for group owner
/// * [allowedResources] - Static set (vocabulary) of all possibly allowed resources. Static and depends only on the authority of the user
/// * [userPermissions] - JSON object with merged permission for all generic and group roles assigned to all user groups the user belongs to
/// * [userOwnerId] - Owner Id of the user (Tenant or Customer)
@BuiltValue()
abstract class AllowedPermissionsInfo
    implements Built<AllowedPermissionsInfo, AllowedPermissionsInfoBuilder> {
  /// Static map (vocabulary) of allowed operations by resource type
  @BuiltValueField(wireName: r'operationsByResource')
  BuiltMap<String, BuiltSet<Operation>>? get operationsByResource;

  /// Static set (vocabulary) of allowed operations for group roles
  @BuiltValueField(wireName: r'allowedForGroupRoleOperations')
  BuiltSet<Operation>? get allowedForGroupRoleOperations;

  /// Static set (vocabulary) of allowed operations for group owner
  @BuiltValueField(wireName: r'allowedForGroupOwnerOnlyOperations')
  BuiltSet<Operation>? get allowedForGroupOwnerOnlyOperations;

  /// Static set (vocabulary) of allowed group operations for group owner
  @BuiltValueField(wireName: r'allowedForGroupOwnerOnlyGroupOperations')
  BuiltSet<Operation>? get allowedForGroupOwnerOnlyGroupOperations;

  /// Static set (vocabulary) of all possibly allowed resources. Static and depends only on the authority of the user
  @BuiltValueField(wireName: r'allowedResources')
  BuiltSet<Resource>? get allowedResources;

  /// JSON object with merged permission for all generic and group roles assigned to all user groups the user belongs to
  @BuiltValueField(wireName: r'userPermissions')
  MergedUserPermissions? get userPermissions;

  /// Owner Id of the user (Tenant or Customer)
  @BuiltValueField(wireName: r'userOwnerId')
  EntityId? get userOwnerId;

  AllowedPermissionsInfo._();

  factory AllowedPermissionsInfo([
    void updates(AllowedPermissionsInfoBuilder b),
  ]) = _$AllowedPermissionsInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AllowedPermissionsInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AllowedPermissionsInfo> get serializer =>
      _$AllowedPermissionsInfoSerializer();
}

class _$AllowedPermissionsInfoSerializer
    implements PrimitiveSerializer<AllowedPermissionsInfo> {
  @override
  final Iterable<Type> types = const [
    AllowedPermissionsInfo,
    _$AllowedPermissionsInfo,
  ];

  @override
  final String wireName = r'AllowedPermissionsInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AllowedPermissionsInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.operationsByResource != null) {
      yield r'operationsByResource';
      yield serializers.serialize(
        object.operationsByResource,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(BuiltSet, [FullType(Operation)]),
        ]),
      );
    }
    if (object.allowedForGroupRoleOperations != null) {
      yield r'allowedForGroupRoleOperations';
      yield serializers.serialize(
        object.allowedForGroupRoleOperations,
        specifiedType: const FullType(BuiltSet, [FullType(Operation)]),
      );
    }
    if (object.allowedForGroupOwnerOnlyOperations != null) {
      yield r'allowedForGroupOwnerOnlyOperations';
      yield serializers.serialize(
        object.allowedForGroupOwnerOnlyOperations,
        specifiedType: const FullType(BuiltSet, [FullType(Operation)]),
      );
    }
    if (object.allowedForGroupOwnerOnlyGroupOperations != null) {
      yield r'allowedForGroupOwnerOnlyGroupOperations';
      yield serializers.serialize(
        object.allowedForGroupOwnerOnlyGroupOperations,
        specifiedType: const FullType(BuiltSet, [FullType(Operation)]),
      );
    }
    if (object.allowedResources != null) {
      yield r'allowedResources';
      yield serializers.serialize(
        object.allowedResources,
        specifiedType: const FullType(BuiltSet, [FullType(Resource)]),
      );
    }
    if (object.userPermissions != null) {
      yield r'userPermissions';
      yield serializers.serialize(
        object.userPermissions,
        specifiedType: const FullType(MergedUserPermissions),
      );
    }
    if (object.userOwnerId != null) {
      yield r'userOwnerId';
      yield serializers.serialize(
        object.userOwnerId,
        specifiedType: const FullType(EntityId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AllowedPermissionsInfo object, {
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
    required AllowedPermissionsInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'operationsByResource':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(BuiltSet, [FullType(Operation)]),
                    ]),
                  )
                  as BuiltMap<String, BuiltSet<Operation>>?;
          if (valueDes == null) continue;
          result.operationsByResource.replace(valueDes);
          break;
        case r'allowedForGroupRoleOperations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(Operation),
                    ]),
                  )
                  as BuiltSet<Operation>?;
          if (valueDes == null) continue;
          result.allowedForGroupRoleOperations.replace(valueDes);
          break;
        case r'allowedForGroupOwnerOnlyOperations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(Operation),
                    ]),
                  )
                  as BuiltSet<Operation>?;
          if (valueDes == null) continue;
          result.allowedForGroupOwnerOnlyOperations.replace(valueDes);
          break;
        case r'allowedForGroupOwnerOnlyGroupOperations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(Operation),
                    ]),
                  )
                  as BuiltSet<Operation>?;
          if (valueDes == null) continue;
          result.allowedForGroupOwnerOnlyGroupOperations.replace(valueDes);
          break;
        case r'allowedResources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(Resource),
                    ]),
                  )
                  as BuiltSet<Resource>?;
          if (valueDes == null) continue;
          result.allowedResources.replace(valueDes);
          break;
        case r'userPermissions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      MergedUserPermissions,
                    ),
                  )
                  as MergedUserPermissions?;
          if (valueDes == null) continue;
          result.userPermissions.replace(valueDes);
          break;
        case r'userOwnerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.userOwnerId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AllowedPermissionsInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllowedPermissionsInfoBuilder();
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
