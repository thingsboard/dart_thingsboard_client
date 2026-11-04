// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/task_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/job_configuration.dart';
import 'package:thingsboard_client/src/model/calculated_field_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cf_reprocessing_job_configuration.g.dart';

/// CfReprocessingJobConfiguration
///
/// Properties:
/// * [tasksKey] 
/// * [toReprocess] 
/// * [type] 
/// * [calculatedFieldId] 
/// * [calculatedFieldName] 
/// * [startTs] 
/// * [endTs] 
@BuiltValue()
abstract class CfReprocessingJobConfiguration implements JobConfiguration, Built<CfReprocessingJobConfiguration, CfReprocessingJobConfigurationBuilder> {
  @BuiltValueField(wireName: r'calculatedFieldId')
  CalculatedFieldId get calculatedFieldId;

  @BuiltValueField(wireName: r'endTs')
  int? get endTs;

  @BuiltValueField(wireName: r'calculatedFieldName')
  String? get calculatedFieldName;

  @BuiltValueField(wireName: r'startTs')
  int? get startTs;

  CfReprocessingJobConfiguration._();

  factory CfReprocessingJobConfiguration([void updates(CfReprocessingJobConfigurationBuilder b)]) = _$CfReprocessingJobConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CfReprocessingJobConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CfReprocessingJobConfiguration> get serializer => _$CfReprocessingJobConfigurationSerializer();
}

class _$CfReprocessingJobConfigurationSerializer implements PrimitiveSerializer<CfReprocessingJobConfiguration> {
  @override
  final Iterable<Type> types = const [CfReprocessingJobConfiguration, _$CfReprocessingJobConfiguration];

  @override
  final String wireName = r'CfReprocessingJobConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CfReprocessingJobConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'calculatedFieldId';
    yield serializers.serialize(
      object.calculatedFieldId,
      specifiedType: const FullType(CalculatedFieldId),
    );
    if (object.endTs != null) {
      yield r'endTs';
      yield serializers.serialize(
        object.endTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.toReprocess != null) {
      yield r'toReprocess';
      yield serializers.serialize(
        object.toReprocess,
        specifiedType: const FullType(BuiltList, [FullType(TaskResult)]),
      );
    }
    if (object.calculatedFieldName != null) {
      yield r'calculatedFieldName';
      yield serializers.serialize(
        object.calculatedFieldName,
        specifiedType: const FullType(String),
      );
    }
    if (object.startTs != null) {
      yield r'startTs';
      yield serializers.serialize(
        object.startTs,
        specifiedType: const FullType(int),
      );
    }
    yield r'tasksKey';
    yield serializers.serialize(
      object.tasksKey,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CfReprocessingJobConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CfReprocessingJobConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'calculatedFieldId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CalculatedFieldId),
          ) as CalculatedFieldId;
          result.calculatedFieldId.replace(valueDes);
          break;
        case r'endTs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.endTs = valueDes;
          break;
        case r'toReprocess':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TaskResult)]),
          ) as BuiltList<TaskResult>?;
          if (valueDes == null) continue;
          result.toReprocess.replace(valueDes);
          break;
        case r'calculatedFieldName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.calculatedFieldName = valueDes;
          break;
        case r'startTs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.startTs = valueDes;
          break;
        case r'tasksKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tasksKey = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CfReprocessingJobConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CfReprocessingJobConfigurationBuilder();
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


