// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'version_load_config.g.dart';

/// VersionLoadConfig
///
/// Properties:
/// * [loadRelations] 
/// * [loadAttributes] 
/// * [loadCredentials] 
/// * [loadCalculatedFields] 
/// * [loadPermissions] 
/// * [loadGroupEntities] 
/// * [autoGenerateIntegrationKey] 
@BuiltValue()
abstract class VersionLoadConfig implements Built<VersionLoadConfig, VersionLoadConfigBuilder> {
  @BuiltValueField(wireName: r'loadRelations')
  bool? get loadRelations;

  @BuiltValueField(wireName: r'loadAttributes')
  bool? get loadAttributes;

  @BuiltValueField(wireName: r'loadCredentials')
  bool? get loadCredentials;

  @BuiltValueField(wireName: r'loadCalculatedFields')
  bool? get loadCalculatedFields;

  @BuiltValueField(wireName: r'loadPermissions')
  bool? get loadPermissions;

  @BuiltValueField(wireName: r'loadGroupEntities')
  bool? get loadGroupEntities;

  @BuiltValueField(wireName: r'autoGenerateIntegrationKey')
  bool? get autoGenerateIntegrationKey;

  VersionLoadConfig._();

  factory VersionLoadConfig([void updates(VersionLoadConfigBuilder b)]) = _$VersionLoadConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VersionLoadConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VersionLoadConfig> get serializer => _$VersionLoadConfigSerializer();
}

class _$VersionLoadConfigSerializer implements PrimitiveSerializer<VersionLoadConfig> {
  @override
  final Iterable<Type> types = const [VersionLoadConfig, _$VersionLoadConfig];

  @override
  final String wireName = r'VersionLoadConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VersionLoadConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.loadRelations != null) {
      yield r'loadRelations';
      yield serializers.serialize(
        object.loadRelations,
        specifiedType: const FullType(bool),
      );
    }
    if (object.loadAttributes != null) {
      yield r'loadAttributes';
      yield serializers.serialize(
        object.loadAttributes,
        specifiedType: const FullType(bool),
      );
    }
    if (object.loadCredentials != null) {
      yield r'loadCredentials';
      yield serializers.serialize(
        object.loadCredentials,
        specifiedType: const FullType(bool),
      );
    }
    if (object.loadCalculatedFields != null) {
      yield r'loadCalculatedFields';
      yield serializers.serialize(
        object.loadCalculatedFields,
        specifiedType: const FullType(bool),
      );
    }
    if (object.loadPermissions != null) {
      yield r'loadPermissions';
      yield serializers.serialize(
        object.loadPermissions,
        specifiedType: const FullType(bool),
      );
    }
    if (object.loadGroupEntities != null) {
      yield r'loadGroupEntities';
      yield serializers.serialize(
        object.loadGroupEntities,
        specifiedType: const FullType(bool),
      );
    }
    if (object.autoGenerateIntegrationKey != null) {
      yield r'autoGenerateIntegrationKey';
      yield serializers.serialize(
        object.autoGenerateIntegrationKey,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VersionLoadConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VersionLoadConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'loadRelations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.loadRelations = valueDes;
          break;
        case r'loadAttributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.loadAttributes = valueDes;
          break;
        case r'loadCredentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.loadCredentials = valueDes;
          break;
        case r'loadCalculatedFields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.loadCalculatedFields = valueDes;
          break;
        case r'loadPermissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.loadPermissions = valueDes;
          break;
        case r'loadGroupEntities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.loadGroupEntities = valueDes;
          break;
        case r'autoGenerateIntegrationKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.autoGenerateIntegrationKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VersionLoadConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VersionLoadConfigBuilder();
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


