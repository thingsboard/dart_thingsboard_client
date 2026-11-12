// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/ai_model_config.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/ai_model_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ai_model_info.g.dart';

/// AI model with the same JSON shape as an AI model, except that 'configuration.providerConfig' is always null, so provider credentials are never exposed
///
/// Properties:
/// * [id]
/// * [createdTime]
/// * [tenantId]
/// * [version]
/// * [name]
/// * [customerAccessEnabled]
/// * [configuration]
/// * [externalId]
@BuiltValue()
abstract class AiModelInfo implements Built<AiModelInfo, AiModelInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  AiModelId? get id;

  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  @BuiltValueField(wireName: r'version')
  int? get version;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'customerAccessEnabled')
  bool? get customerAccessEnabled;

  @BuiltValueField(wireName: r'configuration')
  AiModelConfig? get configuration;

  @BuiltValueField(wireName: r'externalId')
  AiModelId? get externalId;

  AiModelInfo._();

  factory AiModelInfo([void updates(AiModelInfoBuilder b)]) = _$AiModelInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AiModelInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AiModelInfo> get serializer => _$AiModelInfoSerializer();
}

class _$AiModelInfoSerializer implements PrimitiveSerializer<AiModelInfo> {
  @override
  final Iterable<Type> types = const [AiModelInfo, _$AiModelInfo];

  @override
  final String wireName = r'AiModelInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AiModelInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(AiModelId),
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
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerAccessEnabled != null) {
      yield r'customerAccessEnabled';
      yield serializers.serialize(
        object.customerAccessEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.configuration != null) {
      yield r'configuration';
      yield serializers.serialize(
        object.configuration,
        specifiedType: const FullType(AiModelConfig),
      );
    }
    if (object.externalId != null) {
      yield r'externalId';
      yield serializers.serialize(
        object.externalId,
        specifiedType: const FullType(AiModelId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AiModelInfo object, {
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
    required AiModelInfoBuilder result,
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
                    specifiedType: const FullType.nullable(AiModelId),
                  )
                  as AiModelId?;
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
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'customerAccessEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.customerAccessEnabled = valueDes;
          break;
        case r'configuration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AiModelConfig),
                  )
                  as AiModelConfig?;
          if (valueDes == null) continue;
          result.configuration = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AiModelId),
                  )
                  as AiModelId?;
          if (valueDes == null) continue;
          result.externalId.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AiModelInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AiModelInfoBuilder();
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
