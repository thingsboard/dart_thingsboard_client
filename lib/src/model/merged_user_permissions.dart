// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/merged_group_permission_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/operation.dart';
import 'package:thingsboard_client/src/model/merged_group_type_permission_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'merged_user_permissions.g.dart';

/// MergedUserPermissions
///
/// Properties:
/// * [genericPermissions] - Map of permissions defined using generic roles ('Customer Administrator', etc)
/// * [groupPermissions] - Map of permissions defined using group roles ('Read' or 'Write' access to specific entity group, etc)
/// * [readGroupPermissions] - Map of read permissions per entity type. Used on the UI to enable/disable certain components.
/// * [readEntityPermissions] - Map of read permissions per resource. Used on the UI to enable/disable certain components.
/// * [readAttrPermissions] - Map of read entity attributes permissions per resource. Used on the UI to enable/disable certain tabs.
/// * [readTsPermissions] - Map of read entity time-series permissions per resource. Used on the UI to enable/disable certain tabs.
@BuiltValue()
abstract class MergedUserPermissions implements Built<MergedUserPermissions, MergedUserPermissionsBuilder> {
  /// Map of permissions defined using generic roles ('Customer Administrator', etc)
  @BuiltValueField(wireName: r'genericPermissions')
  BuiltMap<String, BuiltSet<Operation>>? get genericPermissions;

  /// Map of permissions defined using group roles ('Read' or 'Write' access to specific entity group, etc)
  @BuiltValueField(wireName: r'groupPermissions')
  BuiltMap<String, MergedGroupPermissionInfo>? get groupPermissions;

  /// Map of read permissions per entity type. Used on the UI to enable/disable certain components.
  @BuiltValueField(wireName: r'readGroupPermissions')
  BuiltMap<String, MergedGroupTypePermissionInfo>? get readGroupPermissions;

  /// Map of read permissions per resource. Used on the UI to enable/disable certain components.
  @BuiltValueField(wireName: r'readEntityPermissions')
  BuiltMap<String, MergedGroupTypePermissionInfo>? get readEntityPermissions;

  /// Map of read entity attributes permissions per resource. Used on the UI to enable/disable certain tabs.
  @BuiltValueField(wireName: r'readAttrPermissions')
  BuiltMap<String, MergedGroupTypePermissionInfo>? get readAttrPermissions;

  /// Map of read entity time-series permissions per resource. Used on the UI to enable/disable certain tabs.
  @BuiltValueField(wireName: r'readTsPermissions')
  BuiltMap<String, MergedGroupTypePermissionInfo>? get readTsPermissions;

  MergedUserPermissions._();

  factory MergedUserPermissions([void updates(MergedUserPermissionsBuilder b)]) = _$MergedUserPermissions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MergedUserPermissionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MergedUserPermissions> get serializer => _$MergedUserPermissionsSerializer();
}

class _$MergedUserPermissionsSerializer implements PrimitiveSerializer<MergedUserPermissions> {
  @override
  final Iterable<Type> types = const [MergedUserPermissions, _$MergedUserPermissions];

  @override
  final String wireName = r'MergedUserPermissions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MergedUserPermissions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.genericPermissions != null) {
      yield r'genericPermissions';
      yield serializers.serialize(
        object.genericPermissions,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltSet, [FullType(Operation)])]),
      );
    }
    if (object.groupPermissions != null) {
      yield r'groupPermissions';
      yield serializers.serialize(
        object.groupPermissions,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(MergedGroupPermissionInfo)]),
      );
    }
    if (object.readGroupPermissions != null) {
      yield r'readGroupPermissions';
      yield serializers.serialize(
        object.readGroupPermissions,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(MergedGroupTypePermissionInfo)]),
      );
    }
    if (object.readEntityPermissions != null) {
      yield r'readEntityPermissions';
      yield serializers.serialize(
        object.readEntityPermissions,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(MergedGroupTypePermissionInfo)]),
      );
    }
    if (object.readAttrPermissions != null) {
      yield r'readAttrPermissions';
      yield serializers.serialize(
        object.readAttrPermissions,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(MergedGroupTypePermissionInfo)]),
      );
    }
    if (object.readTsPermissions != null) {
      yield r'readTsPermissions';
      yield serializers.serialize(
        object.readTsPermissions,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(MergedGroupTypePermissionInfo)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MergedUserPermissions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MergedUserPermissionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'genericPermissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(BuiltSet, [FullType(Operation)])]),
          ) as BuiltMap<String, BuiltSet<Operation>>?;
          if (valueDes == null) continue;
          result.genericPermissions.replace(valueDes);
          break;
        case r'groupPermissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(MergedGroupPermissionInfo)]),
          ) as BuiltMap<String, MergedGroupPermissionInfo>?;
          if (valueDes == null) continue;
          result.groupPermissions.replace(valueDes);
          break;
        case r'readGroupPermissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(MergedGroupTypePermissionInfo)]),
          ) as BuiltMap<String, MergedGroupTypePermissionInfo>?;
          if (valueDes == null) continue;
          result.readGroupPermissions.replace(valueDes);
          break;
        case r'readEntityPermissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(MergedGroupTypePermissionInfo)]),
          ) as BuiltMap<String, MergedGroupTypePermissionInfo>?;
          if (valueDes == null) continue;
          result.readEntityPermissions.replace(valueDes);
          break;
        case r'readAttrPermissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(MergedGroupTypePermissionInfo)]),
          ) as BuiltMap<String, MergedGroupTypePermissionInfo>?;
          if (valueDes == null) continue;
          result.readAttrPermissions.replace(valueDes);
          break;
        case r'readTsPermissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(MergedGroupTypePermissionInfo)]),
          ) as BuiltMap<String, MergedGroupTypePermissionInfo>?;
          if (valueDes == null) continue;
          result.readTsPermissions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MergedUserPermissions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MergedUserPermissionsBuilder();
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


