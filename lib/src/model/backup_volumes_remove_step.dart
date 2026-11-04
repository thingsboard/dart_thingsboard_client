// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agent_app_step.dart';
import 'package:thingsboard_client/src/model/agent_app_step_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backup_volumes_remove_step.g.dart';

/// BackupVolumesRemoveStep
///
/// Properties:
/// * [id] 
/// * [nextId] 
/// * [title] 
/// * [templateOnly] 
/// * [condition] 
/// * [stateful] 
/// * [type] 
@BuiltValue()
abstract class BackupVolumesRemoveStep implements AgentAppStep, Built<BackupVolumesRemoveStep, BackupVolumesRemoveStepBuilder> {
  BackupVolumesRemoveStep._();

  factory BackupVolumesRemoveStep([void updates(BackupVolumesRemoveStepBuilder b)]) = _$BackupVolumesRemoveStep;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackupVolumesRemoveStepBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BackupVolumesRemoveStep> get serializer => _$BackupVolumesRemoveStepSerializer();
}

class _$BackupVolumesRemoveStepSerializer implements PrimitiveSerializer<BackupVolumesRemoveStep> {
  @override
  final Iterable<Type> types = const [BackupVolumesRemoveStep, _$BackupVolumesRemoveStep];

  @override
  final String wireName = r'BackupVolumesRemoveStep';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BackupVolumesRemoveStep object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nextId != null) {
      yield r'nextId';
      yield serializers.serialize(
        object.nextId,
        specifiedType: const FullType(String),
      );
    }
    if (object.condition != null) {
      yield r'condition';
      yield serializers.serialize(
        object.condition,
        specifiedType: const FullType(String),
      );
    }
    if (object.templateOnly != null) {
      yield r'templateOnly';
      yield serializers.serialize(
        object.templateOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(AgentAppStepType),
      );
    }
    if (object.stateful != null) {
      yield r'stateful';
      yield serializers.serialize(
        object.stateful,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BackupVolumesRemoveStep object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BackupVolumesRemoveStepBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nextId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nextId = valueDes;
          break;
        case r'condition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.condition = valueDes;
          break;
        case r'templateOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.templateOnly = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentAppStepType),
          ) as AgentAppStepType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'stateful':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.stateful = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BackupVolumesRemoveStep deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackupVolumesRemoveStepBuilder();
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


