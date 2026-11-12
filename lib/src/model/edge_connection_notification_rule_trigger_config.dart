// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:thingsboard_client/src/model/edge_connectivity_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edge_connection_notification_rule_trigger_config.g.dart';

/// EdgeConnectionNotificationRuleTriggerConfig
///
/// Properties:
/// * [triggerType]
/// * [edges]
/// * [notifyOn]
@BuiltValue()
abstract class EdgeConnectionNotificationRuleTriggerConfig
    implements
        NotificationRuleTriggerConfig,
        Built<
          EdgeConnectionNotificationRuleTriggerConfig,
          EdgeConnectionNotificationRuleTriggerConfigBuilder
        > {
  @BuiltValueField(wireName: r'notifyOn')
  BuiltSet<EdgeConnectivityEvent>? get notifyOn;

  @BuiltValueField(wireName: r'edges')
  BuiltSet<String>? get edges;

  EdgeConnectionNotificationRuleTriggerConfig._();

  factory EdgeConnectionNotificationRuleTriggerConfig([
    void updates(EdgeConnectionNotificationRuleTriggerConfigBuilder b),
  ]) = _$EdgeConnectionNotificationRuleTriggerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdgeConnectionNotificationRuleTriggerConfigBuilder b) =>
      b..triggerType = NotificationRuleTriggerType.EDGE_CONNECTION;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdgeConnectionNotificationRuleTriggerConfig>
  get serializer => _$EdgeConnectionNotificationRuleTriggerConfigSerializer();
}

class _$EdgeConnectionNotificationRuleTriggerConfigSerializer
    implements
        PrimitiveSerializer<EdgeConnectionNotificationRuleTriggerConfig> {
  @override
  final Iterable<Type> types = const [
    EdgeConnectionNotificationRuleTriggerConfig,
    _$EdgeConnectionNotificationRuleTriggerConfig,
  ];

  @override
  final String wireName = r'EdgeConnectionNotificationRuleTriggerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdgeConnectionNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.edges != null) {
      yield r'edges';
      yield serializers.serialize(
        object.edges,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
    if (object.notifyOn != null) {
      yield r'notifyOn';
      yield serializers.serialize(
        object.notifyOn,
        specifiedType: const FullType(BuiltSet, [
          FullType(EdgeConnectivityEvent),
        ]),
      );
    }
    yield r'triggerType';
    yield serializers.serialize(
      object.triggerType,
      specifiedType: const FullType(NotificationRuleTriggerType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EdgeConnectionNotificationRuleTriggerConfig object, {
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
    required EdgeConnectionNotificationRuleTriggerConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'edges':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(String),
                    ]),
                  )
                  as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.edges.replace(valueDes);
          break;
        case r'notifyOn':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(EdgeConnectivityEvent),
                    ]),
                  )
                  as BuiltSet<EdgeConnectivityEvent>?;
          if (valueDes == null) continue;
          result.notifyOn.replace(valueDes);
          break;
        case r'triggerType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NotificationRuleTriggerType),
                  )
                  as NotificationRuleTriggerType;
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
  EdgeConnectionNotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdgeConnectionNotificationRuleTriggerConfigBuilder();
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
