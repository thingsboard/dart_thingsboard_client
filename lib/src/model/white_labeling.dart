// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/white_labeling_type.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/domain_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'white_labeling.g.dart';

/// WhiteLabeling
///
/// Properties:
/// * [tenantId] 
/// * [customerId] 
/// * [type] 
/// * [settings] - A value representing the any type (object or primitive)
/// * [domainId] 
@BuiltValue()
abstract class WhiteLabeling implements Built<WhiteLabeling, WhiteLabelingBuilder> {
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  @BuiltValueField(wireName: r'type')
  WhiteLabelingType? get type;
  // enum typeEnum {  LOGIN,  GENERAL,  MAIL_TEMPLATES,  SELF_REGISTRATION,  TERMS_OF_USE,  PRIVACY_POLICY,  };

  /// A value representing the any type (object or primitive)
  @BuiltValueField(wireName: r'settings')
  JsonObject? get settings;

  @BuiltValueField(wireName: r'domainId')
  DomainId? get domainId;

  WhiteLabeling._();

  factory WhiteLabeling([void updates(WhiteLabelingBuilder b)]) = _$WhiteLabeling;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WhiteLabelingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WhiteLabeling> get serializer => _$WhiteLabelingSerializer();
}

class _$WhiteLabelingSerializer implements PrimitiveSerializer<WhiteLabeling> {
  @override
  final Iterable<Type> types = const [WhiteLabeling, _$WhiteLabeling];

  @override
  final String wireName = r'WhiteLabeling';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WhiteLabeling object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(WhiteLabelingType),
      );
    }
    if (object.settings != null) {
      yield r'settings';
      yield serializers.serialize(
        object.settings,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.domainId != null) {
      yield r'domainId';
      yield serializers.serialize(
        object.domainId,
        specifiedType: const FullType(DomainId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WhiteLabeling object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WhiteLabelingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TenantId),
          ) as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CustomerId),
          ) as CustomerId?;
          if (valueDes == null) continue;
          result.customerId.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(WhiteLabelingType),
          ) as WhiteLabelingType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'settings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.settings = valueDes;
          break;
        case r'domainId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DomainId),
          ) as DomainId?;
          if (valueDes == null) continue;
          result.domainId.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WhiteLabeling deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WhiteLabelingBuilder();
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


