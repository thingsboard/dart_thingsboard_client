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

part 'features_info.g.dart';

/// FeaturesInfo
///
/// Properties:
/// * [whiteLabelingEnabled]
/// * [emailEnabled]
/// * [smsEnabled]
/// * [notificationEnabled]
/// * [oauthEnabled]
/// * [twoFaEnabled]
@BuiltValue()
abstract class FeaturesInfo
    implements Built<FeaturesInfo, FeaturesInfoBuilder> {
  @BuiltValueField(wireName: r'whiteLabelingEnabled')
  bool? get whiteLabelingEnabled;

  @BuiltValueField(wireName: r'emailEnabled')
  bool? get emailEnabled;

  @BuiltValueField(wireName: r'smsEnabled')
  bool? get smsEnabled;

  @BuiltValueField(wireName: r'notificationEnabled')
  bool? get notificationEnabled;

  @BuiltValueField(wireName: r'oauthEnabled')
  bool? get oauthEnabled;

  @BuiltValueField(wireName: r'twoFaEnabled')
  bool? get twoFaEnabled;

  FeaturesInfo._();

  factory FeaturesInfo([void updates(FeaturesInfoBuilder b)]) = _$FeaturesInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FeaturesInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FeaturesInfo> get serializer => _$FeaturesInfoSerializer();
}

class _$FeaturesInfoSerializer implements PrimitiveSerializer<FeaturesInfo> {
  @override
  final Iterable<Type> types = const [FeaturesInfo, _$FeaturesInfo];

  @override
  final String wireName = r'FeaturesInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FeaturesInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.whiteLabelingEnabled != null) {
      yield r'whiteLabelingEnabled';
      yield serializers.serialize(
        object.whiteLabelingEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.emailEnabled != null) {
      yield r'emailEnabled';
      yield serializers.serialize(
        object.emailEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.smsEnabled != null) {
      yield r'smsEnabled';
      yield serializers.serialize(
        object.smsEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.notificationEnabled != null) {
      yield r'notificationEnabled';
      yield serializers.serialize(
        object.notificationEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.oauthEnabled != null) {
      yield r'oauthEnabled';
      yield serializers.serialize(
        object.oauthEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.twoFaEnabled != null) {
      yield r'twoFaEnabled';
      yield serializers.serialize(
        object.twoFaEnabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FeaturesInfo object, {
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
    required FeaturesInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'whiteLabelingEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.whiteLabelingEnabled = valueDes;
          break;
        case r'emailEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.emailEnabled = valueDes;
          break;
        case r'smsEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.smsEnabled = valueDes;
          break;
        case r'notificationEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.notificationEnabled = valueDes;
          break;
        case r'oauthEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.oauthEnabled = valueDes;
          break;
        case r'twoFaEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.twoFaEnabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FeaturesInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FeaturesInfoBuilder();
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
