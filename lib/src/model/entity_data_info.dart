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

part 'entity_data_info.g.dart';

/// EntityDataInfo
///
/// Properties:
/// * [hasRelations]
/// * [hasAttributes]
/// * [hasCredentials]
/// * [hasCalculatedFields]
/// * [hasPermissions]
/// * [hasGroupEntities]
@BuiltValue()
abstract class EntityDataInfo
    implements Built<EntityDataInfo, EntityDataInfoBuilder> {
  @BuiltValueField(wireName: r'hasRelations')
  bool? get hasRelations;

  @BuiltValueField(wireName: r'hasAttributes')
  bool? get hasAttributes;

  @BuiltValueField(wireName: r'hasCredentials')
  bool? get hasCredentials;

  @BuiltValueField(wireName: r'hasCalculatedFields')
  bool? get hasCalculatedFields;

  @BuiltValueField(wireName: r'hasPermissions')
  bool? get hasPermissions;

  @BuiltValueField(wireName: r'hasGroupEntities')
  bool? get hasGroupEntities;

  EntityDataInfo._();

  factory EntityDataInfo([void updates(EntityDataInfoBuilder b)]) =
      _$EntityDataInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityDataInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityDataInfo> get serializer =>
      _$EntityDataInfoSerializer();
}

class _$EntityDataInfoSerializer
    implements PrimitiveSerializer<EntityDataInfo> {
  @override
  final Iterable<Type> types = const [EntityDataInfo, _$EntityDataInfo];

  @override
  final String wireName = r'EntityDataInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityDataInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.hasRelations != null) {
      yield r'hasRelations';
      yield serializers.serialize(
        object.hasRelations,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasAttributes != null) {
      yield r'hasAttributes';
      yield serializers.serialize(
        object.hasAttributes,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasCredentials != null) {
      yield r'hasCredentials';
      yield serializers.serialize(
        object.hasCredentials,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasCalculatedFields != null) {
      yield r'hasCalculatedFields';
      yield serializers.serialize(
        object.hasCalculatedFields,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasPermissions != null) {
      yield r'hasPermissions';
      yield serializers.serialize(
        object.hasPermissions,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasGroupEntities != null) {
      yield r'hasGroupEntities';
      yield serializers.serialize(
        object.hasGroupEntities,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityDataInfo object, {
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
    required EntityDataInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hasRelations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.hasRelations = valueDes;
          break;
        case r'hasAttributes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.hasAttributes = valueDes;
          break;
        case r'hasCredentials':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.hasCredentials = valueDes;
          break;
        case r'hasCalculatedFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.hasCalculatedFields = valueDes;
          break;
        case r'hasPermissions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.hasPermissions = valueDes;
          break;
        case r'hasGroupEntities':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.hasGroupEntities = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityDataInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityDataInfoBuilder();
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
