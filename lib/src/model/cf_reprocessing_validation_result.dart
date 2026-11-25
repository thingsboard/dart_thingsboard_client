// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/job_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cf_reprocessing_validation_result.g.dart';

/// CfReprocessingValidationResult
///
/// Properties:
/// * [isValid]
/// * [message]
/// * [lastJobStatus]
@BuiltValue()
abstract class CfReprocessingValidationResult
    implements
        Built<
          CfReprocessingValidationResult,
          CfReprocessingValidationResultBuilder
        > {
  @BuiltValueField(wireName: r'isValid')
  bool? get isValid;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'lastJobStatus')
  JobStatus? get lastJobStatus;
  // enum lastJobStatusEnum {  QUEUED,  PENDING,  RUNNING,  COMPLETED,  FAILED,  CANCELLED,  };

  CfReprocessingValidationResult._();

  factory CfReprocessingValidationResult([
    void updates(CfReprocessingValidationResultBuilder b),
  ]) = _$CfReprocessingValidationResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CfReprocessingValidationResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CfReprocessingValidationResult> get serializer =>
      _$CfReprocessingValidationResultSerializer();
}

class _$CfReprocessingValidationResultSerializer
    implements PrimitiveSerializer<CfReprocessingValidationResult> {
  @override
  final Iterable<Type> types = const [
    CfReprocessingValidationResult,
    _$CfReprocessingValidationResult,
  ];

  @override
  final String wireName = r'CfReprocessingValidationResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CfReprocessingValidationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.isValid != null) {
      yield r'isValid';
      yield serializers.serialize(
        object.isValid,
        specifiedType: const FullType(bool),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastJobStatus != null) {
      yield r'lastJobStatus';
      yield serializers.serialize(
        object.lastJobStatus,
        specifiedType: const FullType(JobStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CfReprocessingValidationResult object, {
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
    required CfReprocessingValidationResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'isValid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.isValid = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'lastJobStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JobStatus),
                  )
                  as JobStatus?;
          if (valueDes == null) continue;
          result.lastJobStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CfReprocessingValidationResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CfReprocessingValidationResultBuilder();
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
