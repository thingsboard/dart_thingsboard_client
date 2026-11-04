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
import 'package:thingsboard_client/src/model/job_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dummy_job_result.g.dart';

/// DummyJobResult
///
/// Properties:
/// * [successfulCount] - Count of successfully completed tasks
/// * [failedCount] - Count of failed tasks
/// * [discardedCount] - Count of discarded tasks
/// * [totalCount] - Total number of tasks, set when all tasks are submitted
/// * [results]
/// * [generalError] - General error message if the job failed
/// * [startTs] - Timestamp of the job start, in milliseconds
/// * [finishTs] - Timestamp of the job finish, in milliseconds
/// * [cancellationTs] - Timestamp of the job cancellation, in milliseconds
/// * [jobType]
@BuiltValue()
abstract class DummyJobResult
    implements JobResult, Built<DummyJobResult, DummyJobResultBuilder> {
  DummyJobResult._();

  factory DummyJobResult([void updates(DummyJobResultBuilder b)]) =
      _$DummyJobResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DummyJobResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DummyJobResult> get serializer =>
      _$DummyJobResultSerializer();
}

class _$DummyJobResultSerializer
    implements PrimitiveSerializer<DummyJobResult> {
  @override
  final Iterable<Type> types = const [DummyJobResult, _$DummyJobResult];

  @override
  final String wireName = r'DummyJobResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DummyJobResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cancellationTs != null) {
      yield r'cancellationTs';
      yield serializers.serialize(
        object.cancellationTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.discardedCount != null) {
      yield r'discardedCount';
      yield serializers.serialize(
        object.discardedCount,
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
    if (object.failedCount != null) {
      yield r'failedCount';
      yield serializers.serialize(
        object.failedCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.successfulCount != null) {
      yield r'successfulCount';
      yield serializers.serialize(
        object.successfulCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.startTs != null) {
      yield r'startTs';
      yield serializers.serialize(
        object.startTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.finishTs != null) {
      yield r'finishTs';
      yield serializers.serialize(
        object.finishTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalCount != null) {
      yield r'totalCount';
      yield serializers.serialize(
        object.totalCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'jobType';
    yield serializers.serialize(
      object.jobType,
      specifiedType: const FullType(String),
    );
    if (object.results != null) {
      yield r'results';
      yield serializers.serialize(
        object.results,
        specifiedType: const FullType(BuiltList, [FullType(TaskResult)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DummyJobResult object, {
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
    required DummyJobResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cancellationTs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.cancellationTs = valueDes;
          break;
        case r'discardedCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.discardedCount = valueDes;
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
        case r'failedCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.failedCount = valueDes;
          break;
        case r'successfulCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.successfulCount = valueDes;
          break;
        case r'startTs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.startTs = valueDes;
          break;
        case r'finishTs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.finishTs = valueDes;
          break;
        case r'totalCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.totalCount = valueDes;
          break;
        case r'jobType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.jobType = valueDes;
          break;
        case r'results':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(TaskResult),
                    ]),
                  )
                  as BuiltList<TaskResult>?;
          if (valueDes == null) continue;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DummyJobResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DummyJobResultBuilder();
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
