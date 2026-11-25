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

part 'lw_m2m_version.g.dart';

/// LwM2mVersion
///
/// Properties:
/// * [supported]
@BuiltValue()
abstract class LwM2mVersion
    implements Built<LwM2mVersion, LwM2mVersionBuilder> {
  @BuiltValueField(wireName: r'supported')
  bool? get supported;

  LwM2mVersion._();

  factory LwM2mVersion([void updates(LwM2mVersionBuilder b)]) = _$LwM2mVersion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LwM2mVersionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LwM2mVersion> get serializer => _$LwM2mVersionSerializer();
}

class _$LwM2mVersionSerializer implements PrimitiveSerializer<LwM2mVersion> {
  @override
  final Iterable<Type> types = const [LwM2mVersion, _$LwM2mVersion];

  @override
  final String wireName = r'LwM2mVersion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LwM2mVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.supported != null) {
      yield r'supported';
      yield serializers.serialize(
        object.supported,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LwM2mVersion object, {
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
    required LwM2mVersionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'supported':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.supported = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LwM2mVersion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LwM2mVersionBuilder();
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
