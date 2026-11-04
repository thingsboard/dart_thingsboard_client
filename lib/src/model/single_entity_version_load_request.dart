// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/version_load_request_type.dart';
import 'package:thingsboard_client/src/model/version_load_config.dart';
import 'package:thingsboard_client/src/model/version_load_request.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'single_entity_version_load_request.g.dart';

/// SingleEntityVersionLoadRequest
///
/// Properties:
/// * [versionId] 
/// * [type] - Type of the version to load
/// * [internalEntityId] 
/// * [externalEntityId] 
/// * [config] 
@BuiltValue()
abstract class SingleEntityVersionLoadRequest implements VersionLoadRequest, Built<SingleEntityVersionLoadRequest, SingleEntityVersionLoadRequestBuilder> {
  @BuiltValueField(wireName: r'externalEntityId')
  EntityId? get externalEntityId;

  @BuiltValueField(wireName: r'internalEntityId')
  EntityId? get internalEntityId;

  @BuiltValueField(wireName: r'config')
  VersionLoadConfig? get config;

  SingleEntityVersionLoadRequest._();

  factory SingleEntityVersionLoadRequest([void updates(SingleEntityVersionLoadRequestBuilder b)]) = _$SingleEntityVersionLoadRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SingleEntityVersionLoadRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SingleEntityVersionLoadRequest> get serializer => _$SingleEntityVersionLoadRequestSerializer();
}

class _$SingleEntityVersionLoadRequestSerializer implements PrimitiveSerializer<SingleEntityVersionLoadRequest> {
  @override
  final Iterable<Type> types = const [SingleEntityVersionLoadRequest, _$SingleEntityVersionLoadRequest];

  @override
  final String wireName = r'SingleEntityVersionLoadRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SingleEntityVersionLoadRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.externalEntityId != null) {
      yield r'externalEntityId';
      yield serializers.serialize(
        object.externalEntityId,
        specifiedType: const FullType(EntityId),
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
    if (object.internalEntityId != null) {
      yield r'internalEntityId';
      yield serializers.serialize(
        object.internalEntityId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(VersionLoadConfig),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SingleEntityVersionLoadRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SingleEntityVersionLoadRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'externalEntityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityId),
          ) as EntityId?;
          if (valueDes == null) continue;
          result.externalEntityId = valueDes;
          break;
        case r'versionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.versionId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VersionLoadRequestType),
          ) as VersionLoadRequestType;
          result.type = valueDes;
          break;
        case r'internalEntityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityId),
          ) as EntityId?;
          if (valueDes == null) continue;
          result.internalEntityId = valueDes;
          break;
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VersionLoadConfig),
          ) as VersionLoadConfig?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SingleEntityVersionLoadRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SingleEntityVersionLoadRequestBuilder();
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


