// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_pref.g.dart';

/// NotificationPref
///
/// Properties:
/// * [enabled]
/// * [enabledDeliveryMethods]
@BuiltValue()
abstract class NotificationPref
    implements Built<NotificationPref, NotificationPrefBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'enabledDeliveryMethods')
  BuiltMap<String, bool> get enabledDeliveryMethods;

  NotificationPref._();

  factory NotificationPref([void updates(NotificationPrefBuilder b)]) =
      _$NotificationPref;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationPrefBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationPref> get serializer =>
      _$NotificationPrefSerializer();
}

class _$NotificationPrefSerializer
    implements PrimitiveSerializer<NotificationPref> {
  @override
  final Iterable<Type> types = const [NotificationPref, _$NotificationPref];

  @override
  final String wireName = r'NotificationPref';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationPref object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    yield r'enabledDeliveryMethods';
    yield serializers.serialize(
      object.enabledDeliveryMethods,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(bool),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationPref object, {
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
    required NotificationPrefBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'enabledDeliveryMethods':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(bool),
                    ]),
                  )
                  as BuiltMap<String, bool>;
          result.enabledDeliveryMethods.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationPref deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationPrefBuilder();
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
