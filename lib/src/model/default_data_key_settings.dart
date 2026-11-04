// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/data_key_settings.dart';
import 'package:thingsboard_client/src/model/data_key_settings_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'default_data_key_settings.g.dart';

/// DefaultDataKeySettings
///
/// Properties:
/// * [type] - Data key settings type
@BuiltValue()
abstract class DefaultDataKeySettings
    implements
        DataKeySettings,
        Built<DefaultDataKeySettings, DefaultDataKeySettingsBuilder> {
  DefaultDataKeySettings._();

  factory DefaultDataKeySettings([
    void updates(DefaultDataKeySettingsBuilder b),
  ]) = _$DefaultDataKeySettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DefaultDataKeySettingsBuilder b) =>
      b..type = DataKeySettingsType.DEFAULT;

  @BuiltValueSerializer(custom: true)
  static Serializer<DefaultDataKeySettings> get serializer =>
      _$DefaultDataKeySettingsSerializer();
}

class _$DefaultDataKeySettingsSerializer
    implements PrimitiveSerializer<DefaultDataKeySettings> {
  @override
  final Iterable<Type> types = const [
    DefaultDataKeySettings,
    _$DefaultDataKeySettings,
  ];

  @override
  final String wireName = r'DefaultDataKeySettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DefaultDataKeySettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(DataKeySettingsType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DefaultDataKeySettings object, {
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
    required DefaultDataKeySettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DataKeySettingsType),
                  )
                  as DataKeySettingsType;
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
  DefaultDataKeySettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultDataKeySettingsBuilder();
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
