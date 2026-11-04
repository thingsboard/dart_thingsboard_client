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
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dummy_job_configuration.g.dart';

/// Dummy job configuration
///
/// Properties:
/// * [tasksKey]
/// * [toReprocess]
/// * [type]
/// * [taskProcessingTimeMs]
/// * [successfulTasksCount]
/// * [failedTasksCount]
/// * [permanentlyFailedTasksCount]
/// * [errors]
/// * [retries]
/// * [taskProcessingTimeoutMs]
/// * [generalError]
/// * [submittedTasksBeforeGeneralError]
@BuiltValue()
abstract class DummyJobConfiguration
    implements
        JobConfiguration,
        Built<DummyJobConfiguration, DummyJobConfigurationBuilder> {
  @BuiltValueField(wireName: r'retries')
  int? get retries;

  @BuiltValueField(wireName: r'generalError')
  String? get generalError;

  @BuiltValueField(wireName: r'permanentlyFailedTasksCount')
  int? get permanentlyFailedTasksCount;

  @BuiltValueField(wireName: r'submittedTasksBeforeGeneralError')
  int? get submittedTasksBeforeGeneralError;

  @BuiltValueField(wireName: r'taskProcessingTimeMs')
  int? get taskProcessingTimeMs;

  @BuiltValueField(wireName: r'failedTasksCount')
  int? get failedTasksCount;

  @BuiltValueField(wireName: r'taskProcessingTimeoutMs')
  int? get taskProcessingTimeoutMs;

  @BuiltValueField(wireName: r'successfulTasksCount')
  int? get successfulTasksCount;

  @BuiltValueField(wireName: r'errors')
  BuiltList<String>? get errors;

  DummyJobConfiguration._();

  factory DummyJobConfiguration([
    void updates(DummyJobConfigurationBuilder b),
  ]) = _$DummyJobConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DummyJobConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DummyJobConfiguration> get serializer =>
      _$DummyJobConfigurationSerializer();
}

class _$DummyJobConfigurationSerializer
    implements PrimitiveSerializer<DummyJobConfiguration> {
  @override
  final Iterable<Type> types = const [
    DummyJobConfiguration,
    _$DummyJobConfiguration,
  ];

  @override
  final String wireName = r'DummyJobConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DummyJobConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.retries != null) {
      yield r'retries';
      yield serializers.serialize(
        object.retries,
        specifiedType: const FullType(int),
      );
    }
    if (object.generalError != null) {
      yield r'generalError';
      yield serializers.serialize(
        object.generalError,
        specifiedType: const FullType(String),
      );
    }
    if (object.permanentlyFailedTasksCount != null) {
      yield r'permanentlyFailedTasksCount';
      yield serializers.serialize(
        object.permanentlyFailedTasksCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.submittedTasksBeforeGeneralError != null) {
      yield r'submittedTasksBeforeGeneralError';
      yield serializers.serialize(
        object.submittedTasksBeforeGeneralError,
        specifiedType: const FullType(int),
      );
    }
    if (object.taskProcessingTimeMs != null) {
      yield r'taskProcessingTimeMs';
      yield serializers.serialize(
        object.taskProcessingTimeMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.failedTasksCount != null) {
      yield r'failedTasksCount';
      yield serializers.serialize(
        object.failedTasksCount,
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
    if (object.taskProcessingTimeoutMs != null) {
      yield r'taskProcessingTimeoutMs';
      yield serializers.serialize(
        object.taskProcessingTimeoutMs,
        specifiedType: const FullType(int),
      );
    }
    yield r'tasksKey';
    yield serializers.serialize(
      object.tasksKey,
      specifiedType: const FullType(String),
    );
    if (object.successfulTasksCount != null) {
      yield r'successfulTasksCount';
      yield serializers.serialize(
        object.successfulTasksCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DummyJobConfiguration object, {
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
    required DummyJobConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'retries':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.retries = valueDes;
          break;
        case r'generalError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.generalError = valueDes;
          break;
        case r'permanentlyFailedTasksCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.permanentlyFailedTasksCount = valueDes;
          break;
        case r'submittedTasksBeforeGeneralError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.submittedTasksBeforeGeneralError = valueDes;
          break;
        case r'taskProcessingTimeMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.taskProcessingTimeMs = valueDes;
          break;
        case r'failedTasksCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.failedTasksCount = valueDes;
          break;
        case r'toReprocess':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(TaskResult),
                    ]),
                  )
                  as BuiltList<TaskResult>?;
          if (valueDes == null) continue;
          result.toReprocess.replace(valueDes);
          break;
        case r'taskProcessingTimeoutMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.taskProcessingTimeoutMs = valueDes;
          break;
        case r'tasksKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tasksKey = valueDes;
          break;
        case r'successfulTasksCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.successfulTasksCount = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'errors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DummyJobConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DummyJobConfigurationBuilder();
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
