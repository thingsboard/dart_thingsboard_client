// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:thingsboard_client/src/model/notification_rule_recipients_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edge_connection_recipients_config.g.dart';

/// EdgeConnectionRecipientsConfig
///
/// Properties:
/// * [triggerType]
/// * [targets]
@BuiltValue()
abstract class EdgeConnectionRecipientsConfig
    implements
        NotificationRuleRecipientsConfig,
        Built<
          EdgeConnectionRecipientsConfig,
          EdgeConnectionRecipientsConfigBuilder
        > {
  @BuiltValueField(wireName: r'targets')
  BuiltList<String> get targets;

  EdgeConnectionRecipientsConfig._();

  factory EdgeConnectionRecipientsConfig([
    void updates(EdgeConnectionRecipientsConfigBuilder b),
  ]) = _$EdgeConnectionRecipientsConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdgeConnectionRecipientsConfigBuilder b) =>
      b..triggerType = NotificationRuleTriggerType.EDGE_CONNECTION;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdgeConnectionRecipientsConfig> get serializer =>
      _$EdgeConnectionRecipientsConfigSerializer();
}

class _$EdgeConnectionRecipientsConfigSerializer
    implements PrimitiveSerializer<EdgeConnectionRecipientsConfig> {
  @override
  final Iterable<Type> types = const [
    EdgeConnectionRecipientsConfig,
    _$EdgeConnectionRecipientsConfig,
  ];

  @override
  final String wireName = r'EdgeConnectionRecipientsConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdgeConnectionRecipientsConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'targets';
    yield serializers.serialize(
      object.targets,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.triggerType != null) {
      yield r'triggerType';
      yield serializers.serialize(
        object.triggerType,
        specifiedType: const FullType(NotificationRuleTriggerType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdgeConnectionRecipientsConfig object, {
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
    required EdgeConnectionRecipientsConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'targets':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.targets.replace(valueDes);
          break;
        case r'triggerType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NotificationRuleTriggerType,
                    ),
                  )
                  as NotificationRuleTriggerType?;
          if (valueDes == null) continue;
          result.triggerType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdgeConnectionRecipientsConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdgeConnectionRecipientsConfigBuilder();
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
