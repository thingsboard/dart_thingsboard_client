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

part 'notification_rule_config.g.dart';

/// NotificationRuleConfig
///
/// Properties:
/// * [description] 
@BuiltValue()
abstract class NotificationRuleConfig implements Built<NotificationRuleConfig, NotificationRuleConfigBuilder> {
  @BuiltValueField(wireName: r'description')
  String? get description;

  NotificationRuleConfig._();

  factory NotificationRuleConfig([void updates(NotificationRuleConfigBuilder b)]) = _$NotificationRuleConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationRuleConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationRuleConfig> get serializer => _$NotificationRuleConfigSerializer();
}

class _$NotificationRuleConfigSerializer implements PrimitiveSerializer<NotificationRuleConfig> {
  @override
  final Iterable<Type> types = const [NotificationRuleConfig, _$NotificationRuleConfig];

  @override
  final String wireName = r'NotificationRuleConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationRuleConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationRuleConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationRuleConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationRuleConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationRuleConfigBuilder();
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


