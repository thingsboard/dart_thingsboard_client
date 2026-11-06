// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/key_sample.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key_info.g.dart';

/// Key name with an optional sample value.
///
/// Properties:
/// * [key] - Key name.
/// * [sample] - Most recent sample value for this key across the matched entities. Omitted when samples were not requested.
@BuiltValue()
abstract class KeyInfo implements Built<KeyInfo, KeyInfoBuilder> {
  /// Key name.
  @BuiltValueField(wireName: r'key')
  String get key;

  /// Most recent sample value for this key across the matched entities. Omitted when samples were not requested.
  @BuiltValueField(wireName: r'sample')
  KeySample? get sample;

  KeyInfo._();

  factory KeyInfo([void updates(KeyInfoBuilder b)]) = _$KeyInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeyInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeyInfo> get serializer => _$KeyInfoSerializer();
}

class _$KeyInfoSerializer implements PrimitiveSerializer<KeyInfo> {
  @override
  final Iterable<Type> types = const [KeyInfo, _$KeyInfo];

  @override
  final String wireName = r'KeyInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeyInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    if (object.sample != null) {
      yield r'sample';
      yield serializers.serialize(
        object.sample,
        specifiedType: const FullType(KeySample),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KeyInfo object, {
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
    required KeyInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.key = valueDes;
          break;
        case r'sample':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(KeySample),
                  )
                  as KeySample?;
          if (valueDes == null) continue;
          result.sample.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KeyInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeyInfoBuilder();
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
