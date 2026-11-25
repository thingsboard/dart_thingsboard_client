// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_tenant_profile_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DefaultTenantProfileConfiguration
    extends DefaultTenantProfileConfiguration {
  @override
  final int? maxWsSubscriptionsPerTenant;
  @override
  final String? transportGatewayTelemetryDataPointsRateLimit;
  @override
  final String? transportTenantTelemetryMsgRateLimit;
  @override
  final String? cassandraReadQueryTenantRuleEngineRateLimits;
  @override
  final String? transportGatewayTelemetryMsgRateLimit;
  @override
  final int? ruleEngineExceptionsTtlDays;
  @override
  final String? agentEventRateLimits;
  @override
  final int? alarmsTtlDays;
  @override
  final int? maxRelationLevelPerCfArgument;
  @override
  final int? wsMsgQueueLimitPerSession;
  @override
  final int? maxEdges;
  @override
  final int? maxDashboards;
  @override
  final int? maxReportSizeInBytes;
  @override
  final int? maxSchedulerEvents;
  @override
  final int? maxDataPointsPerRollingArg;
  @override
  final int? maxEmails;
  @override
  final String? edgeUplinkMessagesRateLimits;
  @override
  final String? tenantEntityImportRateLimit;
  @override
  final int? maxResourcesInBytes;
  @override
  final int? maxWsSessionsPerCustomer;
  @override
  final String? integrationMsgsPerDeviceRateLimit;
  @override
  final String? customerServerRestLimitsConfiguration;
  @override
  final int? maxRelatedEntitiesToReturnPerCfArgument;
  @override
  final int? maxDevices;
  @override
  final int? minAllowedDeduplicationIntervalInSecForCF;
  @override
  final String? transportGatewayDeviceTelemetryMsgRateLimit;
  @override
  final int? maxStateSizeInKBytes;
  @override
  final int? maxSingleValueArgumentSizeInKBytes;
  @override
  final String? cassandraWriteQueryTenantCoreRateLimits;
  @override
  final int? maxTransportMessages;
  @override
  final String? transportTenantMsgRateLimit;
  @override
  final String? transportGatewayDeviceTelemetryDataPointsRateLimit;
  @override
  final int? maxJSExecutions;
  @override
  final int? maxAiCredits;
  @override
  final int? maxREExecutions;
  @override
  final int? maxAgents;
  @override
  final String? tenantEntityExportRateLimit;
  @override
  final int? maxTbelExecutions;
  @override
  final bool? smsEnabled;
  @override
  final int? maxWsSessionsPerPublicUser;
  @override
  final int? maxCreatedAlarms;
  @override
  final int? maxWsSubscriptionsPerPublicUser;
  @override
  final int? cfReevaluationCheckInterval;
  @override
  final int? maxConverters;
  @override
  final String? wsUpdatesPerSessionRateLimit;
  @override
  final int? maxUsers;
  @override
  final int? alarmsReevaluationInterval;
  @override
  final String? tenantNotificationRequestsRateLimit;
  @override
  final String? integrationMsgsPerAssetRateLimit;
  @override
  final int? maxArgumentsPerCF;
  @override
  final String? edgeEventRateLimits;
  @override
  final int? maxOtaPackagesInBytes;
  @override
  final int? maxAgentApplications;
  @override
  final int? defaultStorageTtlDays;
  @override
  final String? agentLogChunkRateLimits;
  @override
  final String? transportGatewayDeviceMsgRateLimit;
  @override
  final String? aiChatRequestsPerTenantRateLimit;
  @override
  final int? maxAssets;
  @override
  final int? maxRuleChains;
  @override
  final String? transportDeviceTelemetryMsgRateLimit;
  @override
  final String? integrationMsgsPerTenantRateLimit;
  @override
  final int? maxGeneratedReports;
  @override
  final int? maxSms;
  @override
  final String? edgeEventRateLimitsPerEdge;
  @override
  final int? minAllowedAggregationIntervalInSecForCF;
  @override
  final String? transportDeviceTelemetryDataPointsRateLimit;
  @override
  final int? maxWsSubscriptionsPerRegularUser;
  @override
  final String? cassandraReadQueryTenantCoreRateLimits;
  @override
  final int? blobEntityTtlDays;
  @override
  final int? maxTransportDataPoints;
  @override
  final int? reportTtlDays;
  @override
  final int? maxCustomers;
  @override
  final String? cassandraWriteQueryTenantRuleEngineRateLimits;
  @override
  final int? intermediateAggregationIntervalInSecForCF;
  @override
  final int? maxIntegrations;
  @override
  final String? transportDeviceMsgRateLimit;
  @override
  final int? maxWsSessionsPerTenant;
  @override
  final int? maxResourceSize;
  @override
  final int? maxDebugModeDurationMinutes;
  @override
  final int? maxRuleNodeExecutionsPerMessage;
  @override
  final String? agentLogChunkRateLimitsPerAgent;
  @override
  final double? warnThreshold;
  @override
  final String? transportGatewayMsgRateLimit;
  @override
  final int? minAllowedScheduledUpdateIntervalInSecForCF;
  @override
  final int? maxDPStorageDays;
  @override
  final int? rpcTtlDays;
  @override
  final int? maxCalculatedFieldsPerEntity;
  @override
  final String? tenantServerRestLimitsConfiguration;
  @override
  final String? edgeUplinkMessagesRateLimitsPerEdge;
  @override
  final int? maxWsSessionsPerRegularUser;
  @override
  final int? maxWsSubscriptionsPerCustomer;
  @override
  final String? transportTenantTelemetryDataPointsRateLimit;
  @override
  final String? agentEventRateLimitsPerAgent;
  @override
  final int? queueStatsTtlDays;
  @override
  final String? tenantNotificationRequestsPerRuleRateLimit;
  @override
  final String type;

  factory _$DefaultTenantProfileConfiguration([
    void Function(DefaultTenantProfileConfigurationBuilder)? updates,
  ]) => (DefaultTenantProfileConfigurationBuilder()..update(updates))._build();

  _$DefaultTenantProfileConfiguration._({
    this.maxWsSubscriptionsPerTenant,
    this.transportGatewayTelemetryDataPointsRateLimit,
    this.transportTenantTelemetryMsgRateLimit,
    this.cassandraReadQueryTenantRuleEngineRateLimits,
    this.transportGatewayTelemetryMsgRateLimit,
    this.ruleEngineExceptionsTtlDays,
    this.agentEventRateLimits,
    this.alarmsTtlDays,
    this.maxRelationLevelPerCfArgument,
    this.wsMsgQueueLimitPerSession,
    this.maxEdges,
    this.maxDashboards,
    this.maxReportSizeInBytes,
    this.maxSchedulerEvents,
    this.maxDataPointsPerRollingArg,
    this.maxEmails,
    this.edgeUplinkMessagesRateLimits,
    this.tenantEntityImportRateLimit,
    this.maxResourcesInBytes,
    this.maxWsSessionsPerCustomer,
    this.integrationMsgsPerDeviceRateLimit,
    this.customerServerRestLimitsConfiguration,
    this.maxRelatedEntitiesToReturnPerCfArgument,
    this.maxDevices,
    this.minAllowedDeduplicationIntervalInSecForCF,
    this.transportGatewayDeviceTelemetryMsgRateLimit,
    this.maxStateSizeInKBytes,
    this.maxSingleValueArgumentSizeInKBytes,
    this.cassandraWriteQueryTenantCoreRateLimits,
    this.maxTransportMessages,
    this.transportTenantMsgRateLimit,
    this.transportGatewayDeviceTelemetryDataPointsRateLimit,
    this.maxJSExecutions,
    this.maxAiCredits,
    this.maxREExecutions,
    this.maxAgents,
    this.tenantEntityExportRateLimit,
    this.maxTbelExecutions,
    this.smsEnabled,
    this.maxWsSessionsPerPublicUser,
    this.maxCreatedAlarms,
    this.maxWsSubscriptionsPerPublicUser,
    this.cfReevaluationCheckInterval,
    this.maxConverters,
    this.wsUpdatesPerSessionRateLimit,
    this.maxUsers,
    this.alarmsReevaluationInterval,
    this.tenantNotificationRequestsRateLimit,
    this.integrationMsgsPerAssetRateLimit,
    this.maxArgumentsPerCF,
    this.edgeEventRateLimits,
    this.maxOtaPackagesInBytes,
    this.maxAgentApplications,
    this.defaultStorageTtlDays,
    this.agentLogChunkRateLimits,
    this.transportGatewayDeviceMsgRateLimit,
    this.aiChatRequestsPerTenantRateLimit,
    this.maxAssets,
    this.maxRuleChains,
    this.transportDeviceTelemetryMsgRateLimit,
    this.integrationMsgsPerTenantRateLimit,
    this.maxGeneratedReports,
    this.maxSms,
    this.edgeEventRateLimitsPerEdge,
    this.minAllowedAggregationIntervalInSecForCF,
    this.transportDeviceTelemetryDataPointsRateLimit,
    this.maxWsSubscriptionsPerRegularUser,
    this.cassandraReadQueryTenantCoreRateLimits,
    this.blobEntityTtlDays,
    this.maxTransportDataPoints,
    this.reportTtlDays,
    this.maxCustomers,
    this.cassandraWriteQueryTenantRuleEngineRateLimits,
    this.intermediateAggregationIntervalInSecForCF,
    this.maxIntegrations,
    this.transportDeviceMsgRateLimit,
    this.maxWsSessionsPerTenant,
    this.maxResourceSize,
    this.maxDebugModeDurationMinutes,
    this.maxRuleNodeExecutionsPerMessage,
    this.agentLogChunkRateLimitsPerAgent,
    this.warnThreshold,
    this.transportGatewayMsgRateLimit,
    this.minAllowedScheduledUpdateIntervalInSecForCF,
    this.maxDPStorageDays,
    this.rpcTtlDays,
    this.maxCalculatedFieldsPerEntity,
    this.tenantServerRestLimitsConfiguration,
    this.edgeUplinkMessagesRateLimitsPerEdge,
    this.maxWsSessionsPerRegularUser,
    this.maxWsSubscriptionsPerCustomer,
    this.transportTenantTelemetryDataPointsRateLimit,
    this.agentEventRateLimitsPerAgent,
    this.queueStatsTtlDays,
    this.tenantNotificationRequestsPerRuleRateLimit,
    required this.type,
  }) : super._();
  @override
  DefaultTenantProfileConfiguration rebuild(
    void Function(DefaultTenantProfileConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DefaultTenantProfileConfigurationBuilder toBuilder() =>
      DefaultTenantProfileConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultTenantProfileConfiguration &&
        maxWsSubscriptionsPerTenant == other.maxWsSubscriptionsPerTenant &&
        transportGatewayTelemetryDataPointsRateLimit ==
            other.transportGatewayTelemetryDataPointsRateLimit &&
        transportTenantTelemetryMsgRateLimit ==
            other.transportTenantTelemetryMsgRateLimit &&
        cassandraReadQueryTenantRuleEngineRateLimits ==
            other.cassandraReadQueryTenantRuleEngineRateLimits &&
        transportGatewayTelemetryMsgRateLimit ==
            other.transportGatewayTelemetryMsgRateLimit &&
        ruleEngineExceptionsTtlDays == other.ruleEngineExceptionsTtlDays &&
        agentEventRateLimits == other.agentEventRateLimits &&
        alarmsTtlDays == other.alarmsTtlDays &&
        maxRelationLevelPerCfArgument == other.maxRelationLevelPerCfArgument &&
        wsMsgQueueLimitPerSession == other.wsMsgQueueLimitPerSession &&
        maxEdges == other.maxEdges &&
        maxDashboards == other.maxDashboards &&
        maxReportSizeInBytes == other.maxReportSizeInBytes &&
        maxSchedulerEvents == other.maxSchedulerEvents &&
        maxDataPointsPerRollingArg == other.maxDataPointsPerRollingArg &&
        maxEmails == other.maxEmails &&
        edgeUplinkMessagesRateLimits == other.edgeUplinkMessagesRateLimits &&
        tenantEntityImportRateLimit == other.tenantEntityImportRateLimit &&
        maxResourcesInBytes == other.maxResourcesInBytes &&
        maxWsSessionsPerCustomer == other.maxWsSessionsPerCustomer &&
        integrationMsgsPerDeviceRateLimit ==
            other.integrationMsgsPerDeviceRateLimit &&
        customerServerRestLimitsConfiguration ==
            other.customerServerRestLimitsConfiguration &&
        maxRelatedEntitiesToReturnPerCfArgument ==
            other.maxRelatedEntitiesToReturnPerCfArgument &&
        maxDevices == other.maxDevices &&
        minAllowedDeduplicationIntervalInSecForCF ==
            other.minAllowedDeduplicationIntervalInSecForCF &&
        transportGatewayDeviceTelemetryMsgRateLimit ==
            other.transportGatewayDeviceTelemetryMsgRateLimit &&
        maxStateSizeInKBytes == other.maxStateSizeInKBytes &&
        maxSingleValueArgumentSizeInKBytes ==
            other.maxSingleValueArgumentSizeInKBytes &&
        cassandraWriteQueryTenantCoreRateLimits ==
            other.cassandraWriteQueryTenantCoreRateLimits &&
        maxTransportMessages == other.maxTransportMessages &&
        transportTenantMsgRateLimit == other.transportTenantMsgRateLimit &&
        transportGatewayDeviceTelemetryDataPointsRateLimit ==
            other.transportGatewayDeviceTelemetryDataPointsRateLimit &&
        maxJSExecutions == other.maxJSExecutions &&
        maxAiCredits == other.maxAiCredits &&
        maxREExecutions == other.maxREExecutions &&
        maxAgents == other.maxAgents &&
        tenantEntityExportRateLimit == other.tenantEntityExportRateLimit &&
        maxTbelExecutions == other.maxTbelExecutions &&
        smsEnabled == other.smsEnabled &&
        maxWsSessionsPerPublicUser == other.maxWsSessionsPerPublicUser &&
        maxCreatedAlarms == other.maxCreatedAlarms &&
        maxWsSubscriptionsPerPublicUser ==
            other.maxWsSubscriptionsPerPublicUser &&
        cfReevaluationCheckInterval == other.cfReevaluationCheckInterval &&
        maxConverters == other.maxConverters &&
        wsUpdatesPerSessionRateLimit == other.wsUpdatesPerSessionRateLimit &&
        maxUsers == other.maxUsers &&
        alarmsReevaluationInterval == other.alarmsReevaluationInterval &&
        tenantNotificationRequestsRateLimit ==
            other.tenantNotificationRequestsRateLimit &&
        integrationMsgsPerAssetRateLimit ==
            other.integrationMsgsPerAssetRateLimit &&
        maxArgumentsPerCF == other.maxArgumentsPerCF &&
        edgeEventRateLimits == other.edgeEventRateLimits &&
        maxOtaPackagesInBytes == other.maxOtaPackagesInBytes &&
        maxAgentApplications == other.maxAgentApplications &&
        defaultStorageTtlDays == other.defaultStorageTtlDays &&
        agentLogChunkRateLimits == other.agentLogChunkRateLimits &&
        transportGatewayDeviceMsgRateLimit ==
            other.transportGatewayDeviceMsgRateLimit &&
        aiChatRequestsPerTenantRateLimit ==
            other.aiChatRequestsPerTenantRateLimit &&
        maxAssets == other.maxAssets &&
        maxRuleChains == other.maxRuleChains &&
        transportDeviceTelemetryMsgRateLimit ==
            other.transportDeviceTelemetryMsgRateLimit &&
        integrationMsgsPerTenantRateLimit ==
            other.integrationMsgsPerTenantRateLimit &&
        maxGeneratedReports == other.maxGeneratedReports &&
        maxSms == other.maxSms &&
        edgeEventRateLimitsPerEdge == other.edgeEventRateLimitsPerEdge &&
        minAllowedAggregationIntervalInSecForCF ==
            other.minAllowedAggregationIntervalInSecForCF &&
        transportDeviceTelemetryDataPointsRateLimit ==
            other.transportDeviceTelemetryDataPointsRateLimit &&
        maxWsSubscriptionsPerRegularUser ==
            other.maxWsSubscriptionsPerRegularUser &&
        cassandraReadQueryTenantCoreRateLimits ==
            other.cassandraReadQueryTenantCoreRateLimits &&
        blobEntityTtlDays == other.blobEntityTtlDays &&
        maxTransportDataPoints == other.maxTransportDataPoints &&
        reportTtlDays == other.reportTtlDays &&
        maxCustomers == other.maxCustomers &&
        cassandraWriteQueryTenantRuleEngineRateLimits ==
            other.cassandraWriteQueryTenantRuleEngineRateLimits &&
        intermediateAggregationIntervalInSecForCF ==
            other.intermediateAggregationIntervalInSecForCF &&
        maxIntegrations == other.maxIntegrations &&
        transportDeviceMsgRateLimit == other.transportDeviceMsgRateLimit &&
        maxWsSessionsPerTenant == other.maxWsSessionsPerTenant &&
        maxResourceSize == other.maxResourceSize &&
        maxDebugModeDurationMinutes == other.maxDebugModeDurationMinutes &&
        maxRuleNodeExecutionsPerMessage ==
            other.maxRuleNodeExecutionsPerMessage &&
        agentLogChunkRateLimitsPerAgent ==
            other.agentLogChunkRateLimitsPerAgent &&
        warnThreshold == other.warnThreshold &&
        transportGatewayMsgRateLimit == other.transportGatewayMsgRateLimit &&
        minAllowedScheduledUpdateIntervalInSecForCF ==
            other.minAllowedScheduledUpdateIntervalInSecForCF &&
        maxDPStorageDays == other.maxDPStorageDays &&
        rpcTtlDays == other.rpcTtlDays &&
        maxCalculatedFieldsPerEntity == other.maxCalculatedFieldsPerEntity &&
        tenantServerRestLimitsConfiguration ==
            other.tenantServerRestLimitsConfiguration &&
        edgeUplinkMessagesRateLimitsPerEdge ==
            other.edgeUplinkMessagesRateLimitsPerEdge &&
        maxWsSessionsPerRegularUser == other.maxWsSessionsPerRegularUser &&
        maxWsSubscriptionsPerCustomer == other.maxWsSubscriptionsPerCustomer &&
        transportTenantTelemetryDataPointsRateLimit ==
            other.transportTenantTelemetryDataPointsRateLimit &&
        agentEventRateLimitsPerAgent == other.agentEventRateLimitsPerAgent &&
        queueStatsTtlDays == other.queueStatsTtlDays &&
        tenantNotificationRequestsPerRuleRateLimit ==
            other.tenantNotificationRequestsPerRuleRateLimit &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxWsSubscriptionsPerTenant.hashCode);
    _$hash = $jc(_$hash, transportGatewayTelemetryDataPointsRateLimit.hashCode);
    _$hash = $jc(_$hash, transportTenantTelemetryMsgRateLimit.hashCode);
    _$hash = $jc(_$hash, cassandraReadQueryTenantRuleEngineRateLimits.hashCode);
    _$hash = $jc(_$hash, transportGatewayTelemetryMsgRateLimit.hashCode);
    _$hash = $jc(_$hash, ruleEngineExceptionsTtlDays.hashCode);
    _$hash = $jc(_$hash, agentEventRateLimits.hashCode);
    _$hash = $jc(_$hash, alarmsTtlDays.hashCode);
    _$hash = $jc(_$hash, maxRelationLevelPerCfArgument.hashCode);
    _$hash = $jc(_$hash, wsMsgQueueLimitPerSession.hashCode);
    _$hash = $jc(_$hash, maxEdges.hashCode);
    _$hash = $jc(_$hash, maxDashboards.hashCode);
    _$hash = $jc(_$hash, maxReportSizeInBytes.hashCode);
    _$hash = $jc(_$hash, maxSchedulerEvents.hashCode);
    _$hash = $jc(_$hash, maxDataPointsPerRollingArg.hashCode);
    _$hash = $jc(_$hash, maxEmails.hashCode);
    _$hash = $jc(_$hash, edgeUplinkMessagesRateLimits.hashCode);
    _$hash = $jc(_$hash, tenantEntityImportRateLimit.hashCode);
    _$hash = $jc(_$hash, maxResourcesInBytes.hashCode);
    _$hash = $jc(_$hash, maxWsSessionsPerCustomer.hashCode);
    _$hash = $jc(_$hash, integrationMsgsPerDeviceRateLimit.hashCode);
    _$hash = $jc(_$hash, customerServerRestLimitsConfiguration.hashCode);
    _$hash = $jc(_$hash, maxRelatedEntitiesToReturnPerCfArgument.hashCode);
    _$hash = $jc(_$hash, maxDevices.hashCode);
    _$hash = $jc(_$hash, minAllowedDeduplicationIntervalInSecForCF.hashCode);
    _$hash = $jc(_$hash, transportGatewayDeviceTelemetryMsgRateLimit.hashCode);
    _$hash = $jc(_$hash, maxStateSizeInKBytes.hashCode);
    _$hash = $jc(_$hash, maxSingleValueArgumentSizeInKBytes.hashCode);
    _$hash = $jc(_$hash, cassandraWriteQueryTenantCoreRateLimits.hashCode);
    _$hash = $jc(_$hash, maxTransportMessages.hashCode);
    _$hash = $jc(_$hash, transportTenantMsgRateLimit.hashCode);
    _$hash = $jc(
      _$hash,
      transportGatewayDeviceTelemetryDataPointsRateLimit.hashCode,
    );
    _$hash = $jc(_$hash, maxJSExecutions.hashCode);
    _$hash = $jc(_$hash, maxAiCredits.hashCode);
    _$hash = $jc(_$hash, maxREExecutions.hashCode);
    _$hash = $jc(_$hash, maxAgents.hashCode);
    _$hash = $jc(_$hash, tenantEntityExportRateLimit.hashCode);
    _$hash = $jc(_$hash, maxTbelExecutions.hashCode);
    _$hash = $jc(_$hash, smsEnabled.hashCode);
    _$hash = $jc(_$hash, maxWsSessionsPerPublicUser.hashCode);
    _$hash = $jc(_$hash, maxCreatedAlarms.hashCode);
    _$hash = $jc(_$hash, maxWsSubscriptionsPerPublicUser.hashCode);
    _$hash = $jc(_$hash, cfReevaluationCheckInterval.hashCode);
    _$hash = $jc(_$hash, maxConverters.hashCode);
    _$hash = $jc(_$hash, wsUpdatesPerSessionRateLimit.hashCode);
    _$hash = $jc(_$hash, maxUsers.hashCode);
    _$hash = $jc(_$hash, alarmsReevaluationInterval.hashCode);
    _$hash = $jc(_$hash, tenantNotificationRequestsRateLimit.hashCode);
    _$hash = $jc(_$hash, integrationMsgsPerAssetRateLimit.hashCode);
    _$hash = $jc(_$hash, maxArgumentsPerCF.hashCode);
    _$hash = $jc(_$hash, edgeEventRateLimits.hashCode);
    _$hash = $jc(_$hash, maxOtaPackagesInBytes.hashCode);
    _$hash = $jc(_$hash, maxAgentApplications.hashCode);
    _$hash = $jc(_$hash, defaultStorageTtlDays.hashCode);
    _$hash = $jc(_$hash, agentLogChunkRateLimits.hashCode);
    _$hash = $jc(_$hash, transportGatewayDeviceMsgRateLimit.hashCode);
    _$hash = $jc(_$hash, aiChatRequestsPerTenantRateLimit.hashCode);
    _$hash = $jc(_$hash, maxAssets.hashCode);
    _$hash = $jc(_$hash, maxRuleChains.hashCode);
    _$hash = $jc(_$hash, transportDeviceTelemetryMsgRateLimit.hashCode);
    _$hash = $jc(_$hash, integrationMsgsPerTenantRateLimit.hashCode);
    _$hash = $jc(_$hash, maxGeneratedReports.hashCode);
    _$hash = $jc(_$hash, maxSms.hashCode);
    _$hash = $jc(_$hash, edgeEventRateLimitsPerEdge.hashCode);
    _$hash = $jc(_$hash, minAllowedAggregationIntervalInSecForCF.hashCode);
    _$hash = $jc(_$hash, transportDeviceTelemetryDataPointsRateLimit.hashCode);
    _$hash = $jc(_$hash, maxWsSubscriptionsPerRegularUser.hashCode);
    _$hash = $jc(_$hash, cassandraReadQueryTenantCoreRateLimits.hashCode);
    _$hash = $jc(_$hash, blobEntityTtlDays.hashCode);
    _$hash = $jc(_$hash, maxTransportDataPoints.hashCode);
    _$hash = $jc(_$hash, reportTtlDays.hashCode);
    _$hash = $jc(_$hash, maxCustomers.hashCode);
    _$hash = $jc(
      _$hash,
      cassandraWriteQueryTenantRuleEngineRateLimits.hashCode,
    );
    _$hash = $jc(_$hash, intermediateAggregationIntervalInSecForCF.hashCode);
    _$hash = $jc(_$hash, maxIntegrations.hashCode);
    _$hash = $jc(_$hash, transportDeviceMsgRateLimit.hashCode);
    _$hash = $jc(_$hash, maxWsSessionsPerTenant.hashCode);
    _$hash = $jc(_$hash, maxResourceSize.hashCode);
    _$hash = $jc(_$hash, maxDebugModeDurationMinutes.hashCode);
    _$hash = $jc(_$hash, maxRuleNodeExecutionsPerMessage.hashCode);
    _$hash = $jc(_$hash, agentLogChunkRateLimitsPerAgent.hashCode);
    _$hash = $jc(_$hash, warnThreshold.hashCode);
    _$hash = $jc(_$hash, transportGatewayMsgRateLimit.hashCode);
    _$hash = $jc(_$hash, minAllowedScheduledUpdateIntervalInSecForCF.hashCode);
    _$hash = $jc(_$hash, maxDPStorageDays.hashCode);
    _$hash = $jc(_$hash, rpcTtlDays.hashCode);
    _$hash = $jc(_$hash, maxCalculatedFieldsPerEntity.hashCode);
    _$hash = $jc(_$hash, tenantServerRestLimitsConfiguration.hashCode);
    _$hash = $jc(_$hash, edgeUplinkMessagesRateLimitsPerEdge.hashCode);
    _$hash = $jc(_$hash, maxWsSessionsPerRegularUser.hashCode);
    _$hash = $jc(_$hash, maxWsSubscriptionsPerCustomer.hashCode);
    _$hash = $jc(_$hash, transportTenantTelemetryDataPointsRateLimit.hashCode);
    _$hash = $jc(_$hash, agentEventRateLimitsPerAgent.hashCode);
    _$hash = $jc(_$hash, queueStatsTtlDays.hashCode);
    _$hash = $jc(_$hash, tenantNotificationRequestsPerRuleRateLimit.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DefaultTenantProfileConfiguration')
          ..add('maxWsSubscriptionsPerTenant', maxWsSubscriptionsPerTenant)
          ..add(
            'transportGatewayTelemetryDataPointsRateLimit',
            transportGatewayTelemetryDataPointsRateLimit,
          )
          ..add(
            'transportTenantTelemetryMsgRateLimit',
            transportTenantTelemetryMsgRateLimit,
          )
          ..add(
            'cassandraReadQueryTenantRuleEngineRateLimits',
            cassandraReadQueryTenantRuleEngineRateLimits,
          )
          ..add(
            'transportGatewayTelemetryMsgRateLimit',
            transportGatewayTelemetryMsgRateLimit,
          )
          ..add('ruleEngineExceptionsTtlDays', ruleEngineExceptionsTtlDays)
          ..add('agentEventRateLimits', agentEventRateLimits)
          ..add('alarmsTtlDays', alarmsTtlDays)
          ..add('maxRelationLevelPerCfArgument', maxRelationLevelPerCfArgument)
          ..add('wsMsgQueueLimitPerSession', wsMsgQueueLimitPerSession)
          ..add('maxEdges', maxEdges)
          ..add('maxDashboards', maxDashboards)
          ..add('maxReportSizeInBytes', maxReportSizeInBytes)
          ..add('maxSchedulerEvents', maxSchedulerEvents)
          ..add('maxDataPointsPerRollingArg', maxDataPointsPerRollingArg)
          ..add('maxEmails', maxEmails)
          ..add('edgeUplinkMessagesRateLimits', edgeUplinkMessagesRateLimits)
          ..add('tenantEntityImportRateLimit', tenantEntityImportRateLimit)
          ..add('maxResourcesInBytes', maxResourcesInBytes)
          ..add('maxWsSessionsPerCustomer', maxWsSessionsPerCustomer)
          ..add(
            'integrationMsgsPerDeviceRateLimit',
            integrationMsgsPerDeviceRateLimit,
          )
          ..add(
            'customerServerRestLimitsConfiguration',
            customerServerRestLimitsConfiguration,
          )
          ..add(
            'maxRelatedEntitiesToReturnPerCfArgument',
            maxRelatedEntitiesToReturnPerCfArgument,
          )
          ..add('maxDevices', maxDevices)
          ..add(
            'minAllowedDeduplicationIntervalInSecForCF',
            minAllowedDeduplicationIntervalInSecForCF,
          )
          ..add(
            'transportGatewayDeviceTelemetryMsgRateLimit',
            transportGatewayDeviceTelemetryMsgRateLimit,
          )
          ..add('maxStateSizeInKBytes', maxStateSizeInKBytes)
          ..add(
            'maxSingleValueArgumentSizeInKBytes',
            maxSingleValueArgumentSizeInKBytes,
          )
          ..add(
            'cassandraWriteQueryTenantCoreRateLimits',
            cassandraWriteQueryTenantCoreRateLimits,
          )
          ..add('maxTransportMessages', maxTransportMessages)
          ..add('transportTenantMsgRateLimit', transportTenantMsgRateLimit)
          ..add(
            'transportGatewayDeviceTelemetryDataPointsRateLimit',
            transportGatewayDeviceTelemetryDataPointsRateLimit,
          )
          ..add('maxJSExecutions', maxJSExecutions)
          ..add('maxAiCredits', maxAiCredits)
          ..add('maxREExecutions', maxREExecutions)
          ..add('maxAgents', maxAgents)
          ..add('tenantEntityExportRateLimit', tenantEntityExportRateLimit)
          ..add('maxTbelExecutions', maxTbelExecutions)
          ..add('smsEnabled', smsEnabled)
          ..add('maxWsSessionsPerPublicUser', maxWsSessionsPerPublicUser)
          ..add('maxCreatedAlarms', maxCreatedAlarms)
          ..add(
            'maxWsSubscriptionsPerPublicUser',
            maxWsSubscriptionsPerPublicUser,
          )
          ..add('cfReevaluationCheckInterval', cfReevaluationCheckInterval)
          ..add('maxConverters', maxConverters)
          ..add('wsUpdatesPerSessionRateLimit', wsUpdatesPerSessionRateLimit)
          ..add('maxUsers', maxUsers)
          ..add('alarmsReevaluationInterval', alarmsReevaluationInterval)
          ..add(
            'tenantNotificationRequestsRateLimit',
            tenantNotificationRequestsRateLimit,
          )
          ..add(
            'integrationMsgsPerAssetRateLimit',
            integrationMsgsPerAssetRateLimit,
          )
          ..add('maxArgumentsPerCF', maxArgumentsPerCF)
          ..add('edgeEventRateLimits', edgeEventRateLimits)
          ..add('maxOtaPackagesInBytes', maxOtaPackagesInBytes)
          ..add('maxAgentApplications', maxAgentApplications)
          ..add('defaultStorageTtlDays', defaultStorageTtlDays)
          ..add('agentLogChunkRateLimits', agentLogChunkRateLimits)
          ..add(
            'transportGatewayDeviceMsgRateLimit',
            transportGatewayDeviceMsgRateLimit,
          )
          ..add(
            'aiChatRequestsPerTenantRateLimit',
            aiChatRequestsPerTenantRateLimit,
          )
          ..add('maxAssets', maxAssets)
          ..add('maxRuleChains', maxRuleChains)
          ..add(
            'transportDeviceTelemetryMsgRateLimit',
            transportDeviceTelemetryMsgRateLimit,
          )
          ..add(
            'integrationMsgsPerTenantRateLimit',
            integrationMsgsPerTenantRateLimit,
          )
          ..add('maxGeneratedReports', maxGeneratedReports)
          ..add('maxSms', maxSms)
          ..add('edgeEventRateLimitsPerEdge', edgeEventRateLimitsPerEdge)
          ..add(
            'minAllowedAggregationIntervalInSecForCF',
            minAllowedAggregationIntervalInSecForCF,
          )
          ..add(
            'transportDeviceTelemetryDataPointsRateLimit',
            transportDeviceTelemetryDataPointsRateLimit,
          )
          ..add(
            'maxWsSubscriptionsPerRegularUser',
            maxWsSubscriptionsPerRegularUser,
          )
          ..add(
            'cassandraReadQueryTenantCoreRateLimits',
            cassandraReadQueryTenantCoreRateLimits,
          )
          ..add('blobEntityTtlDays', blobEntityTtlDays)
          ..add('maxTransportDataPoints', maxTransportDataPoints)
          ..add('reportTtlDays', reportTtlDays)
          ..add('maxCustomers', maxCustomers)
          ..add(
            'cassandraWriteQueryTenantRuleEngineRateLimits',
            cassandraWriteQueryTenantRuleEngineRateLimits,
          )
          ..add(
            'intermediateAggregationIntervalInSecForCF',
            intermediateAggregationIntervalInSecForCF,
          )
          ..add('maxIntegrations', maxIntegrations)
          ..add('transportDeviceMsgRateLimit', transportDeviceMsgRateLimit)
          ..add('maxWsSessionsPerTenant', maxWsSessionsPerTenant)
          ..add('maxResourceSize', maxResourceSize)
          ..add('maxDebugModeDurationMinutes', maxDebugModeDurationMinutes)
          ..add(
            'maxRuleNodeExecutionsPerMessage',
            maxRuleNodeExecutionsPerMessage,
          )
          ..add(
            'agentLogChunkRateLimitsPerAgent',
            agentLogChunkRateLimitsPerAgent,
          )
          ..add('warnThreshold', warnThreshold)
          ..add('transportGatewayMsgRateLimit', transportGatewayMsgRateLimit)
          ..add(
            'minAllowedScheduledUpdateIntervalInSecForCF',
            minAllowedScheduledUpdateIntervalInSecForCF,
          )
          ..add('maxDPStorageDays', maxDPStorageDays)
          ..add('rpcTtlDays', rpcTtlDays)
          ..add('maxCalculatedFieldsPerEntity', maxCalculatedFieldsPerEntity)
          ..add(
            'tenantServerRestLimitsConfiguration',
            tenantServerRestLimitsConfiguration,
          )
          ..add(
            'edgeUplinkMessagesRateLimitsPerEdge',
            edgeUplinkMessagesRateLimitsPerEdge,
          )
          ..add('maxWsSessionsPerRegularUser', maxWsSessionsPerRegularUser)
          ..add('maxWsSubscriptionsPerCustomer', maxWsSubscriptionsPerCustomer)
          ..add(
            'transportTenantTelemetryDataPointsRateLimit',
            transportTenantTelemetryDataPointsRateLimit,
          )
          ..add('agentEventRateLimitsPerAgent', agentEventRateLimitsPerAgent)
          ..add('queueStatsTtlDays', queueStatsTtlDays)
          ..add(
            'tenantNotificationRequestsPerRuleRateLimit',
            tenantNotificationRequestsPerRuleRateLimit,
          )
          ..add('type', type))
        .toString();
  }
}

class DefaultTenantProfileConfigurationBuilder
    implements
        Builder<
          DefaultTenantProfileConfiguration,
          DefaultTenantProfileConfigurationBuilder
        >,
        TenantProfileConfigurationBuilder {
  _$DefaultTenantProfileConfiguration? _$v;

  int? _maxWsSubscriptionsPerTenant;
  int? get maxWsSubscriptionsPerTenant => _$this._maxWsSubscriptionsPerTenant;
  set maxWsSubscriptionsPerTenant(covariant int? maxWsSubscriptionsPerTenant) =>
      _$this._maxWsSubscriptionsPerTenant = maxWsSubscriptionsPerTenant;

  String? _transportGatewayTelemetryDataPointsRateLimit;
  String? get transportGatewayTelemetryDataPointsRateLimit =>
      _$this._transportGatewayTelemetryDataPointsRateLimit;
  set transportGatewayTelemetryDataPointsRateLimit(
    covariant String? transportGatewayTelemetryDataPointsRateLimit,
  ) => _$this._transportGatewayTelemetryDataPointsRateLimit =
      transportGatewayTelemetryDataPointsRateLimit;

  String? _transportTenantTelemetryMsgRateLimit;
  String? get transportTenantTelemetryMsgRateLimit =>
      _$this._transportTenantTelemetryMsgRateLimit;
  set transportTenantTelemetryMsgRateLimit(
    covariant String? transportTenantTelemetryMsgRateLimit,
  ) => _$this._transportTenantTelemetryMsgRateLimit =
      transportTenantTelemetryMsgRateLimit;

  String? _cassandraReadQueryTenantRuleEngineRateLimits;
  String? get cassandraReadQueryTenantRuleEngineRateLimits =>
      _$this._cassandraReadQueryTenantRuleEngineRateLimits;
  set cassandraReadQueryTenantRuleEngineRateLimits(
    covariant String? cassandraReadQueryTenantRuleEngineRateLimits,
  ) => _$this._cassandraReadQueryTenantRuleEngineRateLimits =
      cassandraReadQueryTenantRuleEngineRateLimits;

  String? _transportGatewayTelemetryMsgRateLimit;
  String? get transportGatewayTelemetryMsgRateLimit =>
      _$this._transportGatewayTelemetryMsgRateLimit;
  set transportGatewayTelemetryMsgRateLimit(
    covariant String? transportGatewayTelemetryMsgRateLimit,
  ) => _$this._transportGatewayTelemetryMsgRateLimit =
      transportGatewayTelemetryMsgRateLimit;

  int? _ruleEngineExceptionsTtlDays;
  int? get ruleEngineExceptionsTtlDays => _$this._ruleEngineExceptionsTtlDays;
  set ruleEngineExceptionsTtlDays(covariant int? ruleEngineExceptionsTtlDays) =>
      _$this._ruleEngineExceptionsTtlDays = ruleEngineExceptionsTtlDays;

  String? _agentEventRateLimits;
  String? get agentEventRateLimits => _$this._agentEventRateLimits;
  set agentEventRateLimits(covariant String? agentEventRateLimits) =>
      _$this._agentEventRateLimits = agentEventRateLimits;

  int? _alarmsTtlDays;
  int? get alarmsTtlDays => _$this._alarmsTtlDays;
  set alarmsTtlDays(covariant int? alarmsTtlDays) =>
      _$this._alarmsTtlDays = alarmsTtlDays;

  int? _maxRelationLevelPerCfArgument;
  int? get maxRelationLevelPerCfArgument =>
      _$this._maxRelationLevelPerCfArgument;
  set maxRelationLevelPerCfArgument(
    covariant int? maxRelationLevelPerCfArgument,
  ) => _$this._maxRelationLevelPerCfArgument = maxRelationLevelPerCfArgument;

  int? _wsMsgQueueLimitPerSession;
  int? get wsMsgQueueLimitPerSession => _$this._wsMsgQueueLimitPerSession;
  set wsMsgQueueLimitPerSession(covariant int? wsMsgQueueLimitPerSession) =>
      _$this._wsMsgQueueLimitPerSession = wsMsgQueueLimitPerSession;

  int? _maxEdges;
  int? get maxEdges => _$this._maxEdges;
  set maxEdges(covariant int? maxEdges) => _$this._maxEdges = maxEdges;

  int? _maxDashboards;
  int? get maxDashboards => _$this._maxDashboards;
  set maxDashboards(covariant int? maxDashboards) =>
      _$this._maxDashboards = maxDashboards;

  int? _maxReportSizeInBytes;
  int? get maxReportSizeInBytes => _$this._maxReportSizeInBytes;
  set maxReportSizeInBytes(covariant int? maxReportSizeInBytes) =>
      _$this._maxReportSizeInBytes = maxReportSizeInBytes;

  int? _maxSchedulerEvents;
  int? get maxSchedulerEvents => _$this._maxSchedulerEvents;
  set maxSchedulerEvents(covariant int? maxSchedulerEvents) =>
      _$this._maxSchedulerEvents = maxSchedulerEvents;

  int? _maxDataPointsPerRollingArg;
  int? get maxDataPointsPerRollingArg => _$this._maxDataPointsPerRollingArg;
  set maxDataPointsPerRollingArg(covariant int? maxDataPointsPerRollingArg) =>
      _$this._maxDataPointsPerRollingArg = maxDataPointsPerRollingArg;

  int? _maxEmails;
  int? get maxEmails => _$this._maxEmails;
  set maxEmails(covariant int? maxEmails) => _$this._maxEmails = maxEmails;

  String? _edgeUplinkMessagesRateLimits;
  String? get edgeUplinkMessagesRateLimits =>
      _$this._edgeUplinkMessagesRateLimits;
  set edgeUplinkMessagesRateLimits(
    covariant String? edgeUplinkMessagesRateLimits,
  ) => _$this._edgeUplinkMessagesRateLimits = edgeUplinkMessagesRateLimits;

  String? _tenantEntityImportRateLimit;
  String? get tenantEntityImportRateLimit =>
      _$this._tenantEntityImportRateLimit;
  set tenantEntityImportRateLimit(
    covariant String? tenantEntityImportRateLimit,
  ) => _$this._tenantEntityImportRateLimit = tenantEntityImportRateLimit;

  int? _maxResourcesInBytes;
  int? get maxResourcesInBytes => _$this._maxResourcesInBytes;
  set maxResourcesInBytes(covariant int? maxResourcesInBytes) =>
      _$this._maxResourcesInBytes = maxResourcesInBytes;

  int? _maxWsSessionsPerCustomer;
  int? get maxWsSessionsPerCustomer => _$this._maxWsSessionsPerCustomer;
  set maxWsSessionsPerCustomer(covariant int? maxWsSessionsPerCustomer) =>
      _$this._maxWsSessionsPerCustomer = maxWsSessionsPerCustomer;

  String? _integrationMsgsPerDeviceRateLimit;
  String? get integrationMsgsPerDeviceRateLimit =>
      _$this._integrationMsgsPerDeviceRateLimit;
  set integrationMsgsPerDeviceRateLimit(
    covariant String? integrationMsgsPerDeviceRateLimit,
  ) => _$this._integrationMsgsPerDeviceRateLimit =
      integrationMsgsPerDeviceRateLimit;

  String? _customerServerRestLimitsConfiguration;
  String? get customerServerRestLimitsConfiguration =>
      _$this._customerServerRestLimitsConfiguration;
  set customerServerRestLimitsConfiguration(
    covariant String? customerServerRestLimitsConfiguration,
  ) => _$this._customerServerRestLimitsConfiguration =
      customerServerRestLimitsConfiguration;

  int? _maxRelatedEntitiesToReturnPerCfArgument;
  int? get maxRelatedEntitiesToReturnPerCfArgument =>
      _$this._maxRelatedEntitiesToReturnPerCfArgument;
  set maxRelatedEntitiesToReturnPerCfArgument(
    covariant int? maxRelatedEntitiesToReturnPerCfArgument,
  ) => _$this._maxRelatedEntitiesToReturnPerCfArgument =
      maxRelatedEntitiesToReturnPerCfArgument;

  int? _maxDevices;
  int? get maxDevices => _$this._maxDevices;
  set maxDevices(covariant int? maxDevices) => _$this._maxDevices = maxDevices;

  int? _minAllowedDeduplicationIntervalInSecForCF;
  int? get minAllowedDeduplicationIntervalInSecForCF =>
      _$this._minAllowedDeduplicationIntervalInSecForCF;
  set minAllowedDeduplicationIntervalInSecForCF(
    covariant int? minAllowedDeduplicationIntervalInSecForCF,
  ) => _$this._minAllowedDeduplicationIntervalInSecForCF =
      minAllowedDeduplicationIntervalInSecForCF;

  String? _transportGatewayDeviceTelemetryMsgRateLimit;
  String? get transportGatewayDeviceTelemetryMsgRateLimit =>
      _$this._transportGatewayDeviceTelemetryMsgRateLimit;
  set transportGatewayDeviceTelemetryMsgRateLimit(
    covariant String? transportGatewayDeviceTelemetryMsgRateLimit,
  ) => _$this._transportGatewayDeviceTelemetryMsgRateLimit =
      transportGatewayDeviceTelemetryMsgRateLimit;

  int? _maxStateSizeInKBytes;
  int? get maxStateSizeInKBytes => _$this._maxStateSizeInKBytes;
  set maxStateSizeInKBytes(covariant int? maxStateSizeInKBytes) =>
      _$this._maxStateSizeInKBytes = maxStateSizeInKBytes;

  int? _maxSingleValueArgumentSizeInKBytes;
  int? get maxSingleValueArgumentSizeInKBytes =>
      _$this._maxSingleValueArgumentSizeInKBytes;
  set maxSingleValueArgumentSizeInKBytes(
    covariant int? maxSingleValueArgumentSizeInKBytes,
  ) => _$this._maxSingleValueArgumentSizeInKBytes =
      maxSingleValueArgumentSizeInKBytes;

  String? _cassandraWriteQueryTenantCoreRateLimits;
  String? get cassandraWriteQueryTenantCoreRateLimits =>
      _$this._cassandraWriteQueryTenantCoreRateLimits;
  set cassandraWriteQueryTenantCoreRateLimits(
    covariant String? cassandraWriteQueryTenantCoreRateLimits,
  ) => _$this._cassandraWriteQueryTenantCoreRateLimits =
      cassandraWriteQueryTenantCoreRateLimits;

  int? _maxTransportMessages;
  int? get maxTransportMessages => _$this._maxTransportMessages;
  set maxTransportMessages(covariant int? maxTransportMessages) =>
      _$this._maxTransportMessages = maxTransportMessages;

  String? _transportTenantMsgRateLimit;
  String? get transportTenantMsgRateLimit =>
      _$this._transportTenantMsgRateLimit;
  set transportTenantMsgRateLimit(
    covariant String? transportTenantMsgRateLimit,
  ) => _$this._transportTenantMsgRateLimit = transportTenantMsgRateLimit;

  String? _transportGatewayDeviceTelemetryDataPointsRateLimit;
  String? get transportGatewayDeviceTelemetryDataPointsRateLimit =>
      _$this._transportGatewayDeviceTelemetryDataPointsRateLimit;
  set transportGatewayDeviceTelemetryDataPointsRateLimit(
    covariant String? transportGatewayDeviceTelemetryDataPointsRateLimit,
  ) => _$this._transportGatewayDeviceTelemetryDataPointsRateLimit =
      transportGatewayDeviceTelemetryDataPointsRateLimit;

  int? _maxJSExecutions;
  int? get maxJSExecutions => _$this._maxJSExecutions;
  set maxJSExecutions(covariant int? maxJSExecutions) =>
      _$this._maxJSExecutions = maxJSExecutions;

  int? _maxAiCredits;
  int? get maxAiCredits => _$this._maxAiCredits;
  set maxAiCredits(covariant int? maxAiCredits) =>
      _$this._maxAiCredits = maxAiCredits;

  int? _maxREExecutions;
  int? get maxREExecutions => _$this._maxREExecutions;
  set maxREExecutions(covariant int? maxREExecutions) =>
      _$this._maxREExecutions = maxREExecutions;

  int? _maxAgents;
  int? get maxAgents => _$this._maxAgents;
  set maxAgents(covariant int? maxAgents) => _$this._maxAgents = maxAgents;

  String? _tenantEntityExportRateLimit;
  String? get tenantEntityExportRateLimit =>
      _$this._tenantEntityExportRateLimit;
  set tenantEntityExportRateLimit(
    covariant String? tenantEntityExportRateLimit,
  ) => _$this._tenantEntityExportRateLimit = tenantEntityExportRateLimit;

  int? _maxTbelExecutions;
  int? get maxTbelExecutions => _$this._maxTbelExecutions;
  set maxTbelExecutions(covariant int? maxTbelExecutions) =>
      _$this._maxTbelExecutions = maxTbelExecutions;

  bool? _smsEnabled;
  bool? get smsEnabled => _$this._smsEnabled;
  set smsEnabled(covariant bool? smsEnabled) => _$this._smsEnabled = smsEnabled;

  int? _maxWsSessionsPerPublicUser;
  int? get maxWsSessionsPerPublicUser => _$this._maxWsSessionsPerPublicUser;
  set maxWsSessionsPerPublicUser(covariant int? maxWsSessionsPerPublicUser) =>
      _$this._maxWsSessionsPerPublicUser = maxWsSessionsPerPublicUser;

  int? _maxCreatedAlarms;
  int? get maxCreatedAlarms => _$this._maxCreatedAlarms;
  set maxCreatedAlarms(covariant int? maxCreatedAlarms) =>
      _$this._maxCreatedAlarms = maxCreatedAlarms;

  int? _maxWsSubscriptionsPerPublicUser;
  int? get maxWsSubscriptionsPerPublicUser =>
      _$this._maxWsSubscriptionsPerPublicUser;
  set maxWsSubscriptionsPerPublicUser(
    covariant int? maxWsSubscriptionsPerPublicUser,
  ) =>
      _$this._maxWsSubscriptionsPerPublicUser = maxWsSubscriptionsPerPublicUser;

  int? _cfReevaluationCheckInterval;
  int? get cfReevaluationCheckInterval => _$this._cfReevaluationCheckInterval;
  set cfReevaluationCheckInterval(covariant int? cfReevaluationCheckInterval) =>
      _$this._cfReevaluationCheckInterval = cfReevaluationCheckInterval;

  int? _maxConverters;
  int? get maxConverters => _$this._maxConverters;
  set maxConverters(covariant int? maxConverters) =>
      _$this._maxConverters = maxConverters;

  String? _wsUpdatesPerSessionRateLimit;
  String? get wsUpdatesPerSessionRateLimit =>
      _$this._wsUpdatesPerSessionRateLimit;
  set wsUpdatesPerSessionRateLimit(
    covariant String? wsUpdatesPerSessionRateLimit,
  ) => _$this._wsUpdatesPerSessionRateLimit = wsUpdatesPerSessionRateLimit;

  int? _maxUsers;
  int? get maxUsers => _$this._maxUsers;
  set maxUsers(covariant int? maxUsers) => _$this._maxUsers = maxUsers;

  int? _alarmsReevaluationInterval;
  int? get alarmsReevaluationInterval => _$this._alarmsReevaluationInterval;
  set alarmsReevaluationInterval(covariant int? alarmsReevaluationInterval) =>
      _$this._alarmsReevaluationInterval = alarmsReevaluationInterval;

  String? _tenantNotificationRequestsRateLimit;
  String? get tenantNotificationRequestsRateLimit =>
      _$this._tenantNotificationRequestsRateLimit;
  set tenantNotificationRequestsRateLimit(
    covariant String? tenantNotificationRequestsRateLimit,
  ) => _$this._tenantNotificationRequestsRateLimit =
      tenantNotificationRequestsRateLimit;

  String? _integrationMsgsPerAssetRateLimit;
  String? get integrationMsgsPerAssetRateLimit =>
      _$this._integrationMsgsPerAssetRateLimit;
  set integrationMsgsPerAssetRateLimit(
    covariant String? integrationMsgsPerAssetRateLimit,
  ) => _$this._integrationMsgsPerAssetRateLimit =
      integrationMsgsPerAssetRateLimit;

  int? _maxArgumentsPerCF;
  int? get maxArgumentsPerCF => _$this._maxArgumentsPerCF;
  set maxArgumentsPerCF(covariant int? maxArgumentsPerCF) =>
      _$this._maxArgumentsPerCF = maxArgumentsPerCF;

  String? _edgeEventRateLimits;
  String? get edgeEventRateLimits => _$this._edgeEventRateLimits;
  set edgeEventRateLimits(covariant String? edgeEventRateLimits) =>
      _$this._edgeEventRateLimits = edgeEventRateLimits;

  int? _maxOtaPackagesInBytes;
  int? get maxOtaPackagesInBytes => _$this._maxOtaPackagesInBytes;
  set maxOtaPackagesInBytes(covariant int? maxOtaPackagesInBytes) =>
      _$this._maxOtaPackagesInBytes = maxOtaPackagesInBytes;

  int? _maxAgentApplications;
  int? get maxAgentApplications => _$this._maxAgentApplications;
  set maxAgentApplications(covariant int? maxAgentApplications) =>
      _$this._maxAgentApplications = maxAgentApplications;

  int? _defaultStorageTtlDays;
  int? get defaultStorageTtlDays => _$this._defaultStorageTtlDays;
  set defaultStorageTtlDays(covariant int? defaultStorageTtlDays) =>
      _$this._defaultStorageTtlDays = defaultStorageTtlDays;

  String? _agentLogChunkRateLimits;
  String? get agentLogChunkRateLimits => _$this._agentLogChunkRateLimits;
  set agentLogChunkRateLimits(covariant String? agentLogChunkRateLimits) =>
      _$this._agentLogChunkRateLimits = agentLogChunkRateLimits;

  String? _transportGatewayDeviceMsgRateLimit;
  String? get transportGatewayDeviceMsgRateLimit =>
      _$this._transportGatewayDeviceMsgRateLimit;
  set transportGatewayDeviceMsgRateLimit(
    covariant String? transportGatewayDeviceMsgRateLimit,
  ) => _$this._transportGatewayDeviceMsgRateLimit =
      transportGatewayDeviceMsgRateLimit;

  String? _aiChatRequestsPerTenantRateLimit;
  String? get aiChatRequestsPerTenantRateLimit =>
      _$this._aiChatRequestsPerTenantRateLimit;
  set aiChatRequestsPerTenantRateLimit(
    covariant String? aiChatRequestsPerTenantRateLimit,
  ) => _$this._aiChatRequestsPerTenantRateLimit =
      aiChatRequestsPerTenantRateLimit;

  int? _maxAssets;
  int? get maxAssets => _$this._maxAssets;
  set maxAssets(covariant int? maxAssets) => _$this._maxAssets = maxAssets;

  int? _maxRuleChains;
  int? get maxRuleChains => _$this._maxRuleChains;
  set maxRuleChains(covariant int? maxRuleChains) =>
      _$this._maxRuleChains = maxRuleChains;

  String? _transportDeviceTelemetryMsgRateLimit;
  String? get transportDeviceTelemetryMsgRateLimit =>
      _$this._transportDeviceTelemetryMsgRateLimit;
  set transportDeviceTelemetryMsgRateLimit(
    covariant String? transportDeviceTelemetryMsgRateLimit,
  ) => _$this._transportDeviceTelemetryMsgRateLimit =
      transportDeviceTelemetryMsgRateLimit;

  String? _integrationMsgsPerTenantRateLimit;
  String? get integrationMsgsPerTenantRateLimit =>
      _$this._integrationMsgsPerTenantRateLimit;
  set integrationMsgsPerTenantRateLimit(
    covariant String? integrationMsgsPerTenantRateLimit,
  ) => _$this._integrationMsgsPerTenantRateLimit =
      integrationMsgsPerTenantRateLimit;

  int? _maxGeneratedReports;
  int? get maxGeneratedReports => _$this._maxGeneratedReports;
  set maxGeneratedReports(covariant int? maxGeneratedReports) =>
      _$this._maxGeneratedReports = maxGeneratedReports;

  int? _maxSms;
  int? get maxSms => _$this._maxSms;
  set maxSms(covariant int? maxSms) => _$this._maxSms = maxSms;

  String? _edgeEventRateLimitsPerEdge;
  String? get edgeEventRateLimitsPerEdge => _$this._edgeEventRateLimitsPerEdge;
  set edgeEventRateLimitsPerEdge(
    covariant String? edgeEventRateLimitsPerEdge,
  ) => _$this._edgeEventRateLimitsPerEdge = edgeEventRateLimitsPerEdge;

  int? _minAllowedAggregationIntervalInSecForCF;
  int? get minAllowedAggregationIntervalInSecForCF =>
      _$this._minAllowedAggregationIntervalInSecForCF;
  set minAllowedAggregationIntervalInSecForCF(
    covariant int? minAllowedAggregationIntervalInSecForCF,
  ) => _$this._minAllowedAggregationIntervalInSecForCF =
      minAllowedAggregationIntervalInSecForCF;

  String? _transportDeviceTelemetryDataPointsRateLimit;
  String? get transportDeviceTelemetryDataPointsRateLimit =>
      _$this._transportDeviceTelemetryDataPointsRateLimit;
  set transportDeviceTelemetryDataPointsRateLimit(
    covariant String? transportDeviceTelemetryDataPointsRateLimit,
  ) => _$this._transportDeviceTelemetryDataPointsRateLimit =
      transportDeviceTelemetryDataPointsRateLimit;

  int? _maxWsSubscriptionsPerRegularUser;
  int? get maxWsSubscriptionsPerRegularUser =>
      _$this._maxWsSubscriptionsPerRegularUser;
  set maxWsSubscriptionsPerRegularUser(
    covariant int? maxWsSubscriptionsPerRegularUser,
  ) => _$this._maxWsSubscriptionsPerRegularUser =
      maxWsSubscriptionsPerRegularUser;

  String? _cassandraReadQueryTenantCoreRateLimits;
  String? get cassandraReadQueryTenantCoreRateLimits =>
      _$this._cassandraReadQueryTenantCoreRateLimits;
  set cassandraReadQueryTenantCoreRateLimits(
    covariant String? cassandraReadQueryTenantCoreRateLimits,
  ) => _$this._cassandraReadQueryTenantCoreRateLimits =
      cassandraReadQueryTenantCoreRateLimits;

  int? _blobEntityTtlDays;
  int? get blobEntityTtlDays => _$this._blobEntityTtlDays;
  set blobEntityTtlDays(covariant int? blobEntityTtlDays) =>
      _$this._blobEntityTtlDays = blobEntityTtlDays;

  int? _maxTransportDataPoints;
  int? get maxTransportDataPoints => _$this._maxTransportDataPoints;
  set maxTransportDataPoints(covariant int? maxTransportDataPoints) =>
      _$this._maxTransportDataPoints = maxTransportDataPoints;

  int? _reportTtlDays;
  int? get reportTtlDays => _$this._reportTtlDays;
  set reportTtlDays(covariant int? reportTtlDays) =>
      _$this._reportTtlDays = reportTtlDays;

  int? _maxCustomers;
  int? get maxCustomers => _$this._maxCustomers;
  set maxCustomers(covariant int? maxCustomers) =>
      _$this._maxCustomers = maxCustomers;

  String? _cassandraWriteQueryTenantRuleEngineRateLimits;
  String? get cassandraWriteQueryTenantRuleEngineRateLimits =>
      _$this._cassandraWriteQueryTenantRuleEngineRateLimits;
  set cassandraWriteQueryTenantRuleEngineRateLimits(
    covariant String? cassandraWriteQueryTenantRuleEngineRateLimits,
  ) => _$this._cassandraWriteQueryTenantRuleEngineRateLimits =
      cassandraWriteQueryTenantRuleEngineRateLimits;

  int? _intermediateAggregationIntervalInSecForCF;
  int? get intermediateAggregationIntervalInSecForCF =>
      _$this._intermediateAggregationIntervalInSecForCF;
  set intermediateAggregationIntervalInSecForCF(
    covariant int? intermediateAggregationIntervalInSecForCF,
  ) => _$this._intermediateAggregationIntervalInSecForCF =
      intermediateAggregationIntervalInSecForCF;

  int? _maxIntegrations;
  int? get maxIntegrations => _$this._maxIntegrations;
  set maxIntegrations(covariant int? maxIntegrations) =>
      _$this._maxIntegrations = maxIntegrations;

  String? _transportDeviceMsgRateLimit;
  String? get transportDeviceMsgRateLimit =>
      _$this._transportDeviceMsgRateLimit;
  set transportDeviceMsgRateLimit(
    covariant String? transportDeviceMsgRateLimit,
  ) => _$this._transportDeviceMsgRateLimit = transportDeviceMsgRateLimit;

  int? _maxWsSessionsPerTenant;
  int? get maxWsSessionsPerTenant => _$this._maxWsSessionsPerTenant;
  set maxWsSessionsPerTenant(covariant int? maxWsSessionsPerTenant) =>
      _$this._maxWsSessionsPerTenant = maxWsSessionsPerTenant;

  int? _maxResourceSize;
  int? get maxResourceSize => _$this._maxResourceSize;
  set maxResourceSize(covariant int? maxResourceSize) =>
      _$this._maxResourceSize = maxResourceSize;

  int? _maxDebugModeDurationMinutes;
  int? get maxDebugModeDurationMinutes => _$this._maxDebugModeDurationMinutes;
  set maxDebugModeDurationMinutes(covariant int? maxDebugModeDurationMinutes) =>
      _$this._maxDebugModeDurationMinutes = maxDebugModeDurationMinutes;

  int? _maxRuleNodeExecutionsPerMessage;
  int? get maxRuleNodeExecutionsPerMessage =>
      _$this._maxRuleNodeExecutionsPerMessage;
  set maxRuleNodeExecutionsPerMessage(
    covariant int? maxRuleNodeExecutionsPerMessage,
  ) =>
      _$this._maxRuleNodeExecutionsPerMessage = maxRuleNodeExecutionsPerMessage;

  String? _agentLogChunkRateLimitsPerAgent;
  String? get agentLogChunkRateLimitsPerAgent =>
      _$this._agentLogChunkRateLimitsPerAgent;
  set agentLogChunkRateLimitsPerAgent(
    covariant String? agentLogChunkRateLimitsPerAgent,
  ) =>
      _$this._agentLogChunkRateLimitsPerAgent = agentLogChunkRateLimitsPerAgent;

  double? _warnThreshold;
  double? get warnThreshold => _$this._warnThreshold;
  set warnThreshold(covariant double? warnThreshold) =>
      _$this._warnThreshold = warnThreshold;

  String? _transportGatewayMsgRateLimit;
  String? get transportGatewayMsgRateLimit =>
      _$this._transportGatewayMsgRateLimit;
  set transportGatewayMsgRateLimit(
    covariant String? transportGatewayMsgRateLimit,
  ) => _$this._transportGatewayMsgRateLimit = transportGatewayMsgRateLimit;

  int? _minAllowedScheduledUpdateIntervalInSecForCF;
  int? get minAllowedScheduledUpdateIntervalInSecForCF =>
      _$this._minAllowedScheduledUpdateIntervalInSecForCF;
  set minAllowedScheduledUpdateIntervalInSecForCF(
    covariant int? minAllowedScheduledUpdateIntervalInSecForCF,
  ) => _$this._minAllowedScheduledUpdateIntervalInSecForCF =
      minAllowedScheduledUpdateIntervalInSecForCF;

  int? _maxDPStorageDays;
  int? get maxDPStorageDays => _$this._maxDPStorageDays;
  set maxDPStorageDays(covariant int? maxDPStorageDays) =>
      _$this._maxDPStorageDays = maxDPStorageDays;

  int? _rpcTtlDays;
  int? get rpcTtlDays => _$this._rpcTtlDays;
  set rpcTtlDays(covariant int? rpcTtlDays) => _$this._rpcTtlDays = rpcTtlDays;

  int? _maxCalculatedFieldsPerEntity;
  int? get maxCalculatedFieldsPerEntity => _$this._maxCalculatedFieldsPerEntity;
  set maxCalculatedFieldsPerEntity(
    covariant int? maxCalculatedFieldsPerEntity,
  ) => _$this._maxCalculatedFieldsPerEntity = maxCalculatedFieldsPerEntity;

  String? _tenantServerRestLimitsConfiguration;
  String? get tenantServerRestLimitsConfiguration =>
      _$this._tenantServerRestLimitsConfiguration;
  set tenantServerRestLimitsConfiguration(
    covariant String? tenantServerRestLimitsConfiguration,
  ) => _$this._tenantServerRestLimitsConfiguration =
      tenantServerRestLimitsConfiguration;

  String? _edgeUplinkMessagesRateLimitsPerEdge;
  String? get edgeUplinkMessagesRateLimitsPerEdge =>
      _$this._edgeUplinkMessagesRateLimitsPerEdge;
  set edgeUplinkMessagesRateLimitsPerEdge(
    covariant String? edgeUplinkMessagesRateLimitsPerEdge,
  ) => _$this._edgeUplinkMessagesRateLimitsPerEdge =
      edgeUplinkMessagesRateLimitsPerEdge;

  int? _maxWsSessionsPerRegularUser;
  int? get maxWsSessionsPerRegularUser => _$this._maxWsSessionsPerRegularUser;
  set maxWsSessionsPerRegularUser(covariant int? maxWsSessionsPerRegularUser) =>
      _$this._maxWsSessionsPerRegularUser = maxWsSessionsPerRegularUser;

  int? _maxWsSubscriptionsPerCustomer;
  int? get maxWsSubscriptionsPerCustomer =>
      _$this._maxWsSubscriptionsPerCustomer;
  set maxWsSubscriptionsPerCustomer(
    covariant int? maxWsSubscriptionsPerCustomer,
  ) => _$this._maxWsSubscriptionsPerCustomer = maxWsSubscriptionsPerCustomer;

  String? _transportTenantTelemetryDataPointsRateLimit;
  String? get transportTenantTelemetryDataPointsRateLimit =>
      _$this._transportTenantTelemetryDataPointsRateLimit;
  set transportTenantTelemetryDataPointsRateLimit(
    covariant String? transportTenantTelemetryDataPointsRateLimit,
  ) => _$this._transportTenantTelemetryDataPointsRateLimit =
      transportTenantTelemetryDataPointsRateLimit;

  String? _agentEventRateLimitsPerAgent;
  String? get agentEventRateLimitsPerAgent =>
      _$this._agentEventRateLimitsPerAgent;
  set agentEventRateLimitsPerAgent(
    covariant String? agentEventRateLimitsPerAgent,
  ) => _$this._agentEventRateLimitsPerAgent = agentEventRateLimitsPerAgent;

  int? _queueStatsTtlDays;
  int? get queueStatsTtlDays => _$this._queueStatsTtlDays;
  set queueStatsTtlDays(covariant int? queueStatsTtlDays) =>
      _$this._queueStatsTtlDays = queueStatsTtlDays;

  String? _tenantNotificationRequestsPerRuleRateLimit;
  String? get tenantNotificationRequestsPerRuleRateLimit =>
      _$this._tenantNotificationRequestsPerRuleRateLimit;
  set tenantNotificationRequestsPerRuleRateLimit(
    covariant String? tenantNotificationRequestsPerRuleRateLimit,
  ) => _$this._tenantNotificationRequestsPerRuleRateLimit =
      tenantNotificationRequestsPerRuleRateLimit;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  DefaultTenantProfileConfigurationBuilder() {
    DefaultTenantProfileConfiguration._defaults(this);
  }

  DefaultTenantProfileConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxWsSubscriptionsPerTenant = $v.maxWsSubscriptionsPerTenant;
      _transportGatewayTelemetryDataPointsRateLimit =
          $v.transportGatewayTelemetryDataPointsRateLimit;
      _transportTenantTelemetryMsgRateLimit =
          $v.transportTenantTelemetryMsgRateLimit;
      _cassandraReadQueryTenantRuleEngineRateLimits =
          $v.cassandraReadQueryTenantRuleEngineRateLimits;
      _transportGatewayTelemetryMsgRateLimit =
          $v.transportGatewayTelemetryMsgRateLimit;
      _ruleEngineExceptionsTtlDays = $v.ruleEngineExceptionsTtlDays;
      _agentEventRateLimits = $v.agentEventRateLimits;
      _alarmsTtlDays = $v.alarmsTtlDays;
      _maxRelationLevelPerCfArgument = $v.maxRelationLevelPerCfArgument;
      _wsMsgQueueLimitPerSession = $v.wsMsgQueueLimitPerSession;
      _maxEdges = $v.maxEdges;
      _maxDashboards = $v.maxDashboards;
      _maxReportSizeInBytes = $v.maxReportSizeInBytes;
      _maxSchedulerEvents = $v.maxSchedulerEvents;
      _maxDataPointsPerRollingArg = $v.maxDataPointsPerRollingArg;
      _maxEmails = $v.maxEmails;
      _edgeUplinkMessagesRateLimits = $v.edgeUplinkMessagesRateLimits;
      _tenantEntityImportRateLimit = $v.tenantEntityImportRateLimit;
      _maxResourcesInBytes = $v.maxResourcesInBytes;
      _maxWsSessionsPerCustomer = $v.maxWsSessionsPerCustomer;
      _integrationMsgsPerDeviceRateLimit = $v.integrationMsgsPerDeviceRateLimit;
      _customerServerRestLimitsConfiguration =
          $v.customerServerRestLimitsConfiguration;
      _maxRelatedEntitiesToReturnPerCfArgument =
          $v.maxRelatedEntitiesToReturnPerCfArgument;
      _maxDevices = $v.maxDevices;
      _minAllowedDeduplicationIntervalInSecForCF =
          $v.minAllowedDeduplicationIntervalInSecForCF;
      _transportGatewayDeviceTelemetryMsgRateLimit =
          $v.transportGatewayDeviceTelemetryMsgRateLimit;
      _maxStateSizeInKBytes = $v.maxStateSizeInKBytes;
      _maxSingleValueArgumentSizeInKBytes =
          $v.maxSingleValueArgumentSizeInKBytes;
      _cassandraWriteQueryTenantCoreRateLimits =
          $v.cassandraWriteQueryTenantCoreRateLimits;
      _maxTransportMessages = $v.maxTransportMessages;
      _transportTenantMsgRateLimit = $v.transportTenantMsgRateLimit;
      _transportGatewayDeviceTelemetryDataPointsRateLimit =
          $v.transportGatewayDeviceTelemetryDataPointsRateLimit;
      _maxJSExecutions = $v.maxJSExecutions;
      _maxAiCredits = $v.maxAiCredits;
      _maxREExecutions = $v.maxREExecutions;
      _maxAgents = $v.maxAgents;
      _tenantEntityExportRateLimit = $v.tenantEntityExportRateLimit;
      _maxTbelExecutions = $v.maxTbelExecutions;
      _smsEnabled = $v.smsEnabled;
      _maxWsSessionsPerPublicUser = $v.maxWsSessionsPerPublicUser;
      _maxCreatedAlarms = $v.maxCreatedAlarms;
      _maxWsSubscriptionsPerPublicUser = $v.maxWsSubscriptionsPerPublicUser;
      _cfReevaluationCheckInterval = $v.cfReevaluationCheckInterval;
      _maxConverters = $v.maxConverters;
      _wsUpdatesPerSessionRateLimit = $v.wsUpdatesPerSessionRateLimit;
      _maxUsers = $v.maxUsers;
      _alarmsReevaluationInterval = $v.alarmsReevaluationInterval;
      _tenantNotificationRequestsRateLimit =
          $v.tenantNotificationRequestsRateLimit;
      _integrationMsgsPerAssetRateLimit = $v.integrationMsgsPerAssetRateLimit;
      _maxArgumentsPerCF = $v.maxArgumentsPerCF;
      _edgeEventRateLimits = $v.edgeEventRateLimits;
      _maxOtaPackagesInBytes = $v.maxOtaPackagesInBytes;
      _maxAgentApplications = $v.maxAgentApplications;
      _defaultStorageTtlDays = $v.defaultStorageTtlDays;
      _agentLogChunkRateLimits = $v.agentLogChunkRateLimits;
      _transportGatewayDeviceMsgRateLimit =
          $v.transportGatewayDeviceMsgRateLimit;
      _aiChatRequestsPerTenantRateLimit = $v.aiChatRequestsPerTenantRateLimit;
      _maxAssets = $v.maxAssets;
      _maxRuleChains = $v.maxRuleChains;
      _transportDeviceTelemetryMsgRateLimit =
          $v.transportDeviceTelemetryMsgRateLimit;
      _integrationMsgsPerTenantRateLimit = $v.integrationMsgsPerTenantRateLimit;
      _maxGeneratedReports = $v.maxGeneratedReports;
      _maxSms = $v.maxSms;
      _edgeEventRateLimitsPerEdge = $v.edgeEventRateLimitsPerEdge;
      _minAllowedAggregationIntervalInSecForCF =
          $v.minAllowedAggregationIntervalInSecForCF;
      _transportDeviceTelemetryDataPointsRateLimit =
          $v.transportDeviceTelemetryDataPointsRateLimit;
      _maxWsSubscriptionsPerRegularUser = $v.maxWsSubscriptionsPerRegularUser;
      _cassandraReadQueryTenantCoreRateLimits =
          $v.cassandraReadQueryTenantCoreRateLimits;
      _blobEntityTtlDays = $v.blobEntityTtlDays;
      _maxTransportDataPoints = $v.maxTransportDataPoints;
      _reportTtlDays = $v.reportTtlDays;
      _maxCustomers = $v.maxCustomers;
      _cassandraWriteQueryTenantRuleEngineRateLimits =
          $v.cassandraWriteQueryTenantRuleEngineRateLimits;
      _intermediateAggregationIntervalInSecForCF =
          $v.intermediateAggregationIntervalInSecForCF;
      _maxIntegrations = $v.maxIntegrations;
      _transportDeviceMsgRateLimit = $v.transportDeviceMsgRateLimit;
      _maxWsSessionsPerTenant = $v.maxWsSessionsPerTenant;
      _maxResourceSize = $v.maxResourceSize;
      _maxDebugModeDurationMinutes = $v.maxDebugModeDurationMinutes;
      _maxRuleNodeExecutionsPerMessage = $v.maxRuleNodeExecutionsPerMessage;
      _agentLogChunkRateLimitsPerAgent = $v.agentLogChunkRateLimitsPerAgent;
      _warnThreshold = $v.warnThreshold;
      _transportGatewayMsgRateLimit = $v.transportGatewayMsgRateLimit;
      _minAllowedScheduledUpdateIntervalInSecForCF =
          $v.minAllowedScheduledUpdateIntervalInSecForCF;
      _maxDPStorageDays = $v.maxDPStorageDays;
      _rpcTtlDays = $v.rpcTtlDays;
      _maxCalculatedFieldsPerEntity = $v.maxCalculatedFieldsPerEntity;
      _tenantServerRestLimitsConfiguration =
          $v.tenantServerRestLimitsConfiguration;
      _edgeUplinkMessagesRateLimitsPerEdge =
          $v.edgeUplinkMessagesRateLimitsPerEdge;
      _maxWsSessionsPerRegularUser = $v.maxWsSessionsPerRegularUser;
      _maxWsSubscriptionsPerCustomer = $v.maxWsSubscriptionsPerCustomer;
      _transportTenantTelemetryDataPointsRateLimit =
          $v.transportTenantTelemetryDataPointsRateLimit;
      _agentEventRateLimitsPerAgent = $v.agentEventRateLimitsPerAgent;
      _queueStatsTtlDays = $v.queueStatsTtlDays;
      _tenantNotificationRequestsPerRuleRateLimit =
          $v.tenantNotificationRequestsPerRuleRateLimit;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DefaultTenantProfileConfiguration other) {
    _$v = other as _$DefaultTenantProfileConfiguration;
  }

  @override
  void update(
    void Function(DefaultTenantProfileConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  DefaultTenantProfileConfiguration build() => _build();

  _$DefaultTenantProfileConfiguration _build() {
    final _$result =
        _$v ??
        _$DefaultTenantProfileConfiguration._(
          maxWsSubscriptionsPerTenant: maxWsSubscriptionsPerTenant,
          transportGatewayTelemetryDataPointsRateLimit:
              transportGatewayTelemetryDataPointsRateLimit,
          transportTenantTelemetryMsgRateLimit:
              transportTenantTelemetryMsgRateLimit,
          cassandraReadQueryTenantRuleEngineRateLimits:
              cassandraReadQueryTenantRuleEngineRateLimits,
          transportGatewayTelemetryMsgRateLimit:
              transportGatewayTelemetryMsgRateLimit,
          ruleEngineExceptionsTtlDays: ruleEngineExceptionsTtlDays,
          agentEventRateLimits: agentEventRateLimits,
          alarmsTtlDays: alarmsTtlDays,
          maxRelationLevelPerCfArgument: maxRelationLevelPerCfArgument,
          wsMsgQueueLimitPerSession: wsMsgQueueLimitPerSession,
          maxEdges: maxEdges,
          maxDashboards: maxDashboards,
          maxReportSizeInBytes: maxReportSizeInBytes,
          maxSchedulerEvents: maxSchedulerEvents,
          maxDataPointsPerRollingArg: maxDataPointsPerRollingArg,
          maxEmails: maxEmails,
          edgeUplinkMessagesRateLimits: edgeUplinkMessagesRateLimits,
          tenantEntityImportRateLimit: tenantEntityImportRateLimit,
          maxResourcesInBytes: maxResourcesInBytes,
          maxWsSessionsPerCustomer: maxWsSessionsPerCustomer,
          integrationMsgsPerDeviceRateLimit: integrationMsgsPerDeviceRateLimit,
          customerServerRestLimitsConfiguration:
              customerServerRestLimitsConfiguration,
          maxRelatedEntitiesToReturnPerCfArgument:
              maxRelatedEntitiesToReturnPerCfArgument,
          maxDevices: maxDevices,
          minAllowedDeduplicationIntervalInSecForCF:
              minAllowedDeduplicationIntervalInSecForCF,
          transportGatewayDeviceTelemetryMsgRateLimit:
              transportGatewayDeviceTelemetryMsgRateLimit,
          maxStateSizeInKBytes: maxStateSizeInKBytes,
          maxSingleValueArgumentSizeInKBytes:
              maxSingleValueArgumentSizeInKBytes,
          cassandraWriteQueryTenantCoreRateLimits:
              cassandraWriteQueryTenantCoreRateLimits,
          maxTransportMessages: maxTransportMessages,
          transportTenantMsgRateLimit: transportTenantMsgRateLimit,
          transportGatewayDeviceTelemetryDataPointsRateLimit:
              transportGatewayDeviceTelemetryDataPointsRateLimit,
          maxJSExecutions: maxJSExecutions,
          maxAiCredits: maxAiCredits,
          maxREExecutions: maxREExecutions,
          maxAgents: maxAgents,
          tenantEntityExportRateLimit: tenantEntityExportRateLimit,
          maxTbelExecutions: maxTbelExecutions,
          smsEnabled: smsEnabled,
          maxWsSessionsPerPublicUser: maxWsSessionsPerPublicUser,
          maxCreatedAlarms: maxCreatedAlarms,
          maxWsSubscriptionsPerPublicUser: maxWsSubscriptionsPerPublicUser,
          cfReevaluationCheckInterval: cfReevaluationCheckInterval,
          maxConverters: maxConverters,
          wsUpdatesPerSessionRateLimit: wsUpdatesPerSessionRateLimit,
          maxUsers: maxUsers,
          alarmsReevaluationInterval: alarmsReevaluationInterval,
          tenantNotificationRequestsRateLimit:
              tenantNotificationRequestsRateLimit,
          integrationMsgsPerAssetRateLimit: integrationMsgsPerAssetRateLimit,
          maxArgumentsPerCF: maxArgumentsPerCF,
          edgeEventRateLimits: edgeEventRateLimits,
          maxOtaPackagesInBytes: maxOtaPackagesInBytes,
          maxAgentApplications: maxAgentApplications,
          defaultStorageTtlDays: defaultStorageTtlDays,
          agentLogChunkRateLimits: agentLogChunkRateLimits,
          transportGatewayDeviceMsgRateLimit:
              transportGatewayDeviceMsgRateLimit,
          aiChatRequestsPerTenantRateLimit: aiChatRequestsPerTenantRateLimit,
          maxAssets: maxAssets,
          maxRuleChains: maxRuleChains,
          transportDeviceTelemetryMsgRateLimit:
              transportDeviceTelemetryMsgRateLimit,
          integrationMsgsPerTenantRateLimit: integrationMsgsPerTenantRateLimit,
          maxGeneratedReports: maxGeneratedReports,
          maxSms: maxSms,
          edgeEventRateLimitsPerEdge: edgeEventRateLimitsPerEdge,
          minAllowedAggregationIntervalInSecForCF:
              minAllowedAggregationIntervalInSecForCF,
          transportDeviceTelemetryDataPointsRateLimit:
              transportDeviceTelemetryDataPointsRateLimit,
          maxWsSubscriptionsPerRegularUser: maxWsSubscriptionsPerRegularUser,
          cassandraReadQueryTenantCoreRateLimits:
              cassandraReadQueryTenantCoreRateLimits,
          blobEntityTtlDays: blobEntityTtlDays,
          maxTransportDataPoints: maxTransportDataPoints,
          reportTtlDays: reportTtlDays,
          maxCustomers: maxCustomers,
          cassandraWriteQueryTenantRuleEngineRateLimits:
              cassandraWriteQueryTenantRuleEngineRateLimits,
          intermediateAggregationIntervalInSecForCF:
              intermediateAggregationIntervalInSecForCF,
          maxIntegrations: maxIntegrations,
          transportDeviceMsgRateLimit: transportDeviceMsgRateLimit,
          maxWsSessionsPerTenant: maxWsSessionsPerTenant,
          maxResourceSize: maxResourceSize,
          maxDebugModeDurationMinutes: maxDebugModeDurationMinutes,
          maxRuleNodeExecutionsPerMessage: maxRuleNodeExecutionsPerMessage,
          agentLogChunkRateLimitsPerAgent: agentLogChunkRateLimitsPerAgent,
          warnThreshold: warnThreshold,
          transportGatewayMsgRateLimit: transportGatewayMsgRateLimit,
          minAllowedScheduledUpdateIntervalInSecForCF:
              minAllowedScheduledUpdateIntervalInSecForCF,
          maxDPStorageDays: maxDPStorageDays,
          rpcTtlDays: rpcTtlDays,
          maxCalculatedFieldsPerEntity: maxCalculatedFieldsPerEntity,
          tenantServerRestLimitsConfiguration:
              tenantServerRestLimitsConfiguration,
          edgeUplinkMessagesRateLimitsPerEdge:
              edgeUplinkMessagesRateLimitsPerEdge,
          maxWsSessionsPerRegularUser: maxWsSessionsPerRegularUser,
          maxWsSubscriptionsPerCustomer: maxWsSubscriptionsPerCustomer,
          transportTenantTelemetryDataPointsRateLimit:
              transportTenantTelemetryDataPointsRateLimit,
          agentEventRateLimitsPerAgent: agentEventRateLimitsPerAgent,
          queueStatsTtlDays: queueStatsTtlDays,
          tenantNotificationRequestsPerRuleRateLimit:
              tenantNotificationRequestsPerRuleRateLimit,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'DefaultTenantProfileConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
