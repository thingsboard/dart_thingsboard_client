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
import 'package:thingsboard_client/src/model/cf_reprocessing_job_result.dart';
import 'package:thingsboard_client/src/model/report_job_result.dart';
import 'package:thingsboard_client/src/model/dummy_job_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_result.g.dart';

/// Job execution result
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
@BuiltValue(instantiable: false)
abstract class JobResult {
  /// Count of successfully completed tasks
  @BuiltValueField(wireName: r'successfulCount')
  int? get successfulCount;

  /// Count of failed tasks
  @BuiltValueField(wireName: r'failedCount')
  int? get failedCount;

  /// Count of discarded tasks
  @BuiltValueField(wireName: r'discardedCount')
  int? get discardedCount;

  /// Total number of tasks, set when all tasks are submitted
  @BuiltValueField(wireName: r'totalCount')
  int? get totalCount;

  @BuiltValueField(wireName: r'results')
  BuiltList<TaskResult>? get results;

  /// General error message if the job failed
  @BuiltValueField(wireName: r'generalError')
  String? get generalError;

  /// Timestamp of the job start, in milliseconds
  @BuiltValueField(wireName: r'startTs')
  int? get startTs;

  /// Timestamp of the job finish, in milliseconds
  @BuiltValueField(wireName: r'finishTs')
  int? get finishTs;

  /// Timestamp of the job cancellation, in milliseconds
  @BuiltValueField(wireName: r'cancellationTs')
  int? get cancellationTs;

  @BuiltValueField(wireName: r'jobType')
  String get jobType;

  static const String discriminatorFieldName = r'jobType';

  static const Map<String, Type> discriminatorMapping = {
    r'CF_REPROCESSING': CfReprocessingJobResult,
    r'DUMMY': DummyJobResult,
    r'REPORT': ReportJobResult,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<JobResult> get serializer => _$JobResultSerializer();
}

extension JobResultDiscriminatorExt on JobResult {
  String? get discriminatorValue {
    if (this is CfReprocessingJobResult) {
      return r'CF_REPROCESSING';
    }
    if (this is DummyJobResult) {
      return r'DUMMY';
    }
    if (this is ReportJobResult) {
      return r'REPORT';
    }
    return null;
  }
}

extension JobResultBuilderDiscriminatorExt on JobResultBuilder {
  String? get discriminatorValue {
    if (this is CfReprocessingJobResultBuilder) {
      return r'CF_REPROCESSING';
    }
    if (this is DummyJobResultBuilder) {
      return r'DUMMY';
    }
    if (this is ReportJobResultBuilder) {
      return r'REPORT';
    }
    return null;
  }
}

class _$JobResultSerializer implements PrimitiveSerializer<JobResult> {
  @override
  final Iterable<Type> types = const [JobResult];

  @override
  final String wireName = r'JobResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JobResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.successfulCount != null) {
      yield r'successfulCount';
      yield serializers.serialize(
        object.successfulCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.failedCount != null) {
      yield r'failedCount';
      yield serializers.serialize(
        object.failedCount,
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
    if (object.totalCount != null) {
      yield r'totalCount';
      yield serializers.serialize(
        object.totalCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.results != null) {
      yield r'results';
      yield serializers.serialize(
        object.results,
        specifiedType: const FullType(BuiltList, [FullType(TaskResult)]),
      );
    }
    if (object.generalError != null) {
      yield r'generalError';
      yield serializers.serialize(
        object.generalError,
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
    if (object.finishTs != null) {
      yield r'finishTs';
      yield serializers.serialize(
        object.finishTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.cancellationTs != null) {
      yield r'cancellationTs';
      yield serializers.serialize(
        object.cancellationTs,
        specifiedType: const FullType(int),
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
    JobResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is CfReprocessingJobResult) {
      return serializers.serialize(
        object,
        specifiedType: FullType(CfReprocessingJobResult),
      )!;
    }
    if (object is DummyJobResult) {
      return serializers.serialize(
        object,
        specifiedType: FullType(DummyJobResult),
      )!;
    }
    if (object is ReportJobResult) {
      return serializers.serialize(
        object,
        specifiedType: FullType(ReportJobResult),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  JobResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(JobResult.discriminatorFieldName) + 1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'CF_REPROCESSING':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(CfReprocessingJobResult),
            )
            as CfReprocessingJobResult;
      case r'DUMMY':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(DummyJobResult),
            )
            as DummyJobResult;
      case r'REPORT':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(ReportJobResult),
            )
            as ReportJobResult;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($JobResult),
            )
            as $JobResult;
    }
  }
}

/// a concrete implementation of [JobResult], since [JobResult] is not instantiable
@BuiltValue(instantiable: true)
abstract class $JobResult
    implements JobResult, Built<$JobResult, $JobResultBuilder> {
  $JobResult._();

  factory $JobResult([void Function($JobResultBuilder)? updates]) =
      _$$JobResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($JobResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$JobResult> get serializer => _$$JobResultSerializer();
}

class _$$JobResultSerializer implements PrimitiveSerializer<$JobResult> {
  @override
  final Iterable<Type> types = const [$JobResult, _$$JobResult];

  @override
  final String wireName = r'$JobResult';

  @override
  Object serialize(
    Serializers serializers,
    $JobResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(JobResult))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JobResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'jobType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
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
  $JobResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $JobResultBuilder();
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
