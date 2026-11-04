// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/report_task_result.dart';
import 'package:thingsboard_client/src/model/dummy_task_result.dart';
import 'package:thingsboard_client/src/model/cf_reprocessing_task_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task_result.g.dart';

/// TaskResult
///
/// Properties:
/// * [key] 
/// * [success] 
/// * [discarded] 
/// * [finishTs] 
/// * [error] 
/// * [jobType] 
@BuiltValue(instantiable: false)
abstract class TaskResult  {
  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'discarded')
  bool? get discarded;

  @BuiltValueField(wireName: r'finishTs')
  int? get finishTs;

  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'jobType')
  String get jobType;

  static const String discriminatorFieldName = r'jobType';

  static const Map<String, Type> discriminatorMapping = {
    r'CF_REPROCESSING': CfReprocessingTaskResult,
    r'DUMMY': DummyTaskResult,
    r'REPORT': ReportTaskResult,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<TaskResult> get serializer => _$TaskResultSerializer();
}

extension TaskResultDiscriminatorExt on TaskResult {
    String? get discriminatorValue {
        if (this is CfReprocessingTaskResult) {
            return r'CF_REPROCESSING';
        }
        if (this is DummyTaskResult) {
            return r'DUMMY';
        }
        if (this is ReportTaskResult) {
            return r'REPORT';
        }
        return null;
    }
}
extension TaskResultBuilderDiscriminatorExt on TaskResultBuilder {
    String? get discriminatorValue {
        if (this is CfReprocessingTaskResultBuilder) {
            return r'CF_REPROCESSING';
        }
        if (this is DummyTaskResultBuilder) {
            return r'DUMMY';
        }
        if (this is ReportTaskResultBuilder) {
            return r'REPORT';
        }
        return null;
    }
}

class _$TaskResultSerializer implements PrimitiveSerializer<TaskResult> {
  @override
  final Iterable<Type> types = const [TaskResult];

  @override
  final String wireName = r'TaskResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaskResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.discarded != null) {
      yield r'discarded';
      yield serializers.serialize(
        object.discarded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.finishTs != null) {
      yield r'finishTs';
      yield serializers.serialize(
        object.finishTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
    yield r'jobType';
    yield serializers.serialize(
      object.jobType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TaskResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is CfReprocessingTaskResult) {
      return serializers.serialize(object, specifiedType: FullType(CfReprocessingTaskResult))!;
    }
    if (object is DummyTaskResult) {
      return serializers.serialize(object, specifiedType: FullType(DummyTaskResult))!;
    }
    if (object is ReportTaskResult) {
      return serializers.serialize(object, specifiedType: FullType(ReportTaskResult))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  TaskResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(TaskResult.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'CF_REPROCESSING':
        return serializers.deserialize(serialized, specifiedType: FullType(CfReprocessingTaskResult)) as CfReprocessingTaskResult;
      case r'DUMMY':
        return serializers.deserialize(serialized, specifiedType: FullType(DummyTaskResult)) as DummyTaskResult;
      case r'REPORT':
        return serializers.deserialize(serialized, specifiedType: FullType(ReportTaskResult)) as ReportTaskResult;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($TaskResult)) as $TaskResult;
    }
  }
}


/// a concrete implementation of [TaskResult], since [TaskResult] is not instantiable
@BuiltValue(instantiable: true)
abstract class $TaskResult implements TaskResult, Built<$TaskResult, $TaskResultBuilder> {
  $TaskResult._();

  factory $TaskResult([void Function($TaskResultBuilder)? updates]) = _$$TaskResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($TaskResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$TaskResult> get serializer => _$$TaskResultSerializer();
}

class _$$TaskResultSerializer implements PrimitiveSerializer<$TaskResult> {
  @override
  final Iterable<Type> types = const [$TaskResult, _$$TaskResult];

  @override
  final String wireName = r'$TaskResult';

  @override
  Object serialize(
    Serializers serializers,
    $TaskResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(TaskResult))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TaskResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.success = valueDes;
          break;
        case r'discarded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.discarded = valueDes;
          break;
        case r'finishTs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.finishTs = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'jobType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jobType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $TaskResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TaskResultBuilder();
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

