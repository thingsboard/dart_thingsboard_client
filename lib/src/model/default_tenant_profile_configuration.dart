// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/tenant_profile_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'default_tenant_profile_configuration.g.dart';

/// DefaultTenantProfileConfiguration
///
/// Properties:
/// * [type] 
/// * [maxDevices] 
/// * [maxAssets] 
/// * [maxCustomers] 
/// * [maxUsers] 
/// * [maxDashboards] 
/// * [maxRuleChains] 
/// * [maxEdges] 
/// * [maxResourcesInBytes] 
/// * [maxOtaPackagesInBytes] 
/// * [maxResourceSize] 
/// * [maxReportSizeInBytes] 
/// * [maxIntegrations] 
/// * [maxConverters] 
/// * [maxSchedulerEvents] 
/// * [maxAgents] 
/// * [maxAgentApplications] 
/// * [transportTenantMsgRateLimit] 
/// * [transportTenantTelemetryMsgRateLimit] 
/// * [transportTenantTelemetryDataPointsRateLimit] 
/// * [transportDeviceMsgRateLimit] 
/// * [transportDeviceTelemetryMsgRateLimit] 
/// * [transportDeviceTelemetryDataPointsRateLimit] 
/// * [transportGatewayMsgRateLimit] 
/// * [transportGatewayTelemetryMsgRateLimit] 
/// * [transportGatewayTelemetryDataPointsRateLimit] 
/// * [transportGatewayDeviceMsgRateLimit] 
/// * [transportGatewayDeviceTelemetryMsgRateLimit] 
/// * [transportGatewayDeviceTelemetryDataPointsRateLimit] 
/// * [integrationMsgsPerTenantRateLimit] 
/// * [integrationMsgsPerDeviceRateLimit] 
/// * [integrationMsgsPerAssetRateLimit] 
/// * [tenantEntityExportRateLimit] 
/// * [tenantEntityImportRateLimit] 
/// * [tenantNotificationRequestsRateLimit] 
/// * [tenantNotificationRequestsPerRuleRateLimit] 
/// * [maxTransportMessages] 
/// * [maxTransportDataPoints] 
/// * [maxREExecutions] 
/// * [maxJSExecutions] 
/// * [maxTbelExecutions] 
/// * [maxDPStorageDays] 
/// * [maxRuleNodeExecutionsPerMessage] 
/// * [maxDebugModeDurationMinutes] 
/// * [maxEmails] 
/// * [smsEnabled] 
/// * [maxSms] 
/// * [maxCreatedAlarms] 
/// * [maxGeneratedReports] 
/// * [maxAiCredits] 
/// * [tenantServerRestLimitsConfiguration] 
/// * [customerServerRestLimitsConfiguration] 
/// * [maxWsSessionsPerTenant] 
/// * [maxWsSessionsPerCustomer] 
/// * [maxWsSessionsPerRegularUser] 
/// * [maxWsSessionsPerPublicUser] 
/// * [wsMsgQueueLimitPerSession] 
/// * [maxWsSubscriptionsPerTenant] 
/// * [maxWsSubscriptionsPerCustomer] 
/// * [maxWsSubscriptionsPerRegularUser] 
/// * [maxWsSubscriptionsPerPublicUser] 
/// * [wsUpdatesPerSessionRateLimit] 
/// * [cassandraReadQueryTenantCoreRateLimits] 
/// * [cassandraWriteQueryTenantCoreRateLimits] 
/// * [cassandraReadQueryTenantRuleEngineRateLimits] 
/// * [cassandraWriteQueryTenantRuleEngineRateLimits] 
/// * [edgeEventRateLimits] 
/// * [edgeEventRateLimitsPerEdge] 
/// * [edgeUplinkMessagesRateLimits] 
/// * [edgeUplinkMessagesRateLimitsPerEdge] 
/// * [agentEventRateLimits] 
/// * [agentEventRateLimitsPerAgent] 
/// * [agentLogChunkRateLimits] 
/// * [agentLogChunkRateLimitsPerAgent] 
/// * [defaultStorageTtlDays] 
/// * [alarmsTtlDays] 
/// * [rpcTtlDays] 
/// * [queueStatsTtlDays] 
/// * [ruleEngineExceptionsTtlDays] 
/// * [blobEntityTtlDays] 
/// * [reportTtlDays] 
/// * [warnThreshold] 
/// * [maxCalculatedFieldsPerEntity] 
/// * [maxArgumentsPerCF] 
/// * [minAllowedScheduledUpdateIntervalInSecForCF] 
/// * [maxRelationLevelPerCfArgument] 
/// * [maxRelatedEntitiesToReturnPerCfArgument] 
/// * [maxDataPointsPerRollingArg] 
/// * [maxStateSizeInKBytes] 
/// * [maxSingleValueArgumentSizeInKBytes] 
/// * [minAllowedDeduplicationIntervalInSecForCF] 
/// * [minAllowedAggregationIntervalInSecForCF] 
/// * [intermediateAggregationIntervalInSecForCF] 
/// * [cfReevaluationCheckInterval] 
/// * [alarmsReevaluationInterval] 
/// * [aiChatRequestsPerTenantRateLimit] 
@BuiltValue()
abstract class DefaultTenantProfileConfiguration implements TenantProfileConfiguration, Built<DefaultTenantProfileConfiguration, DefaultTenantProfileConfigurationBuilder> {
  @BuiltValueField(wireName: r'maxWsSubscriptionsPerTenant')
  int? get maxWsSubscriptionsPerTenant;

  @BuiltValueField(wireName: r'transportGatewayTelemetryDataPointsRateLimit')
  String? get transportGatewayTelemetryDataPointsRateLimit;

  @BuiltValueField(wireName: r'transportTenantTelemetryMsgRateLimit')
  String? get transportTenantTelemetryMsgRateLimit;

  @BuiltValueField(wireName: r'cassandraReadQueryTenantRuleEngineRateLimits')
  String? get cassandraReadQueryTenantRuleEngineRateLimits;

  @BuiltValueField(wireName: r'transportGatewayTelemetryMsgRateLimit')
  String? get transportGatewayTelemetryMsgRateLimit;

  @BuiltValueField(wireName: r'ruleEngineExceptionsTtlDays')
  int? get ruleEngineExceptionsTtlDays;

  @BuiltValueField(wireName: r'agentEventRateLimits')
  String? get agentEventRateLimits;

  @BuiltValueField(wireName: r'alarmsTtlDays')
  int? get alarmsTtlDays;

  @BuiltValueField(wireName: r'maxRelationLevelPerCfArgument')
  int? get maxRelationLevelPerCfArgument;

  @BuiltValueField(wireName: r'wsMsgQueueLimitPerSession')
  int? get wsMsgQueueLimitPerSession;

  @BuiltValueField(wireName: r'maxEdges')
  int? get maxEdges;

  @BuiltValueField(wireName: r'maxDashboards')
  int? get maxDashboards;

  @BuiltValueField(wireName: r'maxReportSizeInBytes')
  int? get maxReportSizeInBytes;

  @BuiltValueField(wireName: r'maxSchedulerEvents')
  int? get maxSchedulerEvents;

  @BuiltValueField(wireName: r'maxDataPointsPerRollingArg')
  int? get maxDataPointsPerRollingArg;

  @BuiltValueField(wireName: r'maxEmails')
  int? get maxEmails;

  @BuiltValueField(wireName: r'edgeUplinkMessagesRateLimits')
  String? get edgeUplinkMessagesRateLimits;

  @BuiltValueField(wireName: r'tenantEntityImportRateLimit')
  String? get tenantEntityImportRateLimit;

  @BuiltValueField(wireName: r'maxResourcesInBytes')
  int? get maxResourcesInBytes;

  @BuiltValueField(wireName: r'maxWsSessionsPerCustomer')
  int? get maxWsSessionsPerCustomer;

  @BuiltValueField(wireName: r'integrationMsgsPerDeviceRateLimit')
  String? get integrationMsgsPerDeviceRateLimit;

  @BuiltValueField(wireName: r'customerServerRestLimitsConfiguration')
  String? get customerServerRestLimitsConfiguration;

  @BuiltValueField(wireName: r'maxRelatedEntitiesToReturnPerCfArgument')
  int? get maxRelatedEntitiesToReturnPerCfArgument;

  @BuiltValueField(wireName: r'maxDevices')
  int? get maxDevices;

  @BuiltValueField(wireName: r'minAllowedDeduplicationIntervalInSecForCF')
  int? get minAllowedDeduplicationIntervalInSecForCF;

  @BuiltValueField(wireName: r'transportGatewayDeviceTelemetryMsgRateLimit')
  String? get transportGatewayDeviceTelemetryMsgRateLimit;

  @BuiltValueField(wireName: r'maxStateSizeInKBytes')
  int? get maxStateSizeInKBytes;

  @BuiltValueField(wireName: r'maxSingleValueArgumentSizeInKBytes')
  int? get maxSingleValueArgumentSizeInKBytes;

  @BuiltValueField(wireName: r'cassandraWriteQueryTenantCoreRateLimits')
  String? get cassandraWriteQueryTenantCoreRateLimits;

  @BuiltValueField(wireName: r'maxTransportMessages')
  int? get maxTransportMessages;

  @BuiltValueField(wireName: r'transportTenantMsgRateLimit')
  String? get transportTenantMsgRateLimit;

  @BuiltValueField(wireName: r'transportGatewayDeviceTelemetryDataPointsRateLimit')
  String? get transportGatewayDeviceTelemetryDataPointsRateLimit;

  @BuiltValueField(wireName: r'maxJSExecutions')
  int? get maxJSExecutions;

  @BuiltValueField(wireName: r'maxAiCredits')
  int? get maxAiCredits;

  @BuiltValueField(wireName: r'maxREExecutions')
  int? get maxREExecutions;

  @BuiltValueField(wireName: r'maxAgents')
  int? get maxAgents;

  @BuiltValueField(wireName: r'tenantEntityExportRateLimit')
  String? get tenantEntityExportRateLimit;

  @BuiltValueField(wireName: r'maxTbelExecutions')
  int? get maxTbelExecutions;

  @BuiltValueField(wireName: r'smsEnabled')
  bool? get smsEnabled;

  @BuiltValueField(wireName: r'maxWsSessionsPerPublicUser')
  int? get maxWsSessionsPerPublicUser;

  @BuiltValueField(wireName: r'maxCreatedAlarms')
  int? get maxCreatedAlarms;

  @BuiltValueField(wireName: r'maxWsSubscriptionsPerPublicUser')
  int? get maxWsSubscriptionsPerPublicUser;

  @BuiltValueField(wireName: r'cfReevaluationCheckInterval')
  int? get cfReevaluationCheckInterval;

  @BuiltValueField(wireName: r'maxConverters')
  int? get maxConverters;

  @BuiltValueField(wireName: r'wsUpdatesPerSessionRateLimit')
  String? get wsUpdatesPerSessionRateLimit;

  @BuiltValueField(wireName: r'maxUsers')
  int? get maxUsers;

  @BuiltValueField(wireName: r'alarmsReevaluationInterval')
  int? get alarmsReevaluationInterval;

  @BuiltValueField(wireName: r'tenantNotificationRequestsRateLimit')
  String? get tenantNotificationRequestsRateLimit;

  @BuiltValueField(wireName: r'integrationMsgsPerAssetRateLimit')
  String? get integrationMsgsPerAssetRateLimit;

  @BuiltValueField(wireName: r'maxArgumentsPerCF')
  int? get maxArgumentsPerCF;

  @BuiltValueField(wireName: r'edgeEventRateLimits')
  String? get edgeEventRateLimits;

  @BuiltValueField(wireName: r'maxOtaPackagesInBytes')
  int? get maxOtaPackagesInBytes;

  @BuiltValueField(wireName: r'maxAgentApplications')
  int? get maxAgentApplications;

  @BuiltValueField(wireName: r'defaultStorageTtlDays')
  int? get defaultStorageTtlDays;

  @BuiltValueField(wireName: r'agentLogChunkRateLimits')
  String? get agentLogChunkRateLimits;

  @BuiltValueField(wireName: r'transportGatewayDeviceMsgRateLimit')
  String? get transportGatewayDeviceMsgRateLimit;

  @BuiltValueField(wireName: r'aiChatRequestsPerTenantRateLimit')
  String? get aiChatRequestsPerTenantRateLimit;

  @BuiltValueField(wireName: r'maxAssets')
  int? get maxAssets;

  @BuiltValueField(wireName: r'maxRuleChains')
  int? get maxRuleChains;

  @BuiltValueField(wireName: r'transportDeviceTelemetryMsgRateLimit')
  String? get transportDeviceTelemetryMsgRateLimit;

  @BuiltValueField(wireName: r'integrationMsgsPerTenantRateLimit')
  String? get integrationMsgsPerTenantRateLimit;

  @BuiltValueField(wireName: r'maxGeneratedReports')
  int? get maxGeneratedReports;

  @BuiltValueField(wireName: r'maxSms')
  int? get maxSms;

  @BuiltValueField(wireName: r'edgeEventRateLimitsPerEdge')
  String? get edgeEventRateLimitsPerEdge;

  @BuiltValueField(wireName: r'minAllowedAggregationIntervalInSecForCF')
  int? get minAllowedAggregationIntervalInSecForCF;

  @BuiltValueField(wireName: r'transportDeviceTelemetryDataPointsRateLimit')
  String? get transportDeviceTelemetryDataPointsRateLimit;

  @BuiltValueField(wireName: r'maxWsSubscriptionsPerRegularUser')
  int? get maxWsSubscriptionsPerRegularUser;

  @BuiltValueField(wireName: r'cassandraReadQueryTenantCoreRateLimits')
  String? get cassandraReadQueryTenantCoreRateLimits;

  @BuiltValueField(wireName: r'blobEntityTtlDays')
  int? get blobEntityTtlDays;

  @BuiltValueField(wireName: r'maxTransportDataPoints')
  int? get maxTransportDataPoints;

  @BuiltValueField(wireName: r'reportTtlDays')
  int? get reportTtlDays;

  @BuiltValueField(wireName: r'maxCustomers')
  int? get maxCustomers;

  @BuiltValueField(wireName: r'cassandraWriteQueryTenantRuleEngineRateLimits')
  String? get cassandraWriteQueryTenantRuleEngineRateLimits;

  @BuiltValueField(wireName: r'intermediateAggregationIntervalInSecForCF')
  int? get intermediateAggregationIntervalInSecForCF;

  @BuiltValueField(wireName: r'maxIntegrations')
  int? get maxIntegrations;

  @BuiltValueField(wireName: r'transportDeviceMsgRateLimit')
  String? get transportDeviceMsgRateLimit;

  @BuiltValueField(wireName: r'maxWsSessionsPerTenant')
  int? get maxWsSessionsPerTenant;

  @BuiltValueField(wireName: r'maxResourceSize')
  int? get maxResourceSize;

  @BuiltValueField(wireName: r'maxDebugModeDurationMinutes')
  int? get maxDebugModeDurationMinutes;

  @BuiltValueField(wireName: r'maxRuleNodeExecutionsPerMessage')
  int? get maxRuleNodeExecutionsPerMessage;

  @BuiltValueField(wireName: r'agentLogChunkRateLimitsPerAgent')
  String? get agentLogChunkRateLimitsPerAgent;

  @BuiltValueField(wireName: r'warnThreshold')
  double? get warnThreshold;

  @BuiltValueField(wireName: r'transportGatewayMsgRateLimit')
  String? get transportGatewayMsgRateLimit;

  @BuiltValueField(wireName: r'minAllowedScheduledUpdateIntervalInSecForCF')
  int? get minAllowedScheduledUpdateIntervalInSecForCF;

  @BuiltValueField(wireName: r'maxDPStorageDays')
  int? get maxDPStorageDays;

  @BuiltValueField(wireName: r'rpcTtlDays')
  int? get rpcTtlDays;

  @BuiltValueField(wireName: r'maxCalculatedFieldsPerEntity')
  int? get maxCalculatedFieldsPerEntity;

  @BuiltValueField(wireName: r'tenantServerRestLimitsConfiguration')
  String? get tenantServerRestLimitsConfiguration;

  @BuiltValueField(wireName: r'edgeUplinkMessagesRateLimitsPerEdge')
  String? get edgeUplinkMessagesRateLimitsPerEdge;

  @BuiltValueField(wireName: r'maxWsSessionsPerRegularUser')
  int? get maxWsSessionsPerRegularUser;

  @BuiltValueField(wireName: r'maxWsSubscriptionsPerCustomer')
  int? get maxWsSubscriptionsPerCustomer;

  @BuiltValueField(wireName: r'transportTenantTelemetryDataPointsRateLimit')
  String? get transportTenantTelemetryDataPointsRateLimit;

  @BuiltValueField(wireName: r'agentEventRateLimitsPerAgent')
  String? get agentEventRateLimitsPerAgent;

  @BuiltValueField(wireName: r'queueStatsTtlDays')
  int? get queueStatsTtlDays;

  @BuiltValueField(wireName: r'tenantNotificationRequestsPerRuleRateLimit')
  String? get tenantNotificationRequestsPerRuleRateLimit;

  DefaultTenantProfileConfiguration._();

  factory DefaultTenantProfileConfiguration([void updates(DefaultTenantProfileConfigurationBuilder b)]) = _$DefaultTenantProfileConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DefaultTenantProfileConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DefaultTenantProfileConfiguration> get serializer => _$DefaultTenantProfileConfigurationSerializer();
}

class _$DefaultTenantProfileConfigurationSerializer implements PrimitiveSerializer<DefaultTenantProfileConfiguration> {
  @override
  final Iterable<Type> types = const [DefaultTenantProfileConfiguration, _$DefaultTenantProfileConfiguration];

  @override
  final String wireName = r'DefaultTenantProfileConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DefaultTenantProfileConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maxWsSubscriptionsPerTenant != null) {
      yield r'maxWsSubscriptionsPerTenant';
      yield serializers.serialize(
        object.maxWsSubscriptionsPerTenant,
        specifiedType: const FullType(int),
      );
    }
    if (object.transportGatewayTelemetryDataPointsRateLimit != null) {
      yield r'transportGatewayTelemetryDataPointsRateLimit';
      yield serializers.serialize(
        object.transportGatewayTelemetryDataPointsRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.transportTenantTelemetryMsgRateLimit != null) {
      yield r'transportTenantTelemetryMsgRateLimit';
      yield serializers.serialize(
        object.transportTenantTelemetryMsgRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.cassandraReadQueryTenantRuleEngineRateLimits != null) {
      yield r'cassandraReadQueryTenantRuleEngineRateLimits';
      yield serializers.serialize(
        object.cassandraReadQueryTenantRuleEngineRateLimits,
        specifiedType: const FullType(String),
      );
    }
    if (object.transportGatewayTelemetryMsgRateLimit != null) {
      yield r'transportGatewayTelemetryMsgRateLimit';
      yield serializers.serialize(
        object.transportGatewayTelemetryMsgRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.ruleEngineExceptionsTtlDays != null) {
      yield r'ruleEngineExceptionsTtlDays';
      yield serializers.serialize(
        object.ruleEngineExceptionsTtlDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.agentEventRateLimits != null) {
      yield r'agentEventRateLimits';
      yield serializers.serialize(
        object.agentEventRateLimits,
        specifiedType: const FullType(String),
      );
    }
    if (object.alarmsTtlDays != null) {
      yield r'alarmsTtlDays';
      yield serializers.serialize(
        object.alarmsTtlDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxRelationLevelPerCfArgument != null) {
      yield r'maxRelationLevelPerCfArgument';
      yield serializers.serialize(
        object.maxRelationLevelPerCfArgument,
        specifiedType: const FullType(int),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.wsMsgQueueLimitPerSession != null) {
      yield r'wsMsgQueueLimitPerSession';
      yield serializers.serialize(
        object.wsMsgQueueLimitPerSession,
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
    if (object.maxDashboards != null) {
      yield r'maxDashboards';
      yield serializers.serialize(
        object.maxDashboards,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxReportSizeInBytes != null) {
      yield r'maxReportSizeInBytes';
      yield serializers.serialize(
        object.maxReportSizeInBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxSchedulerEvents != null) {
      yield r'maxSchedulerEvents';
      yield serializers.serialize(
        object.maxSchedulerEvents,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxDataPointsPerRollingArg != null) {
      yield r'maxDataPointsPerRollingArg';
      yield serializers.serialize(
        object.maxDataPointsPerRollingArg,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxEmails != null) {
      yield r'maxEmails';
      yield serializers.serialize(
        object.maxEmails,
        specifiedType: const FullType(int),
      );
    }
    if (object.edgeUplinkMessagesRateLimits != null) {
      yield r'edgeUplinkMessagesRateLimits';
      yield serializers.serialize(
        object.edgeUplinkMessagesRateLimits,
        specifiedType: const FullType(String),
      );
    }
    if (object.tenantEntityImportRateLimit != null) {
      yield r'tenantEntityImportRateLimit';
      yield serializers.serialize(
        object.tenantEntityImportRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxResourcesInBytes != null) {
      yield r'maxResourcesInBytes';
      yield serializers.serialize(
        object.maxResourcesInBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxWsSessionsPerCustomer != null) {
      yield r'maxWsSessionsPerCustomer';
      yield serializers.serialize(
        object.maxWsSessionsPerCustomer,
        specifiedType: const FullType(int),
      );
    }
    if (object.integrationMsgsPerDeviceRateLimit != null) {
      yield r'integrationMsgsPerDeviceRateLimit';
      yield serializers.serialize(
        object.integrationMsgsPerDeviceRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerServerRestLimitsConfiguration != null) {
      yield r'customerServerRestLimitsConfiguration';
      yield serializers.serialize(
        object.customerServerRestLimitsConfiguration,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxRelatedEntitiesToReturnPerCfArgument != null) {
      yield r'maxRelatedEntitiesToReturnPerCfArgument';
      yield serializers.serialize(
        object.maxRelatedEntitiesToReturnPerCfArgument,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxDevices != null) {
      yield r'maxDevices';
      yield serializers.serialize(
        object.maxDevices,
        specifiedType: const FullType(int),
      );
    }
    if (object.minAllowedDeduplicationIntervalInSecForCF != null) {
      yield r'minAllowedDeduplicationIntervalInSecForCF';
      yield serializers.serialize(
        object.minAllowedDeduplicationIntervalInSecForCF,
        specifiedType: const FullType(int),
      );
    }
    if (object.transportGatewayDeviceTelemetryMsgRateLimit != null) {
      yield r'transportGatewayDeviceTelemetryMsgRateLimit';
      yield serializers.serialize(
        object.transportGatewayDeviceTelemetryMsgRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxStateSizeInKBytes != null) {
      yield r'maxStateSizeInKBytes';
      yield serializers.serialize(
        object.maxStateSizeInKBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxSingleValueArgumentSizeInKBytes != null) {
      yield r'maxSingleValueArgumentSizeInKBytes';
      yield serializers.serialize(
        object.maxSingleValueArgumentSizeInKBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.cassandraWriteQueryTenantCoreRateLimits != null) {
      yield r'cassandraWriteQueryTenantCoreRateLimits';
      yield serializers.serialize(
        object.cassandraWriteQueryTenantCoreRateLimits,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxTransportMessages != null) {
      yield r'maxTransportMessages';
      yield serializers.serialize(
        object.maxTransportMessages,
        specifiedType: const FullType(int),
      );
    }
    if (object.transportTenantMsgRateLimit != null) {
      yield r'transportTenantMsgRateLimit';
      yield serializers.serialize(
        object.transportTenantMsgRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.transportGatewayDeviceTelemetryDataPointsRateLimit != null) {
      yield r'transportGatewayDeviceTelemetryDataPointsRateLimit';
      yield serializers.serialize(
        object.transportGatewayDeviceTelemetryDataPointsRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxJSExecutions != null) {
      yield r'maxJSExecutions';
      yield serializers.serialize(
        object.maxJSExecutions,
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
    if (object.maxREExecutions != null) {
      yield r'maxREExecutions';
      yield serializers.serialize(
        object.maxREExecutions,
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
    if (object.tenantEntityExportRateLimit != null) {
      yield r'tenantEntityExportRateLimit';
      yield serializers.serialize(
        object.tenantEntityExportRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxTbelExecutions != null) {
      yield r'maxTbelExecutions';
      yield serializers.serialize(
        object.maxTbelExecutions,
        specifiedType: const FullType(int),
      );
    }
    if (object.smsEnabled != null) {
      yield r'smsEnabled';
      yield serializers.serialize(
        object.smsEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maxWsSessionsPerPublicUser != null) {
      yield r'maxWsSessionsPerPublicUser';
      yield serializers.serialize(
        object.maxWsSessionsPerPublicUser,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxCreatedAlarms != null) {
      yield r'maxCreatedAlarms';
      yield serializers.serialize(
        object.maxCreatedAlarms,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxWsSubscriptionsPerPublicUser != null) {
      yield r'maxWsSubscriptionsPerPublicUser';
      yield serializers.serialize(
        object.maxWsSubscriptionsPerPublicUser,
        specifiedType: const FullType(int),
      );
    }
    if (object.cfReevaluationCheckInterval != null) {
      yield r'cfReevaluationCheckInterval';
      yield serializers.serialize(
        object.cfReevaluationCheckInterval,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxConverters != null) {
      yield r'maxConverters';
      yield serializers.serialize(
        object.maxConverters,
        specifiedType: const FullType(int),
      );
    }
    if (object.wsUpdatesPerSessionRateLimit != null) {
      yield r'wsUpdatesPerSessionRateLimit';
      yield serializers.serialize(
        object.wsUpdatesPerSessionRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxUsers != null) {
      yield r'maxUsers';
      yield serializers.serialize(
        object.maxUsers,
        specifiedType: const FullType(int),
      );
    }
    if (object.alarmsReevaluationInterval != null) {
      yield r'alarmsReevaluationInterval';
      yield serializers.serialize(
        object.alarmsReevaluationInterval,
        specifiedType: const FullType(int),
      );
    }
    if (object.tenantNotificationRequestsRateLimit != null) {
      yield r'tenantNotificationRequestsRateLimit';
      yield serializers.serialize(
        object.tenantNotificationRequestsRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.integrationMsgsPerAssetRateLimit != null) {
      yield r'integrationMsgsPerAssetRateLimit';
      yield serializers.serialize(
        object.integrationMsgsPerAssetRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxArgumentsPerCF != null) {
      yield r'maxArgumentsPerCF';
      yield serializers.serialize(
        object.maxArgumentsPerCF,
        specifiedType: const FullType(int),
      );
    }
    if (object.edgeEventRateLimits != null) {
      yield r'edgeEventRateLimits';
      yield serializers.serialize(
        object.edgeEventRateLimits,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxOtaPackagesInBytes != null) {
      yield r'maxOtaPackagesInBytes';
      yield serializers.serialize(
        object.maxOtaPackagesInBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxAgentApplications != null) {
      yield r'maxAgentApplications';
      yield serializers.serialize(
        object.maxAgentApplications,
        specifiedType: const FullType(int),
      );
    }
    if (object.defaultStorageTtlDays != null) {
      yield r'defaultStorageTtlDays';
      yield serializers.serialize(
        object.defaultStorageTtlDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.agentLogChunkRateLimits != null) {
      yield r'agentLogChunkRateLimits';
      yield serializers.serialize(
        object.agentLogChunkRateLimits,
        specifiedType: const FullType(String),
      );
    }
    if (object.transportGatewayDeviceMsgRateLimit != null) {
      yield r'transportGatewayDeviceMsgRateLimit';
      yield serializers.serialize(
        object.transportGatewayDeviceMsgRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.aiChatRequestsPerTenantRateLimit != null) {
      yield r'aiChatRequestsPerTenantRateLimit';
      yield serializers.serialize(
        object.aiChatRequestsPerTenantRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxAssets != null) {
      yield r'maxAssets';
      yield serializers.serialize(
        object.maxAssets,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxRuleChains != null) {
      yield r'maxRuleChains';
      yield serializers.serialize(
        object.maxRuleChains,
        specifiedType: const FullType(int),
      );
    }
    if (object.transportDeviceTelemetryMsgRateLimit != null) {
      yield r'transportDeviceTelemetryMsgRateLimit';
      yield serializers.serialize(
        object.transportDeviceTelemetryMsgRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.integrationMsgsPerTenantRateLimit != null) {
      yield r'integrationMsgsPerTenantRateLimit';
      yield serializers.serialize(
        object.integrationMsgsPerTenantRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxGeneratedReports != null) {
      yield r'maxGeneratedReports';
      yield serializers.serialize(
        object.maxGeneratedReports,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxSms != null) {
      yield r'maxSms';
      yield serializers.serialize(
        object.maxSms,
        specifiedType: const FullType(int),
      );
    }
    if (object.edgeEventRateLimitsPerEdge != null) {
      yield r'edgeEventRateLimitsPerEdge';
      yield serializers.serialize(
        object.edgeEventRateLimitsPerEdge,
        specifiedType: const FullType(String),
      );
    }
    if (object.minAllowedAggregationIntervalInSecForCF != null) {
      yield r'minAllowedAggregationIntervalInSecForCF';
      yield serializers.serialize(
        object.minAllowedAggregationIntervalInSecForCF,
        specifiedType: const FullType(int),
      );
    }
    if (object.transportDeviceTelemetryDataPointsRateLimit != null) {
      yield r'transportDeviceTelemetryDataPointsRateLimit';
      yield serializers.serialize(
        object.transportDeviceTelemetryDataPointsRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxWsSubscriptionsPerRegularUser != null) {
      yield r'maxWsSubscriptionsPerRegularUser';
      yield serializers.serialize(
        object.maxWsSubscriptionsPerRegularUser,
        specifiedType: const FullType(int),
      );
    }
    if (object.cassandraReadQueryTenantCoreRateLimits != null) {
      yield r'cassandraReadQueryTenantCoreRateLimits';
      yield serializers.serialize(
        object.cassandraReadQueryTenantCoreRateLimits,
        specifiedType: const FullType(String),
      );
    }
    if (object.blobEntityTtlDays != null) {
      yield r'blobEntityTtlDays';
      yield serializers.serialize(
        object.blobEntityTtlDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxTransportDataPoints != null) {
      yield r'maxTransportDataPoints';
      yield serializers.serialize(
        object.maxTransportDataPoints,
        specifiedType: const FullType(int),
      );
    }
    if (object.reportTtlDays != null) {
      yield r'reportTtlDays';
      yield serializers.serialize(
        object.reportTtlDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxCustomers != null) {
      yield r'maxCustomers';
      yield serializers.serialize(
        object.maxCustomers,
        specifiedType: const FullType(int),
      );
    }
    if (object.cassandraWriteQueryTenantRuleEngineRateLimits != null) {
      yield r'cassandraWriteQueryTenantRuleEngineRateLimits';
      yield serializers.serialize(
        object.cassandraWriteQueryTenantRuleEngineRateLimits,
        specifiedType: const FullType(String),
      );
    }
    if (object.intermediateAggregationIntervalInSecForCF != null) {
      yield r'intermediateAggregationIntervalInSecForCF';
      yield serializers.serialize(
        object.intermediateAggregationIntervalInSecForCF,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxIntegrations != null) {
      yield r'maxIntegrations';
      yield serializers.serialize(
        object.maxIntegrations,
        specifiedType: const FullType(int),
      );
    }
    if (object.transportDeviceMsgRateLimit != null) {
      yield r'transportDeviceMsgRateLimit';
      yield serializers.serialize(
        object.transportDeviceMsgRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxWsSessionsPerTenant != null) {
      yield r'maxWsSessionsPerTenant';
      yield serializers.serialize(
        object.maxWsSessionsPerTenant,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxResourceSize != null) {
      yield r'maxResourceSize';
      yield serializers.serialize(
        object.maxResourceSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxDebugModeDurationMinutes != null) {
      yield r'maxDebugModeDurationMinutes';
      yield serializers.serialize(
        object.maxDebugModeDurationMinutes,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxRuleNodeExecutionsPerMessage != null) {
      yield r'maxRuleNodeExecutionsPerMessage';
      yield serializers.serialize(
        object.maxRuleNodeExecutionsPerMessage,
        specifiedType: const FullType(int),
      );
    }
    if (object.agentLogChunkRateLimitsPerAgent != null) {
      yield r'agentLogChunkRateLimitsPerAgent';
      yield serializers.serialize(
        object.agentLogChunkRateLimitsPerAgent,
        specifiedType: const FullType(String),
      );
    }
    if (object.warnThreshold != null) {
      yield r'warnThreshold';
      yield serializers.serialize(
        object.warnThreshold,
        specifiedType: const FullType(double),
      );
    }
    if (object.transportGatewayMsgRateLimit != null) {
      yield r'transportGatewayMsgRateLimit';
      yield serializers.serialize(
        object.transportGatewayMsgRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.minAllowedScheduledUpdateIntervalInSecForCF != null) {
      yield r'minAllowedScheduledUpdateIntervalInSecForCF';
      yield serializers.serialize(
        object.minAllowedScheduledUpdateIntervalInSecForCF,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxDPStorageDays != null) {
      yield r'maxDPStorageDays';
      yield serializers.serialize(
        object.maxDPStorageDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.rpcTtlDays != null) {
      yield r'rpcTtlDays';
      yield serializers.serialize(
        object.rpcTtlDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxCalculatedFieldsPerEntity != null) {
      yield r'maxCalculatedFieldsPerEntity';
      yield serializers.serialize(
        object.maxCalculatedFieldsPerEntity,
        specifiedType: const FullType(int),
      );
    }
    if (object.tenantServerRestLimitsConfiguration != null) {
      yield r'tenantServerRestLimitsConfiguration';
      yield serializers.serialize(
        object.tenantServerRestLimitsConfiguration,
        specifiedType: const FullType(String),
      );
    }
    if (object.edgeUplinkMessagesRateLimitsPerEdge != null) {
      yield r'edgeUplinkMessagesRateLimitsPerEdge';
      yield serializers.serialize(
        object.edgeUplinkMessagesRateLimitsPerEdge,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxWsSessionsPerRegularUser != null) {
      yield r'maxWsSessionsPerRegularUser';
      yield serializers.serialize(
        object.maxWsSessionsPerRegularUser,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxWsSubscriptionsPerCustomer != null) {
      yield r'maxWsSubscriptionsPerCustomer';
      yield serializers.serialize(
        object.maxWsSubscriptionsPerCustomer,
        specifiedType: const FullType(int),
      );
    }
    if (object.transportTenantTelemetryDataPointsRateLimit != null) {
      yield r'transportTenantTelemetryDataPointsRateLimit';
      yield serializers.serialize(
        object.transportTenantTelemetryDataPointsRateLimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.agentEventRateLimitsPerAgent != null) {
      yield r'agentEventRateLimitsPerAgent';
      yield serializers.serialize(
        object.agentEventRateLimitsPerAgent,
        specifiedType: const FullType(String),
      );
    }
    if (object.queueStatsTtlDays != null) {
      yield r'queueStatsTtlDays';
      yield serializers.serialize(
        object.queueStatsTtlDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.tenantNotificationRequestsPerRuleRateLimit != null) {
      yield r'tenantNotificationRequestsPerRuleRateLimit';
      yield serializers.serialize(
        object.tenantNotificationRequestsPerRuleRateLimit,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DefaultTenantProfileConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DefaultTenantProfileConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maxWsSubscriptionsPerTenant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxWsSubscriptionsPerTenant = valueDes;
          break;
        case r'transportGatewayTelemetryDataPointsRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transportGatewayTelemetryDataPointsRateLimit = valueDes;
          break;
        case r'transportTenantTelemetryMsgRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transportTenantTelemetryMsgRateLimit = valueDes;
          break;
        case r'cassandraReadQueryTenantRuleEngineRateLimits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cassandraReadQueryTenantRuleEngineRateLimits = valueDes;
          break;
        case r'transportGatewayTelemetryMsgRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transportGatewayTelemetryMsgRateLimit = valueDes;
          break;
        case r'ruleEngineExceptionsTtlDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ruleEngineExceptionsTtlDays = valueDes;
          break;
        case r'agentEventRateLimits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.agentEventRateLimits = valueDes;
          break;
        case r'alarmsTtlDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.alarmsTtlDays = valueDes;
          break;
        case r'maxRelationLevelPerCfArgument':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxRelationLevelPerCfArgument = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'wsMsgQueueLimitPerSession':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.wsMsgQueueLimitPerSession = valueDes;
          break;
        case r'maxEdges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxEdges = valueDes;
          break;
        case r'maxDashboards':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxDashboards = valueDes;
          break;
        case r'maxReportSizeInBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxReportSizeInBytes = valueDes;
          break;
        case r'maxSchedulerEvents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxSchedulerEvents = valueDes;
          break;
        case r'maxDataPointsPerRollingArg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxDataPointsPerRollingArg = valueDes;
          break;
        case r'maxEmails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxEmails = valueDes;
          break;
        case r'edgeUplinkMessagesRateLimits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.edgeUplinkMessagesRateLimits = valueDes;
          break;
        case r'tenantEntityImportRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenantEntityImportRateLimit = valueDes;
          break;
        case r'maxResourcesInBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxResourcesInBytes = valueDes;
          break;
        case r'maxWsSessionsPerCustomer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxWsSessionsPerCustomer = valueDes;
          break;
        case r'integrationMsgsPerDeviceRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.integrationMsgsPerDeviceRateLimit = valueDes;
          break;
        case r'customerServerRestLimitsConfiguration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerServerRestLimitsConfiguration = valueDes;
          break;
        case r'maxRelatedEntitiesToReturnPerCfArgument':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxRelatedEntitiesToReturnPerCfArgument = valueDes;
          break;
        case r'maxDevices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxDevices = valueDes;
          break;
        case r'minAllowedDeduplicationIntervalInSecForCF':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minAllowedDeduplicationIntervalInSecForCF = valueDes;
          break;
        case r'transportGatewayDeviceTelemetryMsgRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transportGatewayDeviceTelemetryMsgRateLimit = valueDes;
          break;
        case r'maxStateSizeInKBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxStateSizeInKBytes = valueDes;
          break;
        case r'maxSingleValueArgumentSizeInKBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxSingleValueArgumentSizeInKBytes = valueDes;
          break;
        case r'cassandraWriteQueryTenantCoreRateLimits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cassandraWriteQueryTenantCoreRateLimits = valueDes;
          break;
        case r'maxTransportMessages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxTransportMessages = valueDes;
          break;
        case r'transportTenantMsgRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transportTenantMsgRateLimit = valueDes;
          break;
        case r'transportGatewayDeviceTelemetryDataPointsRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transportGatewayDeviceTelemetryDataPointsRateLimit = valueDes;
          break;
        case r'maxJSExecutions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxJSExecutions = valueDes;
          break;
        case r'maxAiCredits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxAiCredits = valueDes;
          break;
        case r'maxREExecutions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxREExecutions = valueDes;
          break;
        case r'maxAgents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxAgents = valueDes;
          break;
        case r'tenantEntityExportRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenantEntityExportRateLimit = valueDes;
          break;
        case r'maxTbelExecutions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxTbelExecutions = valueDes;
          break;
        case r'smsEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.smsEnabled = valueDes;
          break;
        case r'maxWsSessionsPerPublicUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxWsSessionsPerPublicUser = valueDes;
          break;
        case r'maxCreatedAlarms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxCreatedAlarms = valueDes;
          break;
        case r'maxWsSubscriptionsPerPublicUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxWsSubscriptionsPerPublicUser = valueDes;
          break;
        case r'cfReevaluationCheckInterval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.cfReevaluationCheckInterval = valueDes;
          break;
        case r'maxConverters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxConverters = valueDes;
          break;
        case r'wsUpdatesPerSessionRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.wsUpdatesPerSessionRateLimit = valueDes;
          break;
        case r'maxUsers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxUsers = valueDes;
          break;
        case r'alarmsReevaluationInterval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.alarmsReevaluationInterval = valueDes;
          break;
        case r'tenantNotificationRequestsRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenantNotificationRequestsRateLimit = valueDes;
          break;
        case r'integrationMsgsPerAssetRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.integrationMsgsPerAssetRateLimit = valueDes;
          break;
        case r'maxArgumentsPerCF':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxArgumentsPerCF = valueDes;
          break;
        case r'edgeEventRateLimits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.edgeEventRateLimits = valueDes;
          break;
        case r'maxOtaPackagesInBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxOtaPackagesInBytes = valueDes;
          break;
        case r'maxAgentApplications':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxAgentApplications = valueDes;
          break;
        case r'defaultStorageTtlDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.defaultStorageTtlDays = valueDes;
          break;
        case r'agentLogChunkRateLimits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.agentLogChunkRateLimits = valueDes;
          break;
        case r'transportGatewayDeviceMsgRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transportGatewayDeviceMsgRateLimit = valueDes;
          break;
        case r'aiChatRequestsPerTenantRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.aiChatRequestsPerTenantRateLimit = valueDes;
          break;
        case r'maxAssets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxAssets = valueDes;
          break;
        case r'maxRuleChains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxRuleChains = valueDes;
          break;
        case r'transportDeviceTelemetryMsgRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transportDeviceTelemetryMsgRateLimit = valueDes;
          break;
        case r'integrationMsgsPerTenantRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.integrationMsgsPerTenantRateLimit = valueDes;
          break;
        case r'maxGeneratedReports':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxGeneratedReports = valueDes;
          break;
        case r'maxSms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxSms = valueDes;
          break;
        case r'edgeEventRateLimitsPerEdge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.edgeEventRateLimitsPerEdge = valueDes;
          break;
        case r'minAllowedAggregationIntervalInSecForCF':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minAllowedAggregationIntervalInSecForCF = valueDes;
          break;
        case r'transportDeviceTelemetryDataPointsRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transportDeviceTelemetryDataPointsRateLimit = valueDes;
          break;
        case r'maxWsSubscriptionsPerRegularUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxWsSubscriptionsPerRegularUser = valueDes;
          break;
        case r'cassandraReadQueryTenantCoreRateLimits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cassandraReadQueryTenantCoreRateLimits = valueDes;
          break;
        case r'blobEntityTtlDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.blobEntityTtlDays = valueDes;
          break;
        case r'maxTransportDataPoints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxTransportDataPoints = valueDes;
          break;
        case r'reportTtlDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.reportTtlDays = valueDes;
          break;
        case r'maxCustomers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxCustomers = valueDes;
          break;
        case r'cassandraWriteQueryTenantRuleEngineRateLimits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cassandraWriteQueryTenantRuleEngineRateLimits = valueDes;
          break;
        case r'intermediateAggregationIntervalInSecForCF':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.intermediateAggregationIntervalInSecForCF = valueDes;
          break;
        case r'maxIntegrations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxIntegrations = valueDes;
          break;
        case r'transportDeviceMsgRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transportDeviceMsgRateLimit = valueDes;
          break;
        case r'maxWsSessionsPerTenant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxWsSessionsPerTenant = valueDes;
          break;
        case r'maxResourceSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxResourceSize = valueDes;
          break;
        case r'maxDebugModeDurationMinutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxDebugModeDurationMinutes = valueDes;
          break;
        case r'maxRuleNodeExecutionsPerMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxRuleNodeExecutionsPerMessage = valueDes;
          break;
        case r'agentLogChunkRateLimitsPerAgent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.agentLogChunkRateLimitsPerAgent = valueDes;
          break;
        case r'warnThreshold':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.warnThreshold = valueDes;
          break;
        case r'transportGatewayMsgRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transportGatewayMsgRateLimit = valueDes;
          break;
        case r'minAllowedScheduledUpdateIntervalInSecForCF':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minAllowedScheduledUpdateIntervalInSecForCF = valueDes;
          break;
        case r'maxDPStorageDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxDPStorageDays = valueDes;
          break;
        case r'rpcTtlDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.rpcTtlDays = valueDes;
          break;
        case r'maxCalculatedFieldsPerEntity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxCalculatedFieldsPerEntity = valueDes;
          break;
        case r'tenantServerRestLimitsConfiguration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenantServerRestLimitsConfiguration = valueDes;
          break;
        case r'edgeUplinkMessagesRateLimitsPerEdge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.edgeUplinkMessagesRateLimitsPerEdge = valueDes;
          break;
        case r'maxWsSessionsPerRegularUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxWsSessionsPerRegularUser = valueDes;
          break;
        case r'maxWsSubscriptionsPerCustomer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxWsSubscriptionsPerCustomer = valueDes;
          break;
        case r'transportTenantTelemetryDataPointsRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.transportTenantTelemetryDataPointsRateLimit = valueDes;
          break;
        case r'agentEventRateLimitsPerAgent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.agentEventRateLimitsPerAgent = valueDes;
          break;
        case r'queueStatsTtlDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.queueStatsTtlDays = valueDes;
          break;
        case r'tenantNotificationRequestsPerRuleRateLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenantNotificationRequestsPerRuleRateLimit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DefaultTenantProfileConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultTenantProfileConfigurationBuilder();
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


