// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/asset_profile_id.dart';
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/rule_chain_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'asset_profile.g.dart';

/// A JSON value representing the asset profile.
///
/// Properties:
/// * [id] - JSON object with the asset profile Id. Specify this field to update the asset profile. Referencing non-existing asset profile Id will cause error. Omit this field to create new asset profile.
/// * [createdTime] - Timestamp of the profile creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id that owns the profile.
/// * [name] - Unique Asset Profile Name in scope of Tenant.
/// * [description] - Asset Profile description. 
/// * [image] - Either URL or Base64 data of the icon. Used in the mobile application to visualize set of asset profiles in the grid view. 
/// * [defaultRuleChainId] - Reference to the rule chain. If present, the specified rule chain will be used to process all messages related to asset, including asset updates, telemetry, attribute updates, etc. Otherwise, the root rule chain will be used to process those messages.
/// * [defaultDashboardId] - Reference to the dashboard. Used in the mobile application to open the default dashboard when user navigates to asset details.
/// * [defaultQueueName] - Rule engine queue name. If present, the specified queue will be used to store all unprocessed messages related to asset, including asset updates, telemetry, attribute updates, etc. Otherwise, the 'Main' queue will be used to store those messages.
/// * [defaultEdgeRuleChainId] - Reference to the edge rule chain. If present, the specified edge rule chain will be used on the edge to process all messages related to asset, including asset updates, telemetry, attribute updates, etc. Otherwise, the edge root rule chain will be used to process those messages.
/// * [version] 
/// * [default_] - Used to mark the default profile. Default profile is used when the asset profile is not specified during asset creation.
@BuiltValue()
abstract class AssetProfile implements Built<AssetProfile, AssetProfileBuilder> {
  /// JSON object with the asset profile Id. Specify this field to update the asset profile. Referencing non-existing asset profile Id will cause error. Omit this field to create new asset profile.
  @BuiltValueField(wireName: r'id')
  AssetProfileId? get id;

  /// Timestamp of the profile creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id that owns the profile.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// Unique Asset Profile Name in scope of Tenant.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Asset Profile description. 
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Either URL or Base64 data of the icon. Used in the mobile application to visualize set of asset profiles in the grid view. 
  @BuiltValueField(wireName: r'image')
  String? get image;

  /// Reference to the rule chain. If present, the specified rule chain will be used to process all messages related to asset, including asset updates, telemetry, attribute updates, etc. Otherwise, the root rule chain will be used to process those messages.
  @BuiltValueField(wireName: r'defaultRuleChainId')
  RuleChainId? get defaultRuleChainId;

  /// Reference to the dashboard. Used in the mobile application to open the default dashboard when user navigates to asset details.
  @BuiltValueField(wireName: r'defaultDashboardId')
  DashboardId? get defaultDashboardId;

  /// Rule engine queue name. If present, the specified queue will be used to store all unprocessed messages related to asset, including asset updates, telemetry, attribute updates, etc. Otherwise, the 'Main' queue will be used to store those messages.
  @BuiltValueField(wireName: r'defaultQueueName')
  String? get defaultQueueName;

  /// Reference to the edge rule chain. If present, the specified edge rule chain will be used on the edge to process all messages related to asset, including asset updates, telemetry, attribute updates, etc. Otherwise, the edge root rule chain will be used to process those messages.
  @BuiltValueField(wireName: r'defaultEdgeRuleChainId')
  RuleChainId? get defaultEdgeRuleChainId;

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Used to mark the default profile. Default profile is used when the asset profile is not specified during asset creation.
  @BuiltValueField(wireName: r'default')
  bool? get default_;

  AssetProfile._();

  factory AssetProfile([void updates(AssetProfileBuilder b)]) = _$AssetProfile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssetProfileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssetProfile> get serializer => _$AssetProfileSerializer();
}

class _$AssetProfileSerializer implements PrimitiveSerializer<AssetProfile> {
  @override
  final Iterable<Type> types = const [AssetProfile, _$AssetProfile];

  @override
  final String wireName = r'AssetProfile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssetProfile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(AssetProfileId),
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
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultRuleChainId != null) {
      yield r'defaultRuleChainId';
      yield serializers.serialize(
        object.defaultRuleChainId,
        specifiedType: const FullType(RuleChainId),
      );
    }
    if (object.defaultDashboardId != null) {
      yield r'defaultDashboardId';
      yield serializers.serialize(
        object.defaultDashboardId,
        specifiedType: const FullType(DashboardId),
      );
    }
    if (object.defaultQueueName != null) {
      yield r'defaultQueueName';
      yield serializers.serialize(
        object.defaultQueueName,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultEdgeRuleChainId != null) {
      yield r'defaultEdgeRuleChainId';
      yield serializers.serialize(
        object.defaultEdgeRuleChainId,
        specifiedType: const FullType(RuleChainId),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssetProfile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AssetProfileBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AssetProfileId),
          ) as AssetProfileId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TenantId),
          ) as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'defaultRuleChainId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuleChainId),
          ) as RuleChainId?;
          if (valueDes == null) continue;
          result.defaultRuleChainId.replace(valueDes);
          break;
        case r'defaultDashboardId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DashboardId),
          ) as DashboardId?;
          if (valueDes == null) continue;
          result.defaultDashboardId.replace(valueDes);
          break;
        case r'defaultQueueName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.defaultQueueName = valueDes;
          break;
        case r'defaultEdgeRuleChainId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuleChainId),
          ) as RuleChainId?;
          if (valueDes == null) continue;
          result.defaultEdgeRuleChainId.replace(valueDes);
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'default':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.default_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssetProfile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssetProfileBuilder();
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


