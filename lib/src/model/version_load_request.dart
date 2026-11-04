// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/single_entity_version_load_request.dart';
import 'package:thingsboard_client/src/model/entity_type_version_load_request.dart';
import 'package:thingsboard_client/src/model/version_load_request_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'version_load_request.g.dart';

/// Request for loading a version
///
/// Properties:
/// * [versionId] 
/// * [type] - Type of the version to load
@BuiltValue(instantiable: false)
abstract class VersionLoadRequest  {
  @BuiltValueField(wireName: r'versionId')
  String? get versionId;

  /// Type of the version to load
  @BuiltValueField(wireName: r'type')
  VersionLoadRequestType get type;
  // enum typeEnum {  SINGLE_ENTITY,  ENTITY_TYPE,  };

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'ENTITY_TYPE': EntityTypeVersionLoadRequest,
    r'SINGLE_ENTITY': SingleEntityVersionLoadRequest,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<VersionLoadRequest> get serializer => _$VersionLoadRequestSerializer();
}

extension VersionLoadRequestDiscriminatorExt on VersionLoadRequest {
    String? get discriminatorValue {
        if (this is EntityTypeVersionLoadRequest) {
            return r'ENTITY_TYPE';
        }
        if (this is SingleEntityVersionLoadRequest) {
            return r'SINGLE_ENTITY';
        }
        return null;
    }
}
extension VersionLoadRequestBuilderDiscriminatorExt on VersionLoadRequestBuilder {
    String? get discriminatorValue {
        if (this is EntityTypeVersionLoadRequestBuilder) {
            return r'ENTITY_TYPE';
        }
        if (this is SingleEntityVersionLoadRequestBuilder) {
            return r'SINGLE_ENTITY';
        }
        return null;
    }
}

class _$VersionLoadRequestSerializer implements PrimitiveSerializer<VersionLoadRequest> {
  @override
  final Iterable<Type> types = const [VersionLoadRequest];

  @override
  final String wireName = r'VersionLoadRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VersionLoadRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    VersionLoadRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is EntityTypeVersionLoadRequest) {
      return serializers.serialize(object, specifiedType: FullType(EntityTypeVersionLoadRequest))!;
    }
    if (object is SingleEntityVersionLoadRequest) {
      return serializers.serialize(object, specifiedType: FullType(SingleEntityVersionLoadRequest))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  VersionLoadRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(VersionLoadRequest.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'ENTITY_TYPE':
        return serializers.deserialize(serialized, specifiedType: FullType(EntityTypeVersionLoadRequest)) as EntityTypeVersionLoadRequest;
      case r'SINGLE_ENTITY':
        return serializers.deserialize(serialized, specifiedType: FullType(SingleEntityVersionLoadRequest)) as SingleEntityVersionLoadRequest;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($VersionLoadRequest)) as $VersionLoadRequest;
    }
  }
}


/// a concrete implementation of [VersionLoadRequest], since [VersionLoadRequest] is not instantiable
@BuiltValue(instantiable: true)
abstract class $VersionLoadRequest implements VersionLoadRequest, Built<$VersionLoadRequest, $VersionLoadRequestBuilder> {
  $VersionLoadRequest._();

  factory $VersionLoadRequest([void Function($VersionLoadRequestBuilder)? updates]) = _$$VersionLoadRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($VersionLoadRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$VersionLoadRequest> get serializer => _$$VersionLoadRequestSerializer();
}

class _$$VersionLoadRequestSerializer implements PrimitiveSerializer<$VersionLoadRequest> {
  @override
  final Iterable<Type> types = const [$VersionLoadRequest, _$$VersionLoadRequest];

  @override
  final String wireName = r'$VersionLoadRequest';

  @override
  Object serialize(
    Serializers serializers,
    $VersionLoadRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(VersionLoadRequest))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VersionLoadRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $VersionLoadRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $VersionLoadRequestBuilder();
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

