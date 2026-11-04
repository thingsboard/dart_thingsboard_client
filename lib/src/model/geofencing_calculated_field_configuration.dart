// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/output.dart';
import 'package:thingsboard_client/src/model/calculated_field_configuration.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/entity_coordinates.dart';
import 'package:thingsboard_client/src/model/zone_group_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'geofencing_calculated_field_configuration.g.dart';

/// GeofencingCalculatedFieldConfiguration
///
/// Properties:
/// * [output] 
/// * [type] 
/// * [entityCoordinates] 
/// * [zoneGroups] 
/// * [scheduledUpdateEnabled] 
/// * [scheduledUpdateInterval] 
@BuiltValue()
abstract class GeofencingCalculatedFieldConfiguration implements CalculatedFieldConfiguration, Built<GeofencingCalculatedFieldConfiguration, GeofencingCalculatedFieldConfigurationBuilder> {
  @BuiltValueField(wireName: r'entityCoordinates')
  EntityCoordinates get entityCoordinates;

  @BuiltValueField(wireName: r'zoneGroups')
  BuiltMap<String, ZoneGroupConfiguration> get zoneGroups;

  @BuiltValueField(wireName: r'scheduledUpdateEnabled')
  bool? get scheduledUpdateEnabled;

  @BuiltValueField(wireName: r'scheduledUpdateInterval')
  int? get scheduledUpdateInterval;

  GeofencingCalculatedFieldConfiguration._();

  factory GeofencingCalculatedFieldConfiguration([void updates(GeofencingCalculatedFieldConfigurationBuilder b)]) = _$GeofencingCalculatedFieldConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GeofencingCalculatedFieldConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GeofencingCalculatedFieldConfiguration> get serializer => _$GeofencingCalculatedFieldConfigurationSerializer();
}

class _$GeofencingCalculatedFieldConfigurationSerializer implements PrimitiveSerializer<GeofencingCalculatedFieldConfiguration> {
  @override
  final Iterable<Type> types = const [GeofencingCalculatedFieldConfiguration, _$GeofencingCalculatedFieldConfiguration];

  @override
  final String wireName = r'GeofencingCalculatedFieldConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GeofencingCalculatedFieldConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'entityCoordinates';
    yield serializers.serialize(
      object.entityCoordinates,
      specifiedType: const FullType(EntityCoordinates),
    );
    if (object.output != null) {
      yield r'output';
      yield serializers.serialize(
        object.output,
        specifiedType: const FullType(Output),
      );
    }
    if (object.scheduledUpdateEnabled != null) {
      yield r'scheduledUpdateEnabled';
      yield serializers.serialize(
        object.scheduledUpdateEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scheduledUpdateInterval != null) {
      yield r'scheduledUpdateInterval';
      yield serializers.serialize(
        object.scheduledUpdateInterval,
        specifiedType: const FullType(int),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'zoneGroups';
    yield serializers.serialize(
      object.zoneGroups,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ZoneGroupConfiguration)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GeofencingCalculatedFieldConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GeofencingCalculatedFieldConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityCoordinates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityCoordinates),
          ) as EntityCoordinates;
          result.entityCoordinates.replace(valueDes);
          break;
        case r'output':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Output),
          ) as Output?;
          if (valueDes == null) continue;
          result.output = valueDes;
          break;
        case r'scheduledUpdateEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.scheduledUpdateEnabled = valueDes;
          break;
        case r'scheduledUpdateInterval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.scheduledUpdateInterval = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'zoneGroups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ZoneGroupConfiguration)]),
          ) as BuiltMap<String, ZoneGroupConfiguration>;
          result.zoneGroups.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GeofencingCalculatedFieldConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GeofencingCalculatedFieldConfigurationBuilder();
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


