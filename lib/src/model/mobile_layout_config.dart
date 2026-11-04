// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/mobile_page.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mobile_layout_config.g.dart';

/// MobileLayoutConfig
///
/// Properties:
/// * [pages] 
@BuiltValue()
abstract class MobileLayoutConfig implements Built<MobileLayoutConfig, MobileLayoutConfigBuilder> {
  @BuiltValueField(wireName: r'pages')
  BuiltList<MobilePage>? get pages;

  MobileLayoutConfig._();

  factory MobileLayoutConfig([void updates(MobileLayoutConfigBuilder b)]) = _$MobileLayoutConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MobileLayoutConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MobileLayoutConfig> get serializer => _$MobileLayoutConfigSerializer();
}

class _$MobileLayoutConfigSerializer implements PrimitiveSerializer<MobileLayoutConfig> {
  @override
  final Iterable<Type> types = const [MobileLayoutConfig, _$MobileLayoutConfig];

  @override
  final String wireName = r'MobileLayoutConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MobileLayoutConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pages != null) {
      yield r'pages';
      yield serializers.serialize(
        object.pages,
        specifiedType: const FullType(BuiltList, [FullType(MobilePage)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MobileLayoutConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MobileLayoutConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(MobilePage)]),
          ) as BuiltList<MobilePage>?;
          if (valueDes == null) continue;
          result.pages.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MobileLayoutConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MobileLayoutConfigBuilder();
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


