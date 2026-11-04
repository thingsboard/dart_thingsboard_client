// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_info.g.dart';

/// SubscriptionInfo
///
/// Properties:
/// * [subscriptionId] 
/// * [subscriptionPlanName] 
/// * [planUiType] 
/// * [currentPeriodStartTs] 
/// * [currentPeriodEndTs] 
/// * [endTs] 
/// * [upcomingInvoiceDate] 
/// * [upcomingInvoiceAmountDue] 
/// * [planExtraDeviceEnabled] 
/// * [planEdgeEnabled] 
/// * [planExtraEdgeEnabled] 
/// * [planTrendzEnabled] 
/// * [planExtraAiCreditsEnabled] 
/// * [planExtraInstanceEnabled] 
/// * [planExtraAgentEnabled] 
/// * [dataTs] 
/// * [licenseServerEndpoint] 
/// * [maxDevices] 
/// * [maxAssets] 
/// * [maxEdges] 
/// * [maxAgents] 
/// * [maxInstances] 
/// * [maxAiCredits] 
/// * [whiteLabelingEnabled] 
/// * [edgeEnabled] 
/// * [trendzEnabled] 
/// * [development] 
/// * [nonProduction] 
/// * [devicesCount] 
/// * [assetsCount] 
/// * [edgesCount] 
/// * [agentsCount] 
/// * [instancesCount] 
/// * [usedAiCredits] 
/// * [communityGrantLicense] 
/// * [offline] 
/// * [perpetual] 
@BuiltValue()
abstract class SubscriptionInfo implements Built<SubscriptionInfo, SubscriptionInfoBuilder> {
  @BuiltValueField(wireName: r'subscriptionId')
  String? get subscriptionId;

  @BuiltValueField(wireName: r'subscriptionPlanName')
  String? get subscriptionPlanName;

  @BuiltValueField(wireName: r'planUiType')
  String? get planUiType;

  @BuiltValueField(wireName: r'currentPeriodStartTs')
  int? get currentPeriodStartTs;

  @BuiltValueField(wireName: r'currentPeriodEndTs')
  int? get currentPeriodEndTs;

  @BuiltValueField(wireName: r'endTs')
  int? get endTs;

  @BuiltValueField(wireName: r'upcomingInvoiceDate')
  int? get upcomingInvoiceDate;

  @BuiltValueField(wireName: r'upcomingInvoiceAmountDue')
  int? get upcomingInvoiceAmountDue;

  @BuiltValueField(wireName: r'planExtraDeviceEnabled')
  bool? get planExtraDeviceEnabled;

  @BuiltValueField(wireName: r'planEdgeEnabled')
  bool? get planEdgeEnabled;

  @BuiltValueField(wireName: r'planExtraEdgeEnabled')
  bool? get planExtraEdgeEnabled;

  @BuiltValueField(wireName: r'planTrendzEnabled')
  bool? get planTrendzEnabled;

  @BuiltValueField(wireName: r'planExtraAiCreditsEnabled')
  bool? get planExtraAiCreditsEnabled;

  @BuiltValueField(wireName: r'planExtraInstanceEnabled')
  bool? get planExtraInstanceEnabled;

  @BuiltValueField(wireName: r'planExtraAgentEnabled')
  bool? get planExtraAgentEnabled;

  @BuiltValueField(wireName: r'dataTs')
  int? get dataTs;

  @BuiltValueField(wireName: r'licenseServerEndpoint')
  String? get licenseServerEndpoint;

  @BuiltValueField(wireName: r'maxDevices')
  int? get maxDevices;

  @BuiltValueField(wireName: r'maxAssets')
  int? get maxAssets;

  @BuiltValueField(wireName: r'maxEdges')
  int? get maxEdges;

  @BuiltValueField(wireName: r'maxAgents')
  int? get maxAgents;

  @BuiltValueField(wireName: r'maxInstances')
  int? get maxInstances;

  @BuiltValueField(wireName: r'maxAiCredits')
  int? get maxAiCredits;

  @BuiltValueField(wireName: r'whiteLabelingEnabled')
  bool? get whiteLabelingEnabled;

  @BuiltValueField(wireName: r'edgeEnabled')
  bool? get edgeEnabled;

  @BuiltValueField(wireName: r'trendzEnabled')
  bool? get trendzEnabled;

  @BuiltValueField(wireName: r'development')
  bool? get development;

  @BuiltValueField(wireName: r'nonProduction')
  bool? get nonProduction;

  @BuiltValueField(wireName: r'devicesCount')
  int? get devicesCount;

  @BuiltValueField(wireName: r'assetsCount')
  int? get assetsCount;

  @BuiltValueField(wireName: r'edgesCount')
  int? get edgesCount;

  @BuiltValueField(wireName: r'agentsCount')
  int? get agentsCount;

  @BuiltValueField(wireName: r'instancesCount')
  int? get instancesCount;

  @BuiltValueField(wireName: r'usedAiCredits')
  int? get usedAiCredits;

  @BuiltValueField(wireName: r'communityGrantLicense')
  bool? get communityGrantLicense;

  @BuiltValueField(wireName: r'offline')
  bool? get offline;

  @BuiltValueField(wireName: r'perpetual')
  bool? get perpetual;

  SubscriptionInfo._();

  factory SubscriptionInfo([void updates(SubscriptionInfoBuilder b)]) = _$SubscriptionInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriptionInfo> get serializer => _$SubscriptionInfoSerializer();
}

class _$SubscriptionInfoSerializer implements PrimitiveSerializer<SubscriptionInfo> {
  @override
  final Iterable<Type> types = const [SubscriptionInfo, _$SubscriptionInfo];

  @override
  final String wireName = r'SubscriptionInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriptionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.subscriptionId != null) {
      yield r'subscriptionId';
      yield serializers.serialize(
        object.subscriptionId,
        specifiedType: const FullType(String),
      );
    }
    if (object.subscriptionPlanName != null) {
      yield r'subscriptionPlanName';
      yield serializers.serialize(
        object.subscriptionPlanName,
        specifiedType: const FullType(String),
      );
    }
    if (object.planUiType != null) {
      yield r'planUiType';
      yield serializers.serialize(
        object.planUiType,
        specifiedType: const FullType(String),
      );
    }
    if (object.currentPeriodStartTs != null) {
      yield r'currentPeriodStartTs';
      yield serializers.serialize(
        object.currentPeriodStartTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.currentPeriodEndTs != null) {
      yield r'currentPeriodEndTs';
      yield serializers.serialize(
        object.currentPeriodEndTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.endTs != null) {
      yield r'endTs';
      yield serializers.serialize(
        object.endTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.upcomingInvoiceDate != null) {
      yield r'upcomingInvoiceDate';
      yield serializers.serialize(
        object.upcomingInvoiceDate,
        specifiedType: const FullType(int),
      );
    }
    if (object.upcomingInvoiceAmountDue != null) {
      yield r'upcomingInvoiceAmountDue';
      yield serializers.serialize(
        object.upcomingInvoiceAmountDue,
        specifiedType: const FullType(int),
      );
    }
    if (object.planExtraDeviceEnabled != null) {
      yield r'planExtraDeviceEnabled';
      yield serializers.serialize(
        object.planExtraDeviceEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.planEdgeEnabled != null) {
      yield r'planEdgeEnabled';
      yield serializers.serialize(
        object.planEdgeEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.planExtraEdgeEnabled != null) {
      yield r'planExtraEdgeEnabled';
      yield serializers.serialize(
        object.planExtraEdgeEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.planTrendzEnabled != null) {
      yield r'planTrendzEnabled';
      yield serializers.serialize(
        object.planTrendzEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.planExtraAiCreditsEnabled != null) {
      yield r'planExtraAiCreditsEnabled';
      yield serializers.serialize(
        object.planExtraAiCreditsEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.planExtraInstanceEnabled != null) {
      yield r'planExtraInstanceEnabled';
      yield serializers.serialize(
        object.planExtraInstanceEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.planExtraAgentEnabled != null) {
      yield r'planExtraAgentEnabled';
      yield serializers.serialize(
        object.planExtraAgentEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.dataTs != null) {
      yield r'dataTs';
      yield serializers.serialize(
        object.dataTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.licenseServerEndpoint != null) {
      yield r'licenseServerEndpoint';
      yield serializers.serialize(
        object.licenseServerEndpoint,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxDevices != null) {
      yield r'maxDevices';
      yield serializers.serialize(
        object.maxDevices,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxAssets != null) {
      yield r'maxAssets';
      yield serializers.serialize(
        object.maxAssets,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxEdges != null) {
      yield r'maxEdges';
      yield serializers.serialize(
        object.maxEdges,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxAgents != null) {
      yield r'maxAgents';
      yield serializers.serialize(
        object.maxAgents,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxInstances != null) {
      yield r'maxInstances';
      yield serializers.serialize(
        object.maxInstances,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxAiCredits != null) {
      yield r'maxAiCredits';
      yield serializers.serialize(
        object.maxAiCredits,
        specifiedType: const FullType(int),
      );
    }
    if (object.whiteLabelingEnabled != null) {
      yield r'whiteLabelingEnabled';
      yield serializers.serialize(
        object.whiteLabelingEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.edgeEnabled != null) {
      yield r'edgeEnabled';
      yield serializers.serialize(
        object.edgeEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.trendzEnabled != null) {
      yield r'trendzEnabled';
      yield serializers.serialize(
        object.trendzEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.development != null) {
      yield r'development';
      yield serializers.serialize(
        object.development,
        specifiedType: const FullType(bool),
      );
    }
    if (object.nonProduction != null) {
      yield r'nonProduction';
      yield serializers.serialize(
        object.nonProduction,
        specifiedType: const FullType(bool),
      );
    }
    if (object.devicesCount != null) {
      yield r'devicesCount';
      yield serializers.serialize(
        object.devicesCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.assetsCount != null) {
      yield r'assetsCount';
      yield serializers.serialize(
        object.assetsCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.edgesCount != null) {
      yield r'edgesCount';
      yield serializers.serialize(
        object.edgesCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.agentsCount != null) {
      yield r'agentsCount';
      yield serializers.serialize(
        object.agentsCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.instancesCount != null) {
      yield r'instancesCount';
      yield serializers.serialize(
        object.instancesCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.usedAiCredits != null) {
      yield r'usedAiCredits';
      yield serializers.serialize(
        object.usedAiCredits,
        specifiedType: const FullType(int),
      );
    }
    if (object.communityGrantLicense != null) {
      yield r'communityGrantLicense';
      yield serializers.serialize(
        object.communityGrantLicense,
        specifiedType: const FullType(bool),
      );
    }
    if (object.offline != null) {
      yield r'offline';
      yield serializers.serialize(
        object.offline,
        specifiedType: const FullType(bool),
      );
    }
    if (object.perpetual != null) {
      yield r'perpetual';
      yield serializers.serialize(
        object.perpetual,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriptionInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'subscriptionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subscriptionId = valueDes;
          break;
        case r'subscriptionPlanName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subscriptionPlanName = valueDes;
          break;
        case r'planUiType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.planUiType = valueDes;
          break;
        case r'currentPeriodStartTs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.currentPeriodStartTs = valueDes;
          break;
        case r'currentPeriodEndTs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.currentPeriodEndTs = valueDes;
          break;
        case r'endTs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.endTs = valueDes;
          break;
        case r'upcomingInvoiceDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.upcomingInvoiceDate = valueDes;
          break;
        case r'upcomingInvoiceAmountDue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.upcomingInvoiceAmountDue = valueDes;
          break;
        case r'planExtraDeviceEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.planExtraDeviceEnabled = valueDes;
          break;
        case r'planEdgeEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.planEdgeEnabled = valueDes;
          break;
        case r'planExtraEdgeEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.planExtraEdgeEnabled = valueDes;
          break;
        case r'planTrendzEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.planTrendzEnabled = valueDes;
          break;
        case r'planExtraAiCreditsEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.planExtraAiCreditsEnabled = valueDes;
          break;
        case r'planExtraInstanceEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.planExtraInstanceEnabled = valueDes;
          break;
        case r'planExtraAgentEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.planExtraAgentEnabled = valueDes;
          break;
        case r'dataTs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.dataTs = valueDes;
          break;
        case r'licenseServerEndpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.licenseServerEndpoint = valueDes;
          break;
        case r'maxDevices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxDevices = valueDes;
          break;
        case r'maxAssets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxAssets = valueDes;
          break;
        case r'maxEdges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxEdges = valueDes;
          break;
        case r'maxAgents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxAgents = valueDes;
          break;
        case r'maxInstances':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxInstances = valueDes;
          break;
        case r'maxAiCredits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxAiCredits = valueDes;
          break;
        case r'whiteLabelingEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.whiteLabelingEnabled = valueDes;
          break;
        case r'edgeEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.edgeEnabled = valueDes;
          break;
        case r'trendzEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.trendzEnabled = valueDes;
          break;
        case r'development':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.development = valueDes;
          break;
        case r'nonProduction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.nonProduction = valueDes;
          break;
        case r'devicesCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.devicesCount = valueDes;
          break;
        case r'assetsCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.assetsCount = valueDes;
          break;
        case r'edgesCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.edgesCount = valueDes;
          break;
        case r'agentsCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.agentsCount = valueDes;
          break;
        case r'instancesCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.instancesCount = valueDes;
          break;
        case r'usedAiCredits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.usedAiCredits = valueDes;
          break;
        case r'communityGrantLicense':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.communityGrantLicense = valueDes;
          break;
        case r'offline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.offline = valueDes;
          break;
        case r'perpetual':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.perpetual = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubscriptionInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionInfoBuilder();
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


