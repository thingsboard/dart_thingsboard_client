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

part 'auto_version_create_config.g.dart';

/// AutoVersionCreateConfig
///
/// Properties:
/// * [saveRelations] 
/// * [saveAttributes] 
/// * [saveCredentials] 
/// * [saveCalculatedFields] 
/// * [savePermissions] 
/// * [saveGroupEntities] 
/// * [branch] 
@BuiltValue()
abstract class AutoVersionCreateConfig implements Built<AutoVersionCreateConfig, AutoVersionCreateConfigBuilder> {
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

  @BuiltValueField(wireName: r'branch')
  String? get branch;

  AutoVersionCreateConfig._();

  factory AutoVersionCreateConfig([void updates(AutoVersionCreateConfigBuilder b)]) = _$AutoVersionCreateConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AutoVersionCreateConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AutoVersionCreateConfig> get serializer => _$AutoVersionCreateConfigSerializer();
}

class _$AutoVersionCreateConfigSerializer implements PrimitiveSerializer<AutoVersionCreateConfig> {
  @override
  final Iterable<Type> types = const [AutoVersionCreateConfig, _$AutoVersionCreateConfig];

  @override
  final String wireName = r'AutoVersionCreateConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AutoVersionCreateConfig object, {
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
    if (object.branch != null) {
      yield r'branch';
      yield serializers.serialize(
        object.branch,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AutoVersionCreateConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AutoVersionCreateConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'saveRelations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.saveRelations = valueDes;
          break;
        case r'saveAttributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.saveAttributes = valueDes;
          break;
        case r'saveCredentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.saveCredentials = valueDes;
          break;
        case r'saveCalculatedFields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.saveCalculatedFields = valueDes;
          break;
        case r'savePermissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.savePermissions = valueDes;
          break;
        case r'saveGroupEntities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.saveGroupEntities = valueDes;
          break;
        case r'branch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.branch = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AutoVersionCreateConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AutoVersionCreateConfigBuilder();
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


