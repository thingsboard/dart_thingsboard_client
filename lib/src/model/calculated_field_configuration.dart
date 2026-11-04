// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_calculated_field_configuration.dart';
import 'package:thingsboard_client/src/model/geofencing_calculated_field_configuration.dart';
import 'package:thingsboard_client/src/model/entity_aggregation_calculated_field_configuration.dart';
import 'package:thingsboard_client/src/model/simple_calculated_field_configuration.dart';
import 'package:thingsboard_client/src/model/output.dart';
import 'package:thingsboard_client/src/model/script_calculated_field_configuration.dart';
import 'package:thingsboard_client/src/model/related_entities_aggregation_calculated_field_configuration.dart';
import 'package:thingsboard_client/src/model/propagation_calculated_field_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'calculated_field_configuration.g.dart';

/// CalculatedFieldConfiguration
///
/// Properties:
/// * [output] 
/// * [type] 
@BuiltValue(instantiable: false)
abstract class CalculatedFieldConfiguration  {
  @BuiltValueField(wireName: r'output')
  Output? get output;

  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'ALARM': AlarmCalculatedFieldConfiguration,
    r'ENTITY_AGGREGATION': EntityAggregationCalculatedFieldConfiguration,
    r'GEOFENCING': GeofencingCalculatedFieldConfiguration,
    r'PROPAGATION': PropagationCalculatedFieldConfiguration,
    r'RELATED_ENTITIES_AGGREGATION': RelatedEntitiesAggregationCalculatedFieldConfiguration,
    r'SCRIPT': ScriptCalculatedFieldConfiguration,
    r'SIMPLE': SimpleCalculatedFieldConfiguration,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<CalculatedFieldConfiguration> get serializer => _$CalculatedFieldConfigurationSerializer();
}

extension CalculatedFieldConfigurationDiscriminatorExt on CalculatedFieldConfiguration {
    String? get discriminatorValue {
        if (this is AlarmCalculatedFieldConfiguration) {
            return r'ALARM';
        }
        if (this is EntityAggregationCalculatedFieldConfiguration) {
            return r'ENTITY_AGGREGATION';
        }
        if (this is GeofencingCalculatedFieldConfiguration) {
            return r'GEOFENCING';
        }
        if (this is PropagationCalculatedFieldConfiguration) {
            return r'PROPAGATION';
        }
        if (this is RelatedEntitiesAggregationCalculatedFieldConfiguration) {
            return r'RELATED_ENTITIES_AGGREGATION';
        }
        if (this is ScriptCalculatedFieldConfiguration) {
            return r'SCRIPT';
        }
        if (this is SimpleCalculatedFieldConfiguration) {
            return r'SIMPLE';
        }
        return null;
    }
}
extension CalculatedFieldConfigurationBuilderDiscriminatorExt on CalculatedFieldConfigurationBuilder {
    String? get discriminatorValue {
        if (this is AlarmCalculatedFieldConfigurationBuilder) {
            return r'ALARM';
        }
        if (this is EntityAggregationCalculatedFieldConfigurationBuilder) {
            return r'ENTITY_AGGREGATION';
        }
        if (this is GeofencingCalculatedFieldConfigurationBuilder) {
            return r'GEOFENCING';
        }
        if (this is PropagationCalculatedFieldConfigurationBuilder) {
            return r'PROPAGATION';
        }
        if (this is RelatedEntitiesAggregationCalculatedFieldConfigurationBuilder) {
            return r'RELATED_ENTITIES_AGGREGATION';
        }
        if (this is ScriptCalculatedFieldConfigurationBuilder) {
            return r'SCRIPT';
        }
        if (this is SimpleCalculatedFieldConfigurationBuilder) {
            return r'SIMPLE';
        }
        return null;
    }
}

class _$CalculatedFieldConfigurationSerializer implements PrimitiveSerializer<CalculatedFieldConfiguration> {
  @override
  final Iterable<Type> types = const [CalculatedFieldConfiguration];

  @override
  final String wireName = r'CalculatedFieldConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CalculatedFieldConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.output != null) {
      yield r'output';
      yield serializers.serialize(
        object.output,
        specifiedType: const FullType(Output),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CalculatedFieldConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AlarmCalculatedFieldConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(AlarmCalculatedFieldConfiguration))!;
    }
    if (object is EntityAggregationCalculatedFieldConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(EntityAggregationCalculatedFieldConfiguration))!;
    }
    if (object is GeofencingCalculatedFieldConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(GeofencingCalculatedFieldConfiguration))!;
    }
    if (object is PropagationCalculatedFieldConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(PropagationCalculatedFieldConfiguration))!;
    }
    if (object is RelatedEntitiesAggregationCalculatedFieldConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(RelatedEntitiesAggregationCalculatedFieldConfiguration))!;
    }
    if (object is ScriptCalculatedFieldConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(ScriptCalculatedFieldConfiguration))!;
    }
    if (object is SimpleCalculatedFieldConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(SimpleCalculatedFieldConfiguration))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  CalculatedFieldConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(CalculatedFieldConfiguration.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'ALARM':
        return serializers.deserialize(serialized, specifiedType: FullType(AlarmCalculatedFieldConfiguration)) as AlarmCalculatedFieldConfiguration;
      case r'ENTITY_AGGREGATION':
        return serializers.deserialize(serialized, specifiedType: FullType(EntityAggregationCalculatedFieldConfiguration)) as EntityAggregationCalculatedFieldConfiguration;
      case r'GEOFENCING':
        return serializers.deserialize(serialized, specifiedType: FullType(GeofencingCalculatedFieldConfiguration)) as GeofencingCalculatedFieldConfiguration;
      case r'PROPAGATION':
        return serializers.deserialize(serialized, specifiedType: FullType(PropagationCalculatedFieldConfiguration)) as PropagationCalculatedFieldConfiguration;
      case r'RELATED_ENTITIES_AGGREGATION':
        return serializers.deserialize(serialized, specifiedType: FullType(RelatedEntitiesAggregationCalculatedFieldConfiguration)) as RelatedEntitiesAggregationCalculatedFieldConfiguration;
      case r'SCRIPT':
        return serializers.deserialize(serialized, specifiedType: FullType(ScriptCalculatedFieldConfiguration)) as ScriptCalculatedFieldConfiguration;
      case r'SIMPLE':
        return serializers.deserialize(serialized, specifiedType: FullType(SimpleCalculatedFieldConfiguration)) as SimpleCalculatedFieldConfiguration;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($CalculatedFieldConfiguration)) as $CalculatedFieldConfiguration;
    }
  }
}


/// a concrete implementation of [CalculatedFieldConfiguration], since [CalculatedFieldConfiguration] is not instantiable
@BuiltValue(instantiable: true)
abstract class $CalculatedFieldConfiguration implements CalculatedFieldConfiguration, Built<$CalculatedFieldConfiguration, $CalculatedFieldConfigurationBuilder> {
  $CalculatedFieldConfiguration._();

  factory $CalculatedFieldConfiguration([void Function($CalculatedFieldConfigurationBuilder)? updates]) = _$$CalculatedFieldConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($CalculatedFieldConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$CalculatedFieldConfiguration> get serializer => _$$CalculatedFieldConfigurationSerializer();
}

class _$$CalculatedFieldConfigurationSerializer implements PrimitiveSerializer<$CalculatedFieldConfiguration> {
  @override
  final Iterable<Type> types = const [$CalculatedFieldConfiguration, _$$CalculatedFieldConfiguration];

  @override
  final String wireName = r'$CalculatedFieldConfiguration';

  @override
  Object serialize(
    Serializers serializers,
    $CalculatedFieldConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(CalculatedFieldConfiguration))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CalculatedFieldConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'output':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Output),
          ) as Output?;
          if (valueDes == null) continue;
          result.output = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  $CalculatedFieldConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $CalculatedFieldConfigurationBuilder();
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

