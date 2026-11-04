// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key_sample.g.dart';

/// Most recent value and its timestamp.
///
/// Properties:
/// * [ts] - Timestamp in milliseconds since epoch.
/// * [value] - Sample value.
@BuiltValue()
abstract class KeySample implements Built<KeySample, KeySampleBuilder> {
  /// Timestamp in milliseconds since epoch.
  @BuiltValueField(wireName: r'ts')
  int get ts;

  /// Sample value.
  @BuiltValueField(wireName: r'value')
  JsonObject? get value;

  KeySample._();

  factory KeySample([void updates(KeySampleBuilder b)]) = _$KeySample;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeySampleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeySample> get serializer => _$KeySampleSerializer();
}

class _$KeySampleSerializer implements PrimitiveSerializer<KeySample> {
  @override
  final Iterable<Type> types = const [KeySample, _$KeySample];

  @override
  final String wireName = r'KeySample';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeySample object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ts';
    yield serializers.serialize(
      object.ts,
      specifiedType: const FullType(int),
    );
    yield r'value';
    yield object.value == null ? null : serializers.serialize(
      object.value,
      specifiedType: const FullType.nullable(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KeySample object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KeySampleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ts = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KeySample deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeySampleBuilder();
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


