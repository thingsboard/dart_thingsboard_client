// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/tenant_profile_data.dart';
import 'package:thingsboard_client/src/model/tenant_profile_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_profile.g.dart';

/// A JSON value representing the tenant profile.
///
/// Properties:
/// * [id] - JSON object with the tenant profile Id. Specify this field to update the tenant profile. Referencing non-existing tenant profile Id will cause error. Omit this field to create new tenant profile.
/// * [createdTime] - Timestamp of the tenant profile creation, in milliseconds
/// * [name] - Name of the tenant profile
/// * [description] - Description of the tenant profile
/// * [default_] - Default Tenant profile to be used.
/// * [isolatedTbRuleEngine] - If enabled, will push all messages related to this tenant and processed by the rule engine into separate queue. Useful for complex microservices deployments, to isolate processing of the data for specific tenants
/// * [profileData]
@BuiltValue()
abstract class TenantProfile
    implements Built<TenantProfile, TenantProfileBuilder> {
  /// JSON object with the tenant profile Id. Specify this field to update the tenant profile. Referencing non-existing tenant profile Id will cause error. Omit this field to create new tenant profile.
  @BuiltValueField(wireName: r'id')
  TenantProfileId? get id;

  /// Timestamp of the tenant profile creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// Name of the tenant profile
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Description of the tenant profile
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Default Tenant profile to be used.
  @BuiltValueField(wireName: r'default')
  bool? get default_;

  /// If enabled, will push all messages related to this tenant and processed by the rule engine into separate queue. Useful for complex microservices deployments, to isolate processing of the data for specific tenants
  @BuiltValueField(wireName: r'isolatedTbRuleEngine')
  bool? get isolatedTbRuleEngine;

  @BuiltValueField(wireName: r'profileData')
  TenantProfileData? get profileData;

  TenantProfile._();

  factory TenantProfile([void updates(TenantProfileBuilder b)]) =
      _$TenantProfile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantProfileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantProfile> get serializer =>
      _$TenantProfileSerializer();
}

class _$TenantProfileSerializer implements PrimitiveSerializer<TenantProfile> {
  @override
  final Iterable<Type> types = const [TenantProfile, _$TenantProfile];

  @override
  final String wireName = r'TenantProfile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantProfile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(TenantProfileId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isolatedTbRuleEngine != null) {
      yield r'isolatedTbRuleEngine';
      yield serializers.serialize(
        object.isolatedTbRuleEngine,
        specifiedType: const FullType(bool),
      );
    }
    if (object.profileData != null) {
      yield r'profileData';
      yield serializers.serialize(
        object.profileData,
        specifiedType: const FullType(TenantProfileData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TenantProfile object, {
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
    required TenantProfileBuilder result,
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
                    specifiedType: const FullType.nullable(TenantProfileId),
                  )
                  as TenantProfileId?;
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
        case r'default':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.default_ = valueDes;
          break;
        case r'isolatedTbRuleEngine':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.isolatedTbRuleEngine = valueDes;
          break;
        case r'profileData':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TenantProfileData),
                  )
                  as TenantProfileData?;
          if (valueDes == null) continue;
          result.profileData.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TenantProfile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantProfileBuilder();
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
