// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/sync_strategy.dart';
import 'package:thingsboard_client/src/model/version_create_request.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/version_create_request_type.dart';
import 'package:thingsboard_client/src/model/entity_type_version_create_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'complex_version_create_request.g.dart';

/// ComplexVersionCreateRequest
///
/// Properties:
/// * [versionName]
/// * [branch]
/// * [type] - Type of the version to create
/// * [syncStrategy]
/// * [entityTypes]
@BuiltValue()
abstract class ComplexVersionCreateRequest
    implements
        VersionCreateRequest,
        Built<ComplexVersionCreateRequest, ComplexVersionCreateRequestBuilder> {
  @BuiltValueField(wireName: r'entityTypes')
  BuiltMap<String, EntityTypeVersionCreateConfig>? get entityTypes;

  @BuiltValueField(wireName: r'syncStrategy')
  SyncStrategy? get syncStrategy;
  // enum syncStrategyEnum {  MERGE,  OVERWRITE,  };

  ComplexVersionCreateRequest._();

  factory ComplexVersionCreateRequest([
    void updates(ComplexVersionCreateRequestBuilder b),
  ]) = _$ComplexVersionCreateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComplexVersionCreateRequestBuilder b) =>
      b..type = VersionCreateRequestType.COMPLEX;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComplexVersionCreateRequest> get serializer =>
      _$ComplexVersionCreateRequestSerializer();
}

class _$ComplexVersionCreateRequestSerializer
    implements PrimitiveSerializer<ComplexVersionCreateRequest> {
  @override
  final Iterable<Type> types = const [
    ComplexVersionCreateRequest,
    _$ComplexVersionCreateRequest,
  ];

  @override
  final String wireName = r'ComplexVersionCreateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComplexVersionCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entityTypes != null) {
      yield r'entityTypes';
      yield serializers.serialize(
        object.entityTypes,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(EntityTypeVersionCreateConfig),
        ]),
      );
    }
    if (object.syncStrategy != null) {
      yield r'syncStrategy';
      yield serializers.serialize(
        object.syncStrategy,
        specifiedType: const FullType(SyncStrategy),
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
    ComplexVersionCreateRequest object, {
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
    required ComplexVersionCreateRequestBuilder result,
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
                      FullType(EntityTypeVersionCreateConfig),
                    ]),
                  )
                  as BuiltMap<String, EntityTypeVersionCreateConfig>?;
          if (valueDes == null) continue;
          result.entityTypes.replace(valueDes);
          break;
        case r'syncStrategy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SyncStrategy),
                  )
                  as SyncStrategy?;
          if (valueDes == null) continue;
          result.syncStrategy = valueDes;
          break;
        case r'versionName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.versionName = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(VersionCreateRequestType),
                  )
                  as VersionCreateRequestType;
          result.type = valueDes;
          break;
        case r'branch':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
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
  ComplexVersionCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplexVersionCreateRequestBuilder();
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
