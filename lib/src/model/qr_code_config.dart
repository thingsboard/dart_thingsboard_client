// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/badge_position.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'qr_code_config.g.dart';

/// QRCodeConfig
///
/// Properties:
/// * [showOnHomePage] 
/// * [badgeEnabled] 
/// * [qrCodeLabelEnabled] 
/// * [badgePosition] 
/// * [qrCodeLabel] 
@BuiltValue()
abstract class QRCodeConfig implements Built<QRCodeConfig, QRCodeConfigBuilder> {
  @BuiltValueField(wireName: r'showOnHomePage')
  bool? get showOnHomePage;

  @BuiltValueField(wireName: r'badgeEnabled')
  bool? get badgeEnabled;

  @BuiltValueField(wireName: r'qrCodeLabelEnabled')
  bool? get qrCodeLabelEnabled;

  @BuiltValueField(wireName: r'badgePosition')
  BadgePosition? get badgePosition;
  // enum badgePositionEnum {  RIGHT,  LEFT,  };

  @BuiltValueField(wireName: r'qrCodeLabel')
  String? get qrCodeLabel;

  QRCodeConfig._();

  factory QRCodeConfig([void updates(QRCodeConfigBuilder b)]) = _$QRCodeConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QRCodeConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QRCodeConfig> get serializer => _$QRCodeConfigSerializer();
}

class _$QRCodeConfigSerializer implements PrimitiveSerializer<QRCodeConfig> {
  @override
  final Iterable<Type> types = const [QRCodeConfig, _$QRCodeConfig];

  @override
  final String wireName = r'QRCodeConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QRCodeConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showOnHomePage != null) {
      yield r'showOnHomePage';
      yield serializers.serialize(
        object.showOnHomePage,
        specifiedType: const FullType(bool),
      );
    }
    if (object.badgeEnabled != null) {
      yield r'badgeEnabled';
      yield serializers.serialize(
        object.badgeEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.qrCodeLabelEnabled != null) {
      yield r'qrCodeLabelEnabled';
      yield serializers.serialize(
        object.qrCodeLabelEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.badgePosition != null) {
      yield r'badgePosition';
      yield serializers.serialize(
        object.badgePosition,
        specifiedType: const FullType(BadgePosition),
      );
    }
    if (object.qrCodeLabel != null) {
      yield r'qrCodeLabel';
      yield serializers.serialize(
        object.qrCodeLabel,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QRCodeConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QRCodeConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'showOnHomePage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showOnHomePage = valueDes;
          break;
        case r'badgeEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.badgeEnabled = valueDes;
          break;
        case r'qrCodeLabelEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.qrCodeLabelEnabled = valueDes;
          break;
        case r'badgePosition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BadgePosition),
          ) as BadgePosition?;
          if (valueDes == null) continue;
          result.badgePosition = valueDes;
          break;
        case r'qrCodeLabel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.qrCodeLabel = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QRCodeConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QRCodeConfigBuilder();
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


