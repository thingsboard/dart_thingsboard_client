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

part 'dummy_task_failure.g.dart';

/// DummyTaskFailure
///
/// Properties:
/// * [error]
/// * [number]
/// * [failAlways]
@BuiltValue()
abstract class DummyTaskFailure
    implements Built<DummyTaskFailure, DummyTaskFailureBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'number')
  int? get number;

  @BuiltValueField(wireName: r'failAlways')
  bool? get failAlways;

  DummyTaskFailure._();

  factory DummyTaskFailure([void updates(DummyTaskFailureBuilder b)]) =
      _$DummyTaskFailure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DummyTaskFailureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DummyTaskFailure> get serializer =>
      _$DummyTaskFailureSerializer();
}

class _$DummyTaskFailureSerializer
    implements PrimitiveSerializer<DummyTaskFailure> {
  @override
  final Iterable<Type> types = const [DummyTaskFailure, _$DummyTaskFailure];

  @override
  final String wireName = r'DummyTaskFailure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DummyTaskFailure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
    if (object.number != null) {
      yield r'number';
      yield serializers.serialize(
        object.number,
        specifiedType: const FullType(int),
      );
    }
    if (object.failAlways != null) {
      yield r'failAlways';
      yield serializers.serialize(
        object.failAlways,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DummyTaskFailure object, {
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
    required DummyTaskFailureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'number':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.number = valueDes;
          break;
        case r'failAlways':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.failAlways = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DummyTaskFailure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DummyTaskFailureBuilder();
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
