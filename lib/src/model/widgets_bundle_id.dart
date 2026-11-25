// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'widgets_bundle_id.g.dart';

/// WidgetsBundleId
///
/// Properties:
/// * [entityType]
/// * [id] - ID of the entity, time-based UUID v1
@BuiltValue()
abstract class WidgetsBundleId
    implements EntityId, Built<WidgetsBundleId, WidgetsBundleIdBuilder> {
  WidgetsBundleId._();

  factory WidgetsBundleId([void updates(WidgetsBundleIdBuilder b)]) =
      _$WidgetsBundleId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WidgetsBundleIdBuilder b) =>
      b..entityType = EntityType.WIDGETS_BUNDLE;

  @BuiltValueSerializer(custom: true)
  static Serializer<WidgetsBundleId> get serializer =>
      _$WidgetsBundleIdSerializer();
}

class _$WidgetsBundleIdSerializer
    implements PrimitiveSerializer<WidgetsBundleId> {
  @override
  final Iterable<Type> types = const [WidgetsBundleId, _$WidgetsBundleId];

  @override
  final String wireName = r'WidgetsBundleId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WidgetsBundleId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'entityType';
    yield serializers.serialize(
      object.entityType,
      specifiedType: const FullType(EntityType),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WidgetsBundleId object, {
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
    required WidgetsBundleIdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EntityType),
                  )
                  as EntityType;
          result.entityType = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WidgetsBundleId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WidgetsBundleIdBuilder();
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
