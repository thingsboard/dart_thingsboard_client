// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/secret_id.dart';
import 'package:thingsboard_client/src/model/secret_type.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'secret_info.g.dart';

/// SecretInfo
///
/// Properties:
/// * [id] - JSON object with the Secret Id. Specify this field to update the Secret. Referencing non-existing Secret Id will cause error. Omit this field to create new Secret.
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [tenantId] - JSON object with Tenant Id. Tenant Id of the secret cannot be changed.
/// * [name] - Secret name
/// * [type] - Secret type.
/// * [description] - Secret description.
@BuiltValue()
abstract class SecretInfo implements Built<SecretInfo, SecretInfoBuilder> {
  /// JSON object with the Secret Id. Specify this field to update the Secret. Referencing non-existing Secret Id will cause error. Omit this field to create new Secret.
  @BuiltValueField(wireName: r'id')
  SecretId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id. Tenant Id of the secret cannot be changed.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// Secret name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Secret type.
  @BuiltValueField(wireName: r'type')
  SecretType get type;
  // enum typeEnum {  TEXT,  TEXT_FILE,  };

  /// Secret description.
  @BuiltValueField(wireName: r'description')
  String? get description;

  SecretInfo._();

  factory SecretInfo([void updates(SecretInfoBuilder b)]) = _$SecretInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SecretInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SecretInfo> get serializer => _$SecretInfoSerializer();
}

class _$SecretInfoSerializer implements PrimitiveSerializer<SecretInfo> {
  @override
  final Iterable<Type> types = const [SecretInfo, _$SecretInfo];

  @override
  final String wireName = r'SecretInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SecretInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(SecretId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(SecretType),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SecretInfo object, {
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
    required SecretInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SecretId),
                  )
                  as SecretId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'tenantId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TenantId),
                  )
                  as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SecretType),
                  )
                  as SecretType;
          result.type = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SecretInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SecretInfoBuilder();
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
