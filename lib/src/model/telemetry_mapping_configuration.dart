// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/telemetry_observe_strategy.dart';
import 'package:thingsboard_client/src/model/object_attributes.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'telemetry_mapping_configuration.g.dart';

/// TelemetryMappingConfiguration
///
/// Properties:
/// * [keyName] - Map of LwM2M resource paths to telemetry key names
/// * [observe] - Set of resources to observe
/// * [attribute] - Set of attribute keys
/// * [telemetry] - Set of telemetry keys
/// * [attributeLwm2m] - Map of resource paths to specific LwM2M object attributes
/// * [initAttrTelAsObsStrategy] 
/// * [observeStrategy] - Observation strategy for telemetry
@BuiltValue()
abstract class TelemetryMappingConfiguration implements Built<TelemetryMappingConfiguration, TelemetryMappingConfigurationBuilder> {
  /// Map of LwM2M resource paths to telemetry key names
  @BuiltValueField(wireName: r'keyName')
  BuiltMap<String, String>? get keyName;

  /// Set of resources to observe
  @BuiltValueField(wireName: r'observe')
  BuiltSet<String>? get observe;

  /// Set of attribute keys
  @BuiltValueField(wireName: r'attribute')
  BuiltSet<String>? get attribute;

  /// Set of telemetry keys
  @BuiltValueField(wireName: r'telemetry')
  BuiltSet<String>? get telemetry;

  /// Map of resource paths to specific LwM2M object attributes
  @BuiltValueField(wireName: r'attributeLwm2m')
  BuiltMap<String, ObjectAttributes>? get attributeLwm2m;

  @BuiltValueField(wireName: r'initAttrTelAsObsStrategy')
  bool? get initAttrTelAsObsStrategy;

  /// Observation strategy for telemetry
  @BuiltValueField(wireName: r'observeStrategy')
  TelemetryObserveStrategy? get observeStrategy;
  // enum observeStrategyEnum {  SINGLE,  COMPOSITE_ALL,  COMPOSITE_BY_OBJECT,  };

  TelemetryMappingConfiguration._();

  factory TelemetryMappingConfiguration([void updates(TelemetryMappingConfigurationBuilder b)]) = _$TelemetryMappingConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TelemetryMappingConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TelemetryMappingConfiguration> get serializer => _$TelemetryMappingConfigurationSerializer();
}

class _$TelemetryMappingConfigurationSerializer implements PrimitiveSerializer<TelemetryMappingConfiguration> {
  @override
  final Iterable<Type> types = const [TelemetryMappingConfiguration, _$TelemetryMappingConfiguration];

  @override
  final String wireName = r'TelemetryMappingConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TelemetryMappingConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.keyName != null) {
      yield r'keyName';
      yield serializers.serialize(
        object.keyName,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.observe != null) {
      yield r'observe';
      yield serializers.serialize(
        object.observe,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
    if (object.attribute != null) {
      yield r'attribute';
      yield serializers.serialize(
        object.attribute,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
    if (object.telemetry != null) {
      yield r'telemetry';
      yield serializers.serialize(
        object.telemetry,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
    if (object.attributeLwm2m != null) {
      yield r'attributeLwm2m';
      yield serializers.serialize(
        object.attributeLwm2m,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ObjectAttributes)]),
      );
    }
    if (object.initAttrTelAsObsStrategy != null) {
      yield r'initAttrTelAsObsStrategy';
      yield serializers.serialize(
        object.initAttrTelAsObsStrategy,
        specifiedType: const FullType(bool),
      );
    }
    if (object.observeStrategy != null) {
      yield r'observeStrategy';
      yield serializers.serialize(
        object.observeStrategy,
        specifiedType: const FullType(TelemetryObserveStrategy),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TelemetryMappingConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TelemetryMappingConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'keyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.keyName.replace(valueDes);
          break;
        case r'observe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(String)]),
          ) as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.observe.replace(valueDes);
          break;
        case r'attribute':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(String)]),
          ) as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.attribute.replace(valueDes);
          break;
        case r'telemetry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(String)]),
          ) as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.telemetry.replace(valueDes);
          break;
        case r'attributeLwm2m':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(ObjectAttributes)]),
          ) as BuiltMap<String, ObjectAttributes>?;
          if (valueDes == null) continue;
          result.attributeLwm2m.replace(valueDes);
          break;
        case r'initAttrTelAsObsStrategy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.initAttrTelAsObsStrategy = valueDes;
          break;
        case r'observeStrategy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TelemetryObserveStrategy),
          ) as TelemetryObserveStrategy?;
          if (valueDes == null) continue;
          result.observeStrategy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TelemetryMappingConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TelemetryMappingConfigurationBuilder();
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


