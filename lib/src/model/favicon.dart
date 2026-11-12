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

part 'favicon.g.dart';

/// Favicon
///
/// Properties:
/// * [url]
@BuiltValue()
abstract class Favicon implements Built<Favicon, FaviconBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  Favicon._();

  factory Favicon([void updates(FaviconBuilder b)]) = _$Favicon;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FaviconBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Favicon> get serializer => _$FaviconSerializer();
}

class _$FaviconSerializer implements PrimitiveSerializer<Favicon> {
  @override
  final Iterable<Type> types = const [Favicon, _$Favicon];

  @override
  final String wireName = r'Favicon';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Favicon object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Favicon object, {
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
    required FaviconBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Favicon deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FaviconBuilder();
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
