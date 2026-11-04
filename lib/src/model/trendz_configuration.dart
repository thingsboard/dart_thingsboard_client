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

part 'trendz_configuration.g.dart';

/// TrendzConfiguration
///
/// Properties:
/// * [trendzUrl] 
/// * [tbUrl] 
@BuiltValue()
abstract class TrendzConfiguration implements Built<TrendzConfiguration, TrendzConfigurationBuilder> {
  @BuiltValueField(wireName: r'trendzUrl')
  String? get trendzUrl;

  @BuiltValueField(wireName: r'tbUrl')
  String? get tbUrl;

  TrendzConfiguration._();

  factory TrendzConfiguration([void updates(TrendzConfigurationBuilder b)]) = _$TrendzConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrendzConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrendzConfiguration> get serializer => _$TrendzConfigurationSerializer();
}

class _$TrendzConfigurationSerializer implements PrimitiveSerializer<TrendzConfiguration> {
  @override
  final Iterable<Type> types = const [TrendzConfiguration, _$TrendzConfiguration];

  @override
  final String wireName = r'TrendzConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrendzConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.trendzUrl != null) {
      yield r'trendzUrl';
      yield serializers.serialize(
        object.trendzUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.tbUrl != null) {
      yield r'tbUrl';
      yield serializers.serialize(
        object.tbUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrendzConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrendzConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'trendzUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.trendzUrl = valueDes;
          break;
        case r'tbUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tbUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrendzConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrendzConfigurationBuilder();
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


