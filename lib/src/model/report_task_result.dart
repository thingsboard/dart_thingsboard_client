// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/task_result.dart';
import 'package:thingsboard_client/src/model/report.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_task_result.g.dart';

/// ReportTaskResult
///
/// Properties:
/// * [key]
/// * [success]
/// * [discarded]
/// * [finishTs]
/// * [error]
/// * [jobType]
/// * [report]
@BuiltValue()
abstract class ReportTaskResult
    implements TaskResult, Built<ReportTaskResult, ReportTaskResultBuilder> {
  @BuiltValueField(wireName: r'report')
  Report? get report;

  ReportTaskResult._();

  factory ReportTaskResult([void updates(ReportTaskResultBuilder b)]) =
      _$ReportTaskResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportTaskResultBuilder b) => b..jobType = r'REPORT';

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportTaskResult> get serializer =>
      _$ReportTaskResultSerializer();
}

class _$ReportTaskResultSerializer
    implements PrimitiveSerializer<ReportTaskResult> {
  @override
  final Iterable<Type> types = const [ReportTaskResult, _$ReportTaskResult];

  @override
  final String wireName = r'ReportTaskResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportTaskResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.discarded != null) {
      yield r'discarded';
      yield serializers.serialize(
        object.discarded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.report != null) {
      yield r'report';
      yield serializers.serialize(
        object.report,
        specifiedType: const FullType(Report),
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
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportTaskResult object, {
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
    required ReportTaskResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'discarded':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.discarded = valueDes;
          break;
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
        case r'report':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Report),
                  )
                  as Report?;
          if (valueDes == null) continue;
          result.report.replace(valueDes);
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
        case r'jobType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.jobType = valueDes;
          break;
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportTaskResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportTaskResultBuilder();
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
