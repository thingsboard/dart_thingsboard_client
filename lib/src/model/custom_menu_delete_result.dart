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
import 'package:thingsboard_client/src/model/cm_assignee_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_menu_delete_result.g.dart';

/// CustomMenuDeleteResult
///
/// Properties:
/// * [success]
/// * [assigneeType]
/// * [assigneeList]
@BuiltValue()
abstract class CustomMenuDeleteResult
    implements Built<CustomMenuDeleteResult, CustomMenuDeleteResultBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'assigneeType')
  CMAssigneeType? get assigneeType;
  // enum assigneeTypeEnum {  NO_ASSIGN,  ALL,  CUSTOMERS,  USERS,  USER_GROUPS,  };

  @BuiltValueField(wireName: r'assigneeList')
  BuiltList<EntityInfo>? get assigneeList;

  CustomMenuDeleteResult._();

  factory CustomMenuDeleteResult([
    void updates(CustomMenuDeleteResultBuilder b),
  ]) = _$CustomMenuDeleteResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomMenuDeleteResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomMenuDeleteResult> get serializer =>
      _$CustomMenuDeleteResultSerializer();
}

class _$CustomMenuDeleteResultSerializer
    implements PrimitiveSerializer<CustomMenuDeleteResult> {
  @override
  final Iterable<Type> types = const [
    CustomMenuDeleteResult,
    _$CustomMenuDeleteResult,
  ];

  @override
  final String wireName = r'CustomMenuDeleteResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomMenuDeleteResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.assigneeType != null) {
      yield r'assigneeType';
      yield serializers.serialize(
        object.assigneeType,
        specifiedType: const FullType(CMAssigneeType),
      );
    }
    if (object.assigneeList != null) {
      yield r'assigneeList';
      yield serializers.serialize(
        object.assigneeList,
        specifiedType: const FullType(BuiltList, [FullType(EntityInfo)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomMenuDeleteResult object, {
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
    required CustomMenuDeleteResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.success = valueDes;
          break;
        case r'assigneeType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CMAssigneeType),
                  )
                  as CMAssigneeType?;
          if (valueDes == null) continue;
          result.assigneeType = valueDes;
          break;
        case r'assigneeList':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EntityInfo),
                    ]),
                  )
                  as BuiltList<EntityInfo>?;
          if (valueDes == null) continue;
          result.assigneeList.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomMenuDeleteResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomMenuDeleteResultBuilder();
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
