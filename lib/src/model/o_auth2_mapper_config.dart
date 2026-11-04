// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/o_auth2_basic_mapper_config.dart';
import 'package:thingsboard_client/src/model/mapper_type.dart';
import 'package:thingsboard_client/src/model/o_auth2_custom_mapper_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'o_auth2_mapper_config.g.dart';

/// OAuth2MapperConfig
///
/// Properties:
/// * [allowUserCreation] - Whether user should be created if not yet present on the platform after successful authentication
/// * [activateUser] - Whether user credentials should be activated when user is created after successful authentication
/// * [type] - Type of OAuth2 mapper. Depending on this param, different mapper config fields must be specified
/// * [basic] - Mapper config for BASIC and GITHUB mapper types
/// * [custom] - Mapper config for CUSTOM mapper type
@BuiltValue()
abstract class OAuth2MapperConfig implements Built<OAuth2MapperConfig, OAuth2MapperConfigBuilder> {
  /// Whether user should be created if not yet present on the platform after successful authentication
  @BuiltValueField(wireName: r'allowUserCreation')
  bool? get allowUserCreation;

  /// Whether user credentials should be activated when user is created after successful authentication
  @BuiltValueField(wireName: r'activateUser')
  bool? get activateUser;

  /// Type of OAuth2 mapper. Depending on this param, different mapper config fields must be specified
  @BuiltValueField(wireName: r'type')
  MapperType get type;
  // enum typeEnum {  BASIC,  CUSTOM,  GITHUB,  APPLE,  };

  /// Mapper config for BASIC and GITHUB mapper types
  @BuiltValueField(wireName: r'basic')
  OAuth2BasicMapperConfig? get basic;

  /// Mapper config for CUSTOM mapper type
  @BuiltValueField(wireName: r'custom')
  OAuth2CustomMapperConfig? get custom;

  OAuth2MapperConfig._();

  factory OAuth2MapperConfig([void updates(OAuth2MapperConfigBuilder b)]) = _$OAuth2MapperConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OAuth2MapperConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OAuth2MapperConfig> get serializer => _$OAuth2MapperConfigSerializer();
}

class _$OAuth2MapperConfigSerializer implements PrimitiveSerializer<OAuth2MapperConfig> {
  @override
  final Iterable<Type> types = const [OAuth2MapperConfig, _$OAuth2MapperConfig];

  @override
  final String wireName = r'OAuth2MapperConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OAuth2MapperConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.allowUserCreation != null) {
      yield r'allowUserCreation';
      yield serializers.serialize(
        object.allowUserCreation,
        specifiedType: const FullType(bool),
      );
    }
    if (object.activateUser != null) {
      yield r'activateUser';
      yield serializers.serialize(
        object.activateUser,
        specifiedType: const FullType(bool),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(MapperType),
    );
    if (object.basic != null) {
      yield r'basic';
      yield serializers.serialize(
        object.basic,
        specifiedType: const FullType(OAuth2BasicMapperConfig),
      );
    }
    if (object.custom != null) {
      yield r'custom';
      yield serializers.serialize(
        object.custom,
        specifiedType: const FullType(OAuth2CustomMapperConfig),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OAuth2MapperConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OAuth2MapperConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'allowUserCreation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.allowUserCreation = valueDes;
          break;
        case r'activateUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.activateUser = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MapperType),
          ) as MapperType;
          result.type = valueDes;
          break;
        case r'basic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(OAuth2BasicMapperConfig),
          ) as OAuth2BasicMapperConfig?;
          if (valueDes == null) continue;
          result.basic.replace(valueDes);
          break;
        case r'custom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(OAuth2CustomMapperConfig),
          ) as OAuth2CustomMapperConfig?;
          if (valueDes == null) continue;
          result.custom.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OAuth2MapperConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OAuth2MapperConfigBuilder();
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


