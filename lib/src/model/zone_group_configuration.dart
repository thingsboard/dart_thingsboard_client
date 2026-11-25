// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_search_direction.dart';
import 'package:thingsboard_client/src/model/geofencing_report_strategy.dart';
import 'package:thingsboard_client/src/model/cf_argument_dynamic_source_configuration.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'zone_group_configuration.g.dart';

/// ZoneGroupConfiguration
///
/// Properties:
/// * [refEntityId]
/// * [refDynamicSourceConfiguration]
/// * [perimeterKeyName]
/// * [reportStrategy]
/// * [createRelationsWithMatchedZones]
/// * [relationType]
/// * [direction]
@BuiltValue()
abstract class ZoneGroupConfiguration
    implements Built<ZoneGroupConfiguration, ZoneGroupConfigurationBuilder> {
  @BuiltValueField(wireName: r'refEntityId')
  EntityId? get refEntityId;

  @BuiltValueField(wireName: r'refDynamicSourceConfiguration')
  CfArgumentDynamicSourceConfiguration? get refDynamicSourceConfiguration;

  @BuiltValueField(wireName: r'perimeterKeyName')
  String get perimeterKeyName;

  @BuiltValueField(wireName: r'reportStrategy')
  GeofencingReportStrategy get reportStrategy;
  // enum reportStrategyEnum {  REPORT_TRANSITION_EVENTS_ONLY,  REPORT_PRESENCE_STATUS_ONLY,  REPORT_TRANSITION_EVENTS_AND_PRESENCE_STATUS,  };

  @BuiltValueField(wireName: r'createRelationsWithMatchedZones')
  bool? get createRelationsWithMatchedZones;

  @BuiltValueField(wireName: r'relationType')
  String? get relationType;

  @BuiltValueField(wireName: r'direction')
  EntitySearchDirection? get direction;
  // enum directionEnum {  FROM,  TO,  };

  ZoneGroupConfiguration._();

  factory ZoneGroupConfiguration([
    void updates(ZoneGroupConfigurationBuilder b),
  ]) = _$ZoneGroupConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ZoneGroupConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ZoneGroupConfiguration> get serializer =>
      _$ZoneGroupConfigurationSerializer();
}

class _$ZoneGroupConfigurationSerializer
    implements PrimitiveSerializer<ZoneGroupConfiguration> {
  @override
  final Iterable<Type> types = const [
    ZoneGroupConfiguration,
    _$ZoneGroupConfiguration,
  ];

  @override
  final String wireName = r'ZoneGroupConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ZoneGroupConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.refEntityId != null) {
      yield r'refEntityId';
      yield serializers.serialize(
        object.refEntityId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.refDynamicSourceConfiguration != null) {
      yield r'refDynamicSourceConfiguration';
      yield serializers.serialize(
        object.refDynamicSourceConfiguration,
        specifiedType: const FullType(CfArgumentDynamicSourceConfiguration),
      );
    }
    yield r'perimeterKeyName';
    yield serializers.serialize(
      object.perimeterKeyName,
      specifiedType: const FullType(String),
    );
    yield r'reportStrategy';
    yield serializers.serialize(
      object.reportStrategy,
      specifiedType: const FullType(GeofencingReportStrategy),
    );
    if (object.createRelationsWithMatchedZones != null) {
      yield r'createRelationsWithMatchedZones';
      yield serializers.serialize(
        object.createRelationsWithMatchedZones,
        specifiedType: const FullType(bool),
      );
    }
    if (object.relationType != null) {
      yield r'relationType';
      yield serializers.serialize(
        object.relationType,
        specifiedType: const FullType(String),
      );
    }
    if (object.direction != null) {
      yield r'direction';
      yield serializers.serialize(
        object.direction,
        specifiedType: const FullType(EntitySearchDirection),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ZoneGroupConfiguration object, {
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
    required ZoneGroupConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refEntityId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.refEntityId = valueDes;
          break;
        case r'refDynamicSourceConfiguration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CfArgumentDynamicSourceConfiguration,
                    ),
                  )
                  as CfArgumentDynamicSourceConfiguration?;
          if (valueDes == null) continue;
          result.refDynamicSourceConfiguration = valueDes;
          break;
        case r'perimeterKeyName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.perimeterKeyName = valueDes;
          break;
        case r'reportStrategy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(GeofencingReportStrategy),
                  )
                  as GeofencingReportStrategy;
          result.reportStrategy = valueDes;
          break;
        case r'createRelationsWithMatchedZones':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.createRelationsWithMatchedZones = valueDes;
          break;
        case r'relationType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.relationType = valueDes;
          break;
        case r'direction':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      EntitySearchDirection,
                    ),
                  )
                  as EntitySearchDirection?;
          if (valueDes == null) continue;
          result.direction = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ZoneGroupConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ZoneGroupConfigurationBuilder();
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
