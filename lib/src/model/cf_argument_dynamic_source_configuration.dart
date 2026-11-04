// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/current_owner_dynamic_source_configuration.dart';
import 'package:thingsboard_client/src/model/relation_path_query_dynamic_source_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cf_argument_dynamic_source_configuration.g.dart';

/// CfArgumentDynamicSourceConfiguration
///
/// Properties:
/// * [type] 
@BuiltValue(instantiable: false)
abstract class CfArgumentDynamicSourceConfiguration  {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'CURRENT_OWNER': CurrentOwnerDynamicSourceConfiguration,
    r'RELATION_PATH_QUERY': RelationPathQueryDynamicSourceConfiguration,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<CfArgumentDynamicSourceConfiguration> get serializer => _$CfArgumentDynamicSourceConfigurationSerializer();
}

extension CfArgumentDynamicSourceConfigurationDiscriminatorExt on CfArgumentDynamicSourceConfiguration {
    String? get discriminatorValue {
        if (this is CurrentOwnerDynamicSourceConfiguration) {
            return r'CURRENT_OWNER';
        }
        if (this is RelationPathQueryDynamicSourceConfiguration) {
            return r'RELATION_PATH_QUERY';
        }
        return null;
    }
}
extension CfArgumentDynamicSourceConfigurationBuilderDiscriminatorExt on CfArgumentDynamicSourceConfigurationBuilder {
    String? get discriminatorValue {
        if (this is CurrentOwnerDynamicSourceConfigurationBuilder) {
            return r'CURRENT_OWNER';
        }
        if (this is RelationPathQueryDynamicSourceConfigurationBuilder) {
            return r'RELATION_PATH_QUERY';
        }
        return null;
    }
}

class _$CfArgumentDynamicSourceConfigurationSerializer implements PrimitiveSerializer<CfArgumentDynamicSourceConfiguration> {
  @override
  final Iterable<Type> types = const [CfArgumentDynamicSourceConfiguration];

  @override
  final String wireName = r'CfArgumentDynamicSourceConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CfArgumentDynamicSourceConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CfArgumentDynamicSourceConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is CurrentOwnerDynamicSourceConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(CurrentOwnerDynamicSourceConfiguration))!;
    }
    if (object is RelationPathQueryDynamicSourceConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(RelationPathQueryDynamicSourceConfiguration))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  CfArgumentDynamicSourceConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(CfArgumentDynamicSourceConfiguration.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'CURRENT_OWNER':
        return serializers.deserialize(serialized, specifiedType: FullType(CurrentOwnerDynamicSourceConfiguration)) as CurrentOwnerDynamicSourceConfiguration;
      case r'RELATION_PATH_QUERY':
        return serializers.deserialize(serialized, specifiedType: FullType(RelationPathQueryDynamicSourceConfiguration)) as RelationPathQueryDynamicSourceConfiguration;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($CfArgumentDynamicSourceConfiguration)) as $CfArgumentDynamicSourceConfiguration;
    }
  }
}


/// a concrete implementation of [CfArgumentDynamicSourceConfiguration], since [CfArgumentDynamicSourceConfiguration] is not instantiable
@BuiltValue(instantiable: true)
abstract class $CfArgumentDynamicSourceConfiguration implements CfArgumentDynamicSourceConfiguration, Built<$CfArgumentDynamicSourceConfiguration, $CfArgumentDynamicSourceConfigurationBuilder> {
  $CfArgumentDynamicSourceConfiguration._();

  factory $CfArgumentDynamicSourceConfiguration([void Function($CfArgumentDynamicSourceConfigurationBuilder)? updates]) = _$$CfArgumentDynamicSourceConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($CfArgumentDynamicSourceConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$CfArgumentDynamicSourceConfiguration> get serializer => _$$CfArgumentDynamicSourceConfigurationSerializer();
}

class _$$CfArgumentDynamicSourceConfigurationSerializer implements PrimitiveSerializer<$CfArgumentDynamicSourceConfiguration> {
  @override
  final Iterable<Type> types = const [$CfArgumentDynamicSourceConfiguration, _$$CfArgumentDynamicSourceConfiguration];

  @override
  final String wireName = r'$CfArgumentDynamicSourceConfiguration';

  @override
  Object serialize(
    Serializers serializers,
    $CfArgumentDynamicSourceConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(CfArgumentDynamicSourceConfiguration))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CfArgumentDynamicSourceConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  $CfArgumentDynamicSourceConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $CfArgumentDynamicSourceConfigurationBuilder();
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

