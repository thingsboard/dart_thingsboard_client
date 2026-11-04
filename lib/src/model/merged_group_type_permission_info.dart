// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/entity_group_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'merged_group_type_permission_info.g.dart';

/// MergedGroupTypePermissionInfo
///
/// Properties:
/// * [entityGroupIds] - List of Entity Groups in case of group roles are assigned to the user (user group)
/// * [hasGenericRead] - Indicates if generic permission assigned to the user group.
@BuiltValue()
abstract class MergedGroupTypePermissionInfo
    implements
        Built<
          MergedGroupTypePermissionInfo,
          MergedGroupTypePermissionInfoBuilder
        > {
  /// List of Entity Groups in case of group roles are assigned to the user (user group)
  @BuiltValueField(wireName: r'entityGroupIds')
  BuiltList<EntityGroupId>? get entityGroupIds;

  /// Indicates if generic permission assigned to the user group.
  @BuiltValueField(wireName: r'hasGenericRead')
  bool? get hasGenericRead;

  MergedGroupTypePermissionInfo._();

  factory MergedGroupTypePermissionInfo([
    void updates(MergedGroupTypePermissionInfoBuilder b),
  ]) = _$MergedGroupTypePermissionInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MergedGroupTypePermissionInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MergedGroupTypePermissionInfo> get serializer =>
      _$MergedGroupTypePermissionInfoSerializer();
}

class _$MergedGroupTypePermissionInfoSerializer
    implements PrimitiveSerializer<MergedGroupTypePermissionInfo> {
  @override
  final Iterable<Type> types = const [
    MergedGroupTypePermissionInfo,
    _$MergedGroupTypePermissionInfo,
  ];

  @override
  final String wireName = r'MergedGroupTypePermissionInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MergedGroupTypePermissionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entityGroupIds != null) {
      yield r'entityGroupIds';
      yield serializers.serialize(
        object.entityGroupIds,
        specifiedType: const FullType(BuiltList, [FullType(EntityGroupId)]),
      );
    }
    if (object.hasGenericRead != null) {
      yield r'hasGenericRead';
      yield serializers.serialize(
        object.hasGenericRead,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MergedGroupTypePermissionInfo object, {
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
    required MergedGroupTypePermissionInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityGroupIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EntityGroupId),
                    ]),
                  )
                  as BuiltList<EntityGroupId>?;
          if (valueDes == null) continue;
          result.entityGroupIds.replace(valueDes);
          break;
        case r'hasGenericRead':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.hasGenericRead = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MergedGroupTypePermissionInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MergedGroupTypePermissionInfoBuilder();
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
