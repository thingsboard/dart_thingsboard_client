// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/mobile_page.dart';
import 'package:thingsboard_client/src/model/mobile_page_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_mobile_page.g.dart';

/// CustomMobilePage
///
/// Properties:
/// * [type]
/// * [visible]
/// * [label] - Page label
/// * [icon] - URL of the page icon
/// * [path] - Path to custom page
@BuiltValue()
abstract class CustomMobilePage
    implements MobilePage, Built<CustomMobilePage, CustomMobilePageBuilder> {
  /// Path to custom page
  @BuiltValueField(wireName: r'path')
  String? get path;

  /// URL of the page icon
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// Page label
  @BuiltValueField(wireName: r'label')
  String? get label;

  CustomMobilePage._();

  factory CustomMobilePage([void updates(CustomMobilePageBuilder b)]) =
      _$CustomMobilePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomMobilePageBuilder b) =>
      b..type = MobilePageType.CUSTOM;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomMobilePage> get serializer =>
      _$CustomMobilePageSerializer();
}

class _$CustomMobilePageSerializer
    implements PrimitiveSerializer<CustomMobilePage> {
  @override
  final Iterable<Type> types = const [CustomMobilePage, _$CustomMobilePage];

  @override
  final String wireName = r'CustomMobilePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomMobilePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.visible != null) {
      yield r'visible';
      yield serializers.serialize(
        object.visible,
        specifiedType: const FullType(bool),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(MobilePageType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomMobilePage object, {
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
    required CustomMobilePageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'icon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.icon = valueDes;
          break;
        case r'path':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'visible':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.visible = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(MobilePageType),
                  )
                  as MobilePageType;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomMobilePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomMobilePageBuilder();
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
