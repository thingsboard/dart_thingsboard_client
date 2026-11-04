// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/version_create_request.dart';
import 'package:thingsboard_client/src/model/version_create_config.dart';
import 'package:thingsboard_client/src/model/version_create_request_type.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'single_entity_version_create_request.g.dart';

/// SingleEntityVersionCreateRequest
///
/// Properties:
/// * [versionName] 
/// * [branch] 
/// * [type] - Type of the version to create
/// * [entityId] 
/// * [config] 
@BuiltValue()
abstract class SingleEntityVersionCreateRequest implements VersionCreateRequest, Built<SingleEntityVersionCreateRequest, SingleEntityVersionCreateRequestBuilder> {
  @BuiltValueField(wireName: r'entityId')
  EntityId? get entityId;

  @BuiltValueField(wireName: r'config')
  VersionCreateConfig? get config;

  SingleEntityVersionCreateRequest._();

  factory SingleEntityVersionCreateRequest([void updates(SingleEntityVersionCreateRequestBuilder b)]) = _$SingleEntityVersionCreateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SingleEntityVersionCreateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SingleEntityVersionCreateRequest> get serializer => _$SingleEntityVersionCreateRequestSerializer();
}

class _$SingleEntityVersionCreateRequestSerializer implements PrimitiveSerializer<SingleEntityVersionCreateRequest> {
  @override
  final Iterable<Type> types = const [SingleEntityVersionCreateRequest, _$SingleEntityVersionCreateRequest];

  @override
  final String wireName = r'SingleEntityVersionCreateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SingleEntityVersionCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entityId != null) {
      yield r'entityId';
      yield serializers.serialize(
        object.entityId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.versionName != null) {
      yield r'versionName';
      yield serializers.serialize(
        object.versionName,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(VersionCreateRequestType),
    );
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(VersionCreateConfig),
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
    SingleEntityVersionCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SingleEntityVersionCreateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityId),
          ) as EntityId?;
          if (valueDes == null) continue;
          result.entityId = valueDes;
          break;
        case r'versionName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.versionName = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VersionCreateRequestType),
          ) as VersionCreateRequestType;
          result.type = valueDes;
          break;
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VersionCreateConfig),
          ) as VersionCreateConfig?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
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
  SingleEntityVersionCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SingleEntityVersionCreateRequestBuilder();
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


