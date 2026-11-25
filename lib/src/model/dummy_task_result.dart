// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/task_result.dart';
import 'package:thingsboard_client/src/model/dummy_task_failure.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dummy_task_result.g.dart';

/// DummyTaskResult
///
/// Properties:
/// * [key]
/// * [success]
/// * [discarded]
/// * [finishTs]
/// * [error]
/// * [jobType]
/// * [failure]
@BuiltValue()
abstract class DummyTaskResult
    implements TaskResult, Built<DummyTaskResult, DummyTaskResultBuilder> {
  @BuiltValueField(wireName: r'failure')
  DummyTaskFailure? get failure;

  DummyTaskResult._();

  factory DummyTaskResult([void updates(DummyTaskResultBuilder b)]) =
      _$DummyTaskResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DummyTaskResultBuilder b) => b..jobType = r'DUMMY';

  @BuiltValueSerializer(custom: true)
  static Serializer<DummyTaskResult> get serializer =>
      _$DummyTaskResultSerializer();
}

class _$DummyTaskResultSerializer
    implements PrimitiveSerializer<DummyTaskResult> {
  @override
  final Iterable<Type> types = const [DummyTaskResult, _$DummyTaskResult];

  @override
  final String wireName = r'DummyTaskResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DummyTaskResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.discarded != null) {
      yield r'discarded';
      yield serializers.serialize(
        object.discarded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.failure != null) {
      yield r'failure';
      yield serializers.serialize(
        object.failure,
        specifiedType: const FullType(DummyTaskFailure),
      );
    }
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
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
    DummyTaskResult object, {
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
    required DummyTaskResultBuilder result,
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
        case r'failure':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DummyTaskFailure),
                  )
                  as DummyTaskFailure?;
          if (valueDes == null) continue;
          result.failure.replace(valueDes);
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
  DummyTaskResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DummyTaskResultBuilder();
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
