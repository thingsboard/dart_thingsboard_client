// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/default_tenant_profile_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_profile_configuration.g.dart';

/// TenantProfileConfiguration
///
/// Properties:
/// * [type] 
@BuiltValue(instantiable: false)
abstract class TenantProfileConfiguration  {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'DEFAULT': DefaultTenantProfileConfiguration,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantProfileConfiguration> get serializer => _$TenantProfileConfigurationSerializer();
}

extension TenantProfileConfigurationDiscriminatorExt on TenantProfileConfiguration {
    String? get discriminatorValue {
        if (this is DefaultTenantProfileConfiguration) {
            return r'DEFAULT';
        }
        return null;
    }
}
extension TenantProfileConfigurationBuilderDiscriminatorExt on TenantProfileConfigurationBuilder {
    String? get discriminatorValue {
        if (this is DefaultTenantProfileConfigurationBuilder) {
            return r'DEFAULT';
        }
        return null;
    }
}

class _$TenantProfileConfigurationSerializer implements PrimitiveSerializer<TenantProfileConfiguration> {
  @override
  final Iterable<Type> types = const [TenantProfileConfiguration];

  @override
  final String wireName = r'TenantProfileConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantProfileConfiguration object, {
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
    TenantProfileConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is DefaultTenantProfileConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(DefaultTenantProfileConfiguration))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  TenantProfileConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(TenantProfileConfiguration.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'DEFAULT':
        return serializers.deserialize(serialized, specifiedType: FullType(DefaultTenantProfileConfiguration)) as DefaultTenantProfileConfiguration;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($TenantProfileConfiguration)) as $TenantProfileConfiguration;
    }
  }
}


/// a concrete implementation of [TenantProfileConfiguration], since [TenantProfileConfiguration] is not instantiable
@BuiltValue(instantiable: true)
abstract class $TenantProfileConfiguration implements TenantProfileConfiguration, Built<$TenantProfileConfiguration, $TenantProfileConfigurationBuilder> {
  $TenantProfileConfiguration._();

  factory $TenantProfileConfiguration([void Function($TenantProfileConfigurationBuilder)? updates]) = _$$TenantProfileConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($TenantProfileConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$TenantProfileConfiguration> get serializer => _$$TenantProfileConfigurationSerializer();
}

class _$$TenantProfileConfigurationSerializer implements PrimitiveSerializer<$TenantProfileConfiguration> {
  @override
  final Iterable<Type> types = const [$TenantProfileConfiguration, _$$TenantProfileConfiguration];

  @override
  final String wireName = r'$TenantProfileConfiguration';

  @override
  Object serialize(
    Serializers serializers,
    $TenantProfileConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(TenantProfileConfiguration))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TenantProfileConfigurationBuilder result,
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
  $TenantProfileConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TenantProfileConfigurationBuilder();
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

