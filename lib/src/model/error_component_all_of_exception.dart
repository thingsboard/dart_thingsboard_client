// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/error_component_all_of_exception_cause.dart';
import 'package:thingsboard_client/src/model/error_component_all_of_exception_cause_stack_trace.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_component_all_of_exception.g.dart';

/// ErrorComponentAllOfException
///
/// Properties:
/// * [cause]
/// * [stackTrace]
/// * [message]
/// * [suppressed]
/// * [localizedMessage]
@BuiltValue()
abstract class ErrorComponentAllOfException
    implements
        Built<
          ErrorComponentAllOfException,
          ErrorComponentAllOfExceptionBuilder
        > {
  @BuiltValueField(wireName: r'cause')
  ErrorComponentAllOfExceptionCause? get cause;

  @BuiltValueField(wireName: r'stackTrace')
  BuiltList<ErrorComponentAllOfExceptionCauseStackTrace>? get stackTrace;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'suppressed')
  BuiltList<ErrorComponentAllOfExceptionCause>? get suppressed;

  @BuiltValueField(wireName: r'localizedMessage')
  String? get localizedMessage;

  ErrorComponentAllOfException._();

  factory ErrorComponentAllOfException([
    void updates(ErrorComponentAllOfExceptionBuilder b),
  ]) = _$ErrorComponentAllOfException;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorComponentAllOfExceptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorComponentAllOfException> get serializer =>
      _$ErrorComponentAllOfExceptionSerializer();
}

class _$ErrorComponentAllOfExceptionSerializer
    implements PrimitiveSerializer<ErrorComponentAllOfException> {
  @override
  final Iterable<Type> types = const [
    ErrorComponentAllOfException,
    _$ErrorComponentAllOfException,
  ];

  @override
  final String wireName = r'ErrorComponentAllOfException';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorComponentAllOfException object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cause != null) {
      yield r'cause';
      yield serializers.serialize(
        object.cause,
        specifiedType: const FullType(ErrorComponentAllOfExceptionCause),
      );
    }
    if (object.stackTrace != null) {
      yield r'stackTrace';
      yield serializers.serialize(
        object.stackTrace,
        specifiedType: const FullType(BuiltList, [
          FullType(ErrorComponentAllOfExceptionCauseStackTrace),
        ]),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.suppressed != null) {
      yield r'suppressed';
      yield serializers.serialize(
        object.suppressed,
        specifiedType: const FullType(BuiltList, [
          FullType(ErrorComponentAllOfExceptionCause),
        ]),
      );
    }
    if (object.localizedMessage != null) {
      yield r'localizedMessage';
      yield serializers.serialize(
        object.localizedMessage,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ErrorComponentAllOfException object, {
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
    required ErrorComponentAllOfExceptionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cause':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ErrorComponentAllOfExceptionCause,
                    ),
                  )
                  as ErrorComponentAllOfExceptionCause?;
          if (valueDes == null) continue;
          result.cause.replace(valueDes);
          break;
        case r'stackTrace':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ErrorComponentAllOfExceptionCauseStackTrace),
                    ]),
                  )
                  as BuiltList<ErrorComponentAllOfExceptionCauseStackTrace>?;
          if (valueDes == null) continue;
          result.stackTrace.replace(valueDes);
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
        case r'suppressed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ErrorComponentAllOfExceptionCause),
                    ]),
                  )
                  as BuiltList<ErrorComponentAllOfExceptionCause>?;
          if (valueDes == null) continue;
          result.suppressed.replace(valueDes);
          break;
        case r'localizedMessage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.localizedMessage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ErrorComponentAllOfException deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorComponentAllOfExceptionBuilder();
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
