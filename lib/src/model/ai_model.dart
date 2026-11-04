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

part 'ai_model.g.dart';

/// AiModel
///
/// Properties:
/// * [id]
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [tenantId] - JSON object representing the ID of the tenant associated with this AI model
/// * [version] - Version of the AI model record; increments automatically whenever the record is changed
/// * [name] - Display name for this AI model configuration; not the technical model identifier
/// * [configuration] - Configuration of the AI model
@BuiltValue()
abstract class AiModel implements Built<AiModel, AiModelBuilder> {
  @BuiltValueField(wireName: r'id')
  AiModelId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object representing the ID of the tenant associated with this AI model
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// Version of the AI model record; increments automatically whenever the record is changed
  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Display name for this AI model configuration; not the technical model identifier
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Configuration of the AI model
  @BuiltValueField(wireName: r'configuration')
  AiModelConfig? get configuration;

  AiModel._();

  factory AiModel([void updates(AiModelBuilder b)]) = _$AiModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AiModelBuilder b) => b..version = 1;

  @BuiltValueSerializer(custom: true)
  static Serializer<AiModel> get serializer => _$AiModelSerializer();
}

class _$AiModelSerializer implements PrimitiveSerializer<AiModel> {
  @override
  final Iterable<Type> types = const [AiModel, _$AiModel];

  @override
  final String wireName = r'AiModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AiModel object, {
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
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.configuration != null) {
      yield r'configuration';
      yield serializers.serialize(
        object.configuration,
        specifiedType: const FullType(AiModelConfig),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AiModel object, {
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
    required AiModelBuilder result,
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
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AiModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AiModelBuilder();
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
