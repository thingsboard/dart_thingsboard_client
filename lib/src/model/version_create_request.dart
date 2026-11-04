// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/complex_version_create_request.dart';
import 'package:thingsboard_client/src/model/single_entity_version_create_request.dart';
import 'package:thingsboard_client/src/model/version_create_request_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'version_create_request.g.dart';

/// Request for creating a version
///
/// Properties:
/// * [versionName]
/// * [branch]
/// * [type] - Type of the version to create
@BuiltValue(instantiable: false)
abstract class VersionCreateRequest {
  @BuiltValueField(wireName: r'versionName')
  String? get versionName;

  @BuiltValueField(wireName: r'branch')
  String? get branch;

  /// Type of the version to create
  @BuiltValueField(wireName: r'type')
  VersionCreateRequestType get type;
  // enum typeEnum {  SINGLE_ENTITY,  COMPLEX,  };

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'COMPLEX': ComplexVersionCreateRequest,
    r'SINGLE_ENTITY': SingleEntityVersionCreateRequest,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<VersionCreateRequest> get serializer =>
      _$VersionCreateRequestSerializer();
}

extension VersionCreateRequestDiscriminatorExt on VersionCreateRequest {
  String? get discriminatorValue {
    if (this is ComplexVersionCreateRequest) {
      return r'COMPLEX';
    }
    if (this is SingleEntityVersionCreateRequest) {
      return r'SINGLE_ENTITY';
    }
    return null;
  }
}

extension VersionCreateRequestBuilderDiscriminatorExt
    on VersionCreateRequestBuilder {
  String? get discriminatorValue {
    if (this is ComplexVersionCreateRequestBuilder) {
      return r'COMPLEX';
    }
    if (this is SingleEntityVersionCreateRequestBuilder) {
      return r'SINGLE_ENTITY';
    }
    return null;
  }
}

class _$VersionCreateRequestSerializer
    implements PrimitiveSerializer<VersionCreateRequest> {
  @override
  final Iterable<Type> types = const [VersionCreateRequest];

  @override
  final String wireName = r'VersionCreateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VersionCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.versionName != null) {
      yield r'versionName';
      yield serializers.serialize(
        object.versionName,
        specifiedType: const FullType(String),
      );
    }
    if (object.branch != null) {
      yield r'branch';
      yield serializers.serialize(
        object.branch,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(VersionCreateRequestType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VersionCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is ComplexVersionCreateRequest) {
      return serializers.serialize(
        object,
        specifiedType: FullType(ComplexVersionCreateRequest),
      )!;
    }
    if (object is SingleEntityVersionCreateRequest) {
      return serializers.serialize(
        object,
        specifiedType: FullType(SingleEntityVersionCreateRequest),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  VersionCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(VersionCreateRequest.discriminatorFieldName) + 1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'COMPLEX':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(ComplexVersionCreateRequest),
            )
            as ComplexVersionCreateRequest;
      case r'SINGLE_ENTITY':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(SingleEntityVersionCreateRequest),
            )
            as SingleEntityVersionCreateRequest;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($VersionCreateRequest),
            )
            as $VersionCreateRequest;
    }
  }
}

/// a concrete implementation of [VersionCreateRequest], since [VersionCreateRequest] is not instantiable
@BuiltValue(instantiable: true)
abstract class $VersionCreateRequest
    implements
        VersionCreateRequest,
        Built<$VersionCreateRequest, $VersionCreateRequestBuilder> {
  $VersionCreateRequest._();

  factory $VersionCreateRequest([
    void Function($VersionCreateRequestBuilder)? updates,
  ]) = _$$VersionCreateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($VersionCreateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$VersionCreateRequest> get serializer =>
      _$$VersionCreateRequestSerializer();
}

class _$$VersionCreateRequestSerializer
    implements PrimitiveSerializer<$VersionCreateRequest> {
  @override
  final Iterable<Type> types = const [
    $VersionCreateRequest,
    _$$VersionCreateRequest,
  ];

  @override
  final String wireName = r'$VersionCreateRequest';

  @override
  Object serialize(
    Serializers serializers,
    $VersionCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(VersionCreateRequest),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VersionCreateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(VersionCreateRequestType),
                  )
                  as VersionCreateRequestType;
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
  $VersionCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $VersionCreateRequestBuilder();
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
