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

part 'version_create_config.g.dart';

/// VersionCreateConfig
///
/// Properties:
/// * [saveRelations]
/// * [saveAttributes]
/// * [saveCredentials]
/// * [saveCalculatedFields]
/// * [savePermissions]
/// * [saveGroupEntities]
@BuiltValue()
abstract class VersionCreateConfig
    implements Built<VersionCreateConfig, VersionCreateConfigBuilder> {
  @BuiltValueField(wireName: r'saveRelations')
  bool? get saveRelations;

  @BuiltValueField(wireName: r'saveAttributes')
  bool? get saveAttributes;

  @BuiltValueField(wireName: r'saveCredentials')
  bool? get saveCredentials;

  @BuiltValueField(wireName: r'saveCalculatedFields')
  bool? get saveCalculatedFields;

  @BuiltValueField(wireName: r'savePermissions')
  bool? get savePermissions;

  @BuiltValueField(wireName: r'saveGroupEntities')
  bool? get saveGroupEntities;

  VersionCreateConfig._();

  factory VersionCreateConfig([void updates(VersionCreateConfigBuilder b)]) =
      _$VersionCreateConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VersionCreateConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VersionCreateConfig> get serializer =>
      _$VersionCreateConfigSerializer();
}

class _$VersionCreateConfigSerializer
    implements PrimitiveSerializer<VersionCreateConfig> {
  @override
  final Iterable<Type> types = const [
    VersionCreateConfig,
    _$VersionCreateConfig,
  ];

  @override
  final String wireName = r'VersionCreateConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VersionCreateConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.saveRelations != null) {
      yield r'saveRelations';
      yield serializers.serialize(
        object.saveRelations,
        specifiedType: const FullType(bool),
      );
    }
    if (object.saveAttributes != null) {
      yield r'saveAttributes';
      yield serializers.serialize(
        object.saveAttributes,
        specifiedType: const FullType(bool),
      );
    }
    if (object.saveCredentials != null) {
      yield r'saveCredentials';
      yield serializers.serialize(
        object.saveCredentials,
        specifiedType: const FullType(bool),
      );
    }
    if (object.saveCalculatedFields != null) {
      yield r'saveCalculatedFields';
      yield serializers.serialize(
        object.saveCalculatedFields,
        specifiedType: const FullType(bool),
      );
    }
    if (object.savePermissions != null) {
      yield r'savePermissions';
      yield serializers.serialize(
        object.savePermissions,
        specifiedType: const FullType(bool),
      );
    }
    if (object.saveGroupEntities != null) {
      yield r'saveGroupEntities';
      yield serializers.serialize(
        object.saveGroupEntities,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VersionCreateConfig object, {
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
    required VersionCreateConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'saveRelations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.saveRelations = valueDes;
          break;
        case r'saveAttributes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.saveAttributes = valueDes;
          break;
        case r'saveCredentials':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.saveCredentials = valueDes;
          break;
        case r'saveCalculatedFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.saveCalculatedFields = valueDes;
          break;
        case r'savePermissions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.savePermissions = valueDes;
          break;
        case r'saveGroupEntities':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.saveGroupEntities = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VersionCreateConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VersionCreateConfigBuilder();
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
