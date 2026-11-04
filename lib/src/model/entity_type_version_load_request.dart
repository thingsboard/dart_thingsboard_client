// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_type_version_load_config.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/version_load_request_type.dart';
import 'package:thingsboard_client/src/model/version_load_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_type_version_load_request.g.dart';

/// EntityTypeVersionLoadRequest
///
/// Properties:
/// * [versionId]
/// * [type] - Type of the version to load
/// * [entityTypes]
/// * [rollbackOnError]
@BuiltValue()
abstract class EntityTypeVersionLoadRequest
    implements
        VersionLoadRequest,
        Built<
          EntityTypeVersionLoadRequest,
          EntityTypeVersionLoadRequestBuilder
        > {
  @BuiltValueField(wireName: r'rollbackOnError')
  bool? get rollbackOnError;

  @BuiltValueField(wireName: r'entityTypes')
  BuiltMap<String, EntityTypeVersionLoadConfig>? get entityTypes;

  EntityTypeVersionLoadRequest._();

  factory EntityTypeVersionLoadRequest([
    void updates(EntityTypeVersionLoadRequestBuilder b),
  ]) = _$EntityTypeVersionLoadRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityTypeVersionLoadRequestBuilder b) =>
      b..type = VersionLoadRequestType.ENTITY_TYPE;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityTypeVersionLoadRequest> get serializer =>
      _$EntityTypeVersionLoadRequestSerializer();
}

class _$EntityTypeVersionLoadRequestSerializer
    implements PrimitiveSerializer<EntityTypeVersionLoadRequest> {
  @override
  final Iterable<Type> types = const [
    EntityTypeVersionLoadRequest,
    _$EntityTypeVersionLoadRequest,
  ];

  @override
  final String wireName = r'EntityTypeVersionLoadRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityTypeVersionLoadRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entityTypes != null) {
      yield r'entityTypes';
      yield serializers.serialize(
        object.entityTypes,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(EntityTypeVersionLoadConfig),
        ]),
      );
    }
    if (object.versionId != null) {
      yield r'versionId';
      yield serializers.serialize(
        object.versionId,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(VersionLoadRequestType),
    );
    if (object.rollbackOnError != null) {
      yield r'rollbackOnError';
      yield serializers.serialize(
        object.rollbackOnError,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityTypeVersionLoadRequest object, {
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
    required EntityTypeVersionLoadRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(EntityTypeVersionLoadConfig),
                    ]),
                  )
                  as BuiltMap<String, EntityTypeVersionLoadConfig>?;
          if (valueDes == null) continue;
          result.entityTypes.replace(valueDes);
          break;
        case r'versionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.versionId = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(VersionLoadRequestType),
                  )
                  as VersionLoadRequestType;
          result.type = valueDes;
          break;
        case r'rollbackOnError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.rollbackOnError = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityTypeVersionLoadRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityTypeVersionLoadRequestBuilder();
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
