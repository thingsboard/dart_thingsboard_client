// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/role_id.dart';
import 'package:thingsboard_client/src/model/entity_group_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'share_group_request.g.dart';

/// The Share Group Request JSON
///
/// Properties:
/// * [ownerId] - In case 'allUserGroup' is set to true, this property specifies the owner of the user group 'All'. Either Tenant or Customer Id.
/// * [allUserGroup] - Indicate that the group should be shared with user group 'All' that belongs to Tenant or Customer (see 'ownerId' property description).
/// * [userGroupId] - In case 'allUserGroup' is set to false, this property specifies the specific user group that the entity group should be shared with.
/// * [readElseWrite] - Used if 'roleIds' property is not present. if the value is 'true', creates role with read-only permissions. If the value is 'false', creates role with write permissions.
/// * [roleIds] - List of group role Ids that should be used to share the entity group with the user group. If not set, the platform will create new role (see 'readElseWrite' property description)
@BuiltValue()
abstract class ShareGroupRequest
    implements Built<ShareGroupRequest, ShareGroupRequestBuilder> {
  /// In case 'allUserGroup' is set to true, this property specifies the owner of the user group 'All'. Either Tenant or Customer Id.
  @BuiltValueField(wireName: r'ownerId')
  EntityId? get ownerId;

  /// Indicate that the group should be shared with user group 'All' that belongs to Tenant or Customer (see 'ownerId' property description).
  @BuiltValueField(wireName: r'allUserGroup')
  bool get allUserGroup;

  /// In case 'allUserGroup' is set to false, this property specifies the specific user group that the entity group should be shared with.
  @BuiltValueField(wireName: r'userGroupId')
  EntityGroupId? get userGroupId;

  /// Used if 'roleIds' property is not present. if the value is 'true', creates role with read-only permissions. If the value is 'false', creates role with write permissions.
  @BuiltValueField(wireName: r'readElseWrite')
  bool? get readElseWrite;

  /// List of group role Ids that should be used to share the entity group with the user group. If not set, the platform will create new role (see 'readElseWrite' property description)
  @BuiltValueField(wireName: r'roleIds')
  BuiltList<RoleId>? get roleIds;

  ShareGroupRequest._();

  factory ShareGroupRequest([void updates(ShareGroupRequestBuilder b)]) =
      _$ShareGroupRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShareGroupRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShareGroupRequest> get serializer =>
      _$ShareGroupRequestSerializer();
}

class _$ShareGroupRequestSerializer
    implements PrimitiveSerializer<ShareGroupRequest> {
  @override
  final Iterable<Type> types = const [ShareGroupRequest, _$ShareGroupRequest];

  @override
  final String wireName = r'ShareGroupRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShareGroupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ownerId != null) {
      yield r'ownerId';
      yield serializers.serialize(
        object.ownerId,
        specifiedType: const FullType(EntityId),
      );
    }
    yield r'allUserGroup';
    yield serializers.serialize(
      object.allUserGroup,
      specifiedType: const FullType(bool),
    );
    if (object.userGroupId != null) {
      yield r'userGroupId';
      yield serializers.serialize(
        object.userGroupId,
        specifiedType: const FullType(EntityGroupId),
      );
    }
    if (object.readElseWrite != null) {
      yield r'readElseWrite';
      yield serializers.serialize(
        object.readElseWrite,
        specifiedType: const FullType(bool),
      );
    }
    if (object.roleIds != null) {
      yield r'roleIds';
      yield serializers.serialize(
        object.roleIds,
        specifiedType: const FullType(BuiltList, [FullType(RoleId)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ShareGroupRequest object, {
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
    required ShareGroupRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ownerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.ownerId = valueDes;
          break;
        case r'allUserGroup':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.allUserGroup = valueDes;
          break;
        case r'userGroupId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityGroupId),
                  )
                  as EntityGroupId?;
          if (valueDes == null) continue;
          result.userGroupId.replace(valueDes);
          break;
        case r'readElseWrite':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.readElseWrite = valueDes;
          break;
        case r'roleIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RoleId),
                    ]),
                  )
                  as BuiltList<RoleId>?;
          if (valueDes == null) continue;
          result.roleIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ShareGroupRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShareGroupRequestBuilder();
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
