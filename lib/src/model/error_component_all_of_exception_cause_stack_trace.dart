// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_component_all_of_exception_cause_stack_trace.g.dart';

/// ErrorComponentAllOfExceptionCauseStackTrace
///
/// Properties:
/// * [classLoaderName]
/// * [moduleName]
/// * [moduleVersion]
/// * [methodName]
/// * [fileName]
/// * [lineNumber]
/// * [className]
/// * [nativeMethod]
@BuiltValue()
abstract class ErrorComponentAllOfExceptionCauseStackTrace
    implements
        Built<
          ErrorComponentAllOfExceptionCauseStackTrace,
          ErrorComponentAllOfExceptionCauseStackTraceBuilder
        > {
  @BuiltValueField(wireName: r'classLoaderName')
  String? get classLoaderName;

  @BuiltValueField(wireName: r'moduleName')
  String? get moduleName;

  @BuiltValueField(wireName: r'moduleVersion')
  String? get moduleVersion;

  @BuiltValueField(wireName: r'methodName')
  String? get methodName;

  @BuiltValueField(wireName: r'fileName')
  String? get fileName;

  @BuiltValueField(wireName: r'lineNumber')
  int? get lineNumber;

  @BuiltValueField(wireName: r'className')
  String? get className;

  @BuiltValueField(wireName: r'nativeMethod')
  bool? get nativeMethod;

  ErrorComponentAllOfExceptionCauseStackTrace._();

  factory ErrorComponentAllOfExceptionCauseStackTrace([
    void updates(ErrorComponentAllOfExceptionCauseStackTraceBuilder b),
  ]) = _$ErrorComponentAllOfExceptionCauseStackTrace;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorComponentAllOfExceptionCauseStackTraceBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorComponentAllOfExceptionCauseStackTrace>
  get serializer => _$ErrorComponentAllOfExceptionCauseStackTraceSerializer();
}

class _$ErrorComponentAllOfExceptionCauseStackTraceSerializer
    implements
        PrimitiveSerializer<ErrorComponentAllOfExceptionCauseStackTrace> {
  @override
  final Iterable<Type> types = const [
    ErrorComponentAllOfExceptionCauseStackTrace,
    _$ErrorComponentAllOfExceptionCauseStackTrace,
  ];

  @override
  final String wireName = r'ErrorComponentAllOfExceptionCauseStackTrace';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorComponentAllOfExceptionCauseStackTrace object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.classLoaderName != null) {
      yield r'classLoaderName';
      yield serializers.serialize(
        object.classLoaderName,
        specifiedType: const FullType(String),
      );
    }
    if (object.moduleName != null) {
      yield r'moduleName';
      yield serializers.serialize(
        object.moduleName,
        specifiedType: const FullType(String),
      );
    }
    if (object.moduleVersion != null) {
      yield r'moduleVersion';
      yield serializers.serialize(
        object.moduleVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.methodName != null) {
      yield r'methodName';
      yield serializers.serialize(
        object.methodName,
        specifiedType: const FullType(String),
      );
    }
    if (object.fileName != null) {
      yield r'fileName';
      yield serializers.serialize(
        object.fileName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lineNumber != null) {
      yield r'lineNumber';
      yield serializers.serialize(
        object.lineNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.className != null) {
      yield r'className';
      yield serializers.serialize(
        object.className,
        specifiedType: const FullType(String),
      );
    }
    if (object.nativeMethod != null) {
      yield r'nativeMethod';
      yield serializers.serialize(
        object.nativeMethod,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ErrorComponentAllOfExceptionCauseStackTrace object, {
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
    required ErrorComponentAllOfExceptionCauseStackTraceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'classLoaderName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.classLoaderName = valueDes;
          break;
        case r'moduleName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.moduleName = valueDes;
          break;
        case r'moduleVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.moduleVersion = valueDes;
          break;
        case r'methodName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.methodName = valueDes;
          break;
        case r'fileName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.fileName = valueDes;
          break;
        case r'lineNumber':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lineNumber = valueDes;
          break;
        case r'className':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.className = valueDes;
          break;
        case r'nativeMethod':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.nativeMethod = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ErrorComponentAllOfExceptionCauseStackTrace deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorComponentAllOfExceptionCauseStackTraceBuilder();
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
