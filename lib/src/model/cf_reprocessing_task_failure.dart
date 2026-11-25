// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cf_reprocessing_task_failure.g.dart';

/// CfReprocessingTaskFailure
///
/// Properties:
/// * [error]
/// * [entityInfo]
@BuiltValue()
abstract class CfReprocessingTaskFailure
    implements
        Built<CfReprocessingTaskFailure, CfReprocessingTaskFailureBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'entityInfo')
  EntityInfo? get entityInfo;

  CfReprocessingTaskFailure._();

  factory CfReprocessingTaskFailure([
    void updates(CfReprocessingTaskFailureBuilder b),
  ]) = _$CfReprocessingTaskFailure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CfReprocessingTaskFailureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CfReprocessingTaskFailure> get serializer =>
      _$CfReprocessingTaskFailureSerializer();
}

class _$CfReprocessingTaskFailureSerializer
    implements PrimitiveSerializer<CfReprocessingTaskFailure> {
  @override
  final Iterable<Type> types = const [
    CfReprocessingTaskFailure,
    _$CfReprocessingTaskFailure,
  ];

  @override
  final String wireName = r'CfReprocessingTaskFailure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CfReprocessingTaskFailure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityInfo != null) {
      yield r'entityInfo';
      yield serializers.serialize(
        object.entityInfo,
        specifiedType: const FullType(EntityInfo),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CfReprocessingTaskFailure object, {
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
    required CfReprocessingTaskFailureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'entityInfo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityInfo),
                  )
                  as EntityInfo?;
          if (valueDes == null) continue;
          result.entityInfo.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CfReprocessingTaskFailure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CfReprocessingTaskFailureBuilder();
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
