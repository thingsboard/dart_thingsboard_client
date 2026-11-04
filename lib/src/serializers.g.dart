// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers =
    (Serializers().toBuilder()
          ..add($AgentAppConfig.serializer)
          ..add($AgentAppStep.serializer)
          ..add($AgentAppStepState.serializer)
          ..add($AggInput.serializer)
          ..add($AggInterval.serializer)
          ..add($AiModelConfig.serializer)
          ..add($AlarmCondition.serializer)
          ..add($AlarmConditionExpression.serializer)
          ..add($AlarmRuleKeyFilterPredicate.serializer)
          ..add($AlarmSchedule.serializer)
          ..add($AttributesOutputStrategy.serializer)
          ..add($CalculatedFieldConfiguration.serializer)
          ..add($CaptchaParams.serializer)
          ..add($CfArgumentDynamicSourceConfiguration.serializer)
          ..add($CoapDeviceTypeConfiguration.serializer)
          ..add($DataKeySettings.serializer)
          ..add($DeliveryMethodNotificationTemplate.serializer)
          ..add($DeviceConfiguration.serializer)
          ..add($DeviceProfileConfiguration.serializer)
          ..add($DeviceProfileProvisionConfiguration.serializer)
          ..add($DeviceProfileTransportConfiguration.serializer)
          ..add($DeviceTransportConfiguration.serializer)
          ..add($EntityExportData.serializer)
          ..add($EntityFilter.serializer)
          ..add($EntityId.serializer)
          ..add($EventFilter.serializer)
          ..add($JobConfiguration.serializer)
          ..add($JobResult.serializer)
          ..add($KeyFilterPredicate.serializer)
          ..add($LwM2MBootstrapServerCredential.serializer)
          ..add($MenuItem.serializer)
          ..add($MobilePage.serializer)
          ..add($NotificationDeliveryMethodConfig.serializer)
          ..add($NotificationRuleRecipientsConfig.serializer)
          ..add($NotificationRuleTriggerConfig.serializer)
          ..add($NotificationTargetConfig.serializer)
          ..add($OllamaAuth.serializer)
          ..add($Output.serializer)
          ..add($ReportComponent.serializer)
          ..add($ReportLatestChartSettings.serializer)
          ..add($ReportTemplateConfig.serializer)
          ..add($ReportTimeSeriesChartSettings.serializer)
          ..add($SelfRegistrationParams.serializer)
          ..add($SmsProviderConfiguration.serializer)
          ..add($SnmpCommunicationConfig.serializer)
          ..add($TaskResult.serializer)
          ..add($TbChatResponse.serializer)
          ..add($TbContent.serializer)
          ..add($TenantProfileConfiguration.serializer)
          ..add($TimeSeriesOutputStrategy.serializer)
          ..add($TransportPayloadTypeConfiguration.serializer)
          ..add($TwoFaAccountConfig.serializer)
          ..add($TwoFaProviderConfig.serializer)
          ..add($UsersFilter.serializer)
          ..add($VersionCreateRequest.serializer)
          ..add($VersionLoadRequest.serializer)
          ..add(AccountTwoFaSettings.serializer)
          ..add(Action.serializer)
          ..add(ActionStatus.serializer)
          ..add(ActionType.serializer)
          ..add(ActivateUserRequest.serializer)
          ..add(AdminSettings.serializer)
          ..add(AdminSettingsId.serializer)
          ..add(AffectedTenantAdministratorsFilter.serializer)
          ..add(AffectedUserFilter.serializer)
          ..add(Agent.serializer)
          ..add(AgentAppArgument.serializer)
          ..add(AgentAppArgumentFormat.serializer)
          ..add(AgentAppArgumentSource.serializer)
          ..add(AgentAppArgumentValueType.serializer)
          ..add(AgentAppConfigType.serializer)
          ..add(AgentAppEvent.serializer)
          ..add(AgentAppEventActionType.serializer)
          ..add(AgentAppEventId.serializer)
          ..add(AgentAppEventInfo.serializer)
          ..add(AgentAppEventRequest.serializer)
          ..add(AgentAppEventStepStatesValue.serializer)
          ..add(AgentAppInstallResponse.serializer)
          ..add(AgentAppProfile.serializer)
          ..add(AgentAppProfileId.serializer)
          ..add(AgentAppProfileInfo.serializer)
          ..add(AgentAppProfileRelationInfo.serializer)
          ..add(AgentAppStepType.serializer)
          ..add(AgentAppTemplate.serializer)
          ..add(AgentAppTemplateStartStepsInner.serializer)
          ..add(AgentAppUnit.serializer)
          ..add(AgentAppUnitId.serializer)
          ..add(AgentAppUnitType.serializer)
          ..add(AgentApplication.serializer)
          ..add(AgentApplicationId.serializer)
          ..add(AgentApplicationInfo.serializer)
          ..add(AgentApplicationOrigin.serializer)
          ..add(AgentApplicationType.serializer)
          ..add(AgentBulkAction.serializer)
          ..add(AgentBulkActionEventStats.serializer)
          ..add(AgentBulkActionId.serializer)
          ..add(AgentBulkActionStatus.serializer)
          ..add(AgentFinalizeStep.serializer)
          ..add(AgentId.serializer)
          ..add(AgentInfo.serializer)
          ..add(AgentInstructions.serializer)
          ..add(AgentPrepareStep.serializer)
          ..add(AgentProcessingStatus.serializer)
          ..add(AgentProfile.serializer)
          ..add(AgentProfileId.serializer)
          ..add(AgentProfileInfo.serializer)
          ..add(AgentProvisionType.serializer)
          ..add(AgentUpgradeRequest.serializer)
          ..add(AggFunction.serializer)
          ..add(AggFunctionInput.serializer)
          ..add(AggKeyInput.serializer)
          ..add(AggMetric.serializer)
          ..add(Aggregation.serializer)
          ..add(AggregationConfiguration.serializer)
          ..add(AggregationParams.serializer)
          ..add(AiChatModelConfig.serializer)
          ..add(AiModel.serializer)
          ..add(AiModelExportData.serializer)
          ..add(AiModelId.serializer)
          ..add(AiModelType.serializer)
          ..add(Alarm.serializer)
          ..add(AlarmAction.serializer)
          ..add(AlarmAssignee.serializer)
          ..add(AlarmAssignmentNotificationRuleTriggerConfig.serializer)
          ..add(AlarmAssignmentRecipientsConfig.serializer)
          ..add(AlarmCalculatedFieldConfiguration.serializer)
          ..add(AlarmComment.serializer)
          ..add(AlarmCommentId.serializer)
          ..add(AlarmCommentInfo.serializer)
          ..add(AlarmCommentNotificationRuleTriggerConfig.serializer)
          ..add(AlarmCommentRecipientsConfig.serializer)
          ..add(AlarmCommentType.serializer)
          ..add(AlarmConditionFilter.serializer)
          ..add(AlarmConditionValueAlarmSchedule.serializer)
          ..add(AlarmConditionValueBoolean.serializer)
          ..add(AlarmConditionValueDouble.serializer)
          ..add(AlarmConditionValueInteger.serializer)
          ..add(AlarmConditionValueLong.serializer)
          ..add(AlarmConditionValueString.serializer)
          ..add(AlarmCountQuery.serializer)
          ..add(AlarmData.serializer)
          ..add(AlarmDataPageLink.serializer)
          ..add(AlarmDataQuery.serializer)
          ..add(AlarmFilterConfig.serializer)
          ..add(AlarmId.serializer)
          ..add(AlarmInfo.serializer)
          ..add(AlarmNotificationRuleTriggerConfig.serializer)
          ..add(AlarmRule.serializer)
          ..add(AlarmRuleBooleanFilterPredicate.serializer)
          ..add(AlarmRuleBooleanOperation.serializer)
          ..add(AlarmRuleComplexFilterPredicate.serializer)
          ..add(AlarmRuleComplexOperation.serializer)
          ..add(AlarmRuleDefinition.serializer)
          ..add(AlarmRuleDefinitionInfo.serializer)
          ..add(AlarmRuleNumericFilterPredicate.serializer)
          ..add(AlarmRuleNumericOperation.serializer)
          ..add(AlarmRuleStringFilterPredicate.serializer)
          ..add(AlarmRuleStringOperation.serializer)
          ..add(AlarmSearchStatus.serializer)
          ..add(AlarmSeverity.serializer)
          ..add(AlarmStatus.serializer)
          ..add(AlarmTableComponent.serializer)
          ..add(AliasEntityId.serializer)
          ..add(AliasEntityType.serializer)
          ..add(AllUsersFilter.serializer)
          ..add(
            AllowCreateNewDevicesDeviceProfileProvisionConfiguration.serializer,
          )
          ..add(AllowedPermissionsInfo.serializer)
          ..add(AmazonBedrockChatModelConfig.serializer)
          ..add(AmazonBedrockProviderConfig.serializer)
          ..add(AnthropicChatModelConfig.serializer)
          ..add(AnthropicProviderConfig.serializer)
          ..add(AnyTimeSchedule.serializer)
          ..add(ApiFeature.serializer)
          ..add(ApiKey.serializer)
          ..add(ApiKeyId.serializer)
          ..add(ApiKeyInfo.serializer)
          ..add(ApiUsageLimitNotificationRuleTriggerConfig.serializer)
          ..add(ApiUsageLimitRecipientsConfig.serializer)
          ..add(ApiUsageStateFilter.serializer)
          ..add(ApiUsageStateId.serializer)
          ..add(ApiUsageStateValue.serializer)
          ..add(Argument.serializer)
          ..add(ArgumentType.serializer)
          ..add(Asset.serializer)
          ..add(AssetExportData.serializer)
          ..add(AssetId.serializer)
          ..add(AssetInfo.serializer)
          ..add(AssetProfile.serializer)
          ..add(AssetProfileExportData.serializer)
          ..add(AssetProfileId.serializer)
          ..add(AssetProfileInfo.serializer)
          ..add(AssetSearchQuery.serializer)
          ..add(AssetSearchQueryFilter.serializer)
          ..add(AssetTypeFilter.serializer)
          ..add(AttributeData.serializer)
          ..add(AttributeExportData.serializer)
          ..add(AttributeScope.serializer)
          ..add(AttributesEntityView.serializer)
          ..add(AttributesImmediateOutputStrategy.serializer)
          ..add(AttributesOutput.serializer)
          ..add(AttributesRuleChainOutputStrategy.serializer)
          ..add(AuditLog.serializer)
          ..add(AuditLogId.serializer)
          ..add(AuthenticationProtocol.serializer)
          ..add(Authority.serializer)
          ..add(AutoVersionCreateConfig.serializer)
          ..add(AvailableEntityKeys.serializer)
          ..add(AvailableEntityKeysV2.serializer)
          ..add(AwsSnsSmsProviderConfiguration.serializer)
          ..add(AxisPosition.serializer)
          ..add(AzureOpenAiChatModelConfig.serializer)
          ..add(AzureOpenAiProviderConfig.serializer)
          ..add(BackupCodeTwoFaAccountConfig.serializer)
          ..add(BackupCodeTwoFaProviderConfig.serializer)
          ..add(BackupVolumesRemoveStep.serializer)
          ..add(BackupVolumesStep.serializer)
          ..add(BackupVolumesStepState.serializer)
          ..add(BadgePosition.serializer)
          ..add(BarSeriesSettings.serializer)
          ..add(BaseReadTsKvQuery.serializer)
          ..add(Basic.serializer)
          ..add(BlobEntityId.serializer)
          ..add(BlobEntityInfo.serializer)
          ..add(BlobEntityInfoContentTypeEnum.serializer)
          ..add(BlobEntityWithCustomerInfo.serializer)
          ..add(BlobEntityWithCustomerInfoContentTypeEnum.serializer)
          ..add(BooleanFilterPredicate.serializer)
          ..add(BooleanOperation.serializer)
          ..add(BorderLength.serializer)
          ..add(BorderType.serializer)
          ..add(BranchInfo.serializer)
          ..add(BulkImportColumnType.serializer)
          ..add(BulkImportRequest.serializer)
          ..add(BulkImportResultAsset.serializer)
          ..add(BulkImportResultDevice.serializer)
          ..add(BulkImportResultEdge.serializer)
          ..add(BulkOperationPreview.serializer)
          ..add(BulkOperationRequest.serializer)
          ..add(Button.serializer)
          ..add(CMAssigneeType.serializer)
          ..add(CMItemLinkType.serializer)
          ..add(CMItemType.serializer)
          ..add(CMScope.serializer)
          ..add(CalculatedField.serializer)
          ..add(CalculatedFieldDebugEventFilter.serializer)
          ..add(CalculatedFieldDebugEventFilterEntityTypeEnum.serializer)
          ..add(CalculatedFieldDebugEventFilterIsErrorEnum.serializer)
          ..add(CalculatedFieldId.serializer)
          ..add(CalculatedFieldInfo.serializer)
          ..add(CalculatedFieldType.serializer)
          ..add(CellSettings.serializer)
          ..add(CfReprocessingJobConfiguration.serializer)
          ..add(CfReprocessingJobResult.serializer)
          ..add(CfReprocessingTaskFailure.serializer)
          ..add(CfReprocessingTaskResult.serializer)
          ..add(CfReprocessingValidationResult.serializer)
          ..add(ChangePasswordRequest.serializer)
          ..add(ChartFillSettings.serializer)
          ..add(ChartFillSettingsGradient.serializer)
          ..add(ChartFillType.serializer)
          ..add(ChartLabelPosition.serializer)
          ..add(ChartLineType.serializer)
          ..add(ChartShape.serializer)
          ..add(
            CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration
                .serializer,
          )
          ..add(ChecksumAlgorithm.serializer)
          ..add(ClaimRequest.serializer)
          ..add(ClearRule.serializer)
          ..add(ClientAttributesQueryingSnmpCommunicationConfig.serializer)
          ..add(CoapDeviceProfileTransportConfiguration.serializer)
          ..add(CoapDeviceTransportConfiguration.serializer)
          ..add(ColorRange.serializer)
          ..add(ColumnMapping.serializer)
          ..add(ColumnSettings.serializer)
          ..add(ComparisonDuration.serializer)
          ..add(ComparisonTsValue.serializer)
          ..add(ComplexFilterPredicate.serializer)
          ..add(ComplexVersionCreateRequest.serializer)
          ..add(ComponentClusteringMode.serializer)
          ..add(ComponentDescriptor.serializer)
          ..add(ComponentDescriptorId.serializer)
          ..add(ComponentLifecycleEvent.serializer)
          ..add(ComponentScope.serializer)
          ..add(ComponentType.serializer)
          ..add(ComposeDownStep.serializer)
          ..add(ComposeDownStepState.serializer)
          ..add(ComposeRestartStep.serializer)
          ..add(ComposeStartStep.serializer)
          ..add(ComposeStep.serializer)
          ..add(ComposeStepState.serializer)
          ..add(ComposeTypeChoiceStep.serializer)
          ..add(ContactBasedObject.serializer)
          ..add(Converter.serializer)
          ..add(ConverterExportData.serializer)
          ..add(ConverterId.serializer)
          ..add(ConverterType.serializer)
          ..add(ConvertersInfo.serializer)
          ..add(CreateReportRequest.serializer)
          ..add(CsvReportTemplateConfig.serializer)
          ..add(CurrentOwnerDynamicSourceConfiguration.serializer)
          ..add(CustomInterval.serializer)
          ..add(CustomMenu.serializer)
          ..add(CustomMenuConfig.serializer)
          ..add(CustomMenuDeleteResult.serializer)
          ..add(CustomMenuId.serializer)
          ..add(CustomMenuInfo.serializer)
          ..add(CustomMenuItem.serializer)
          ..add(CustomMobilePage.serializer)
          ..add(CustomTimeSchedule.serializer)
          ..add(CustomTimeScheduleItem.serializer)
          ..add(Customer.serializer)
          ..add(CustomerExportData.serializer)
          ..add(CustomerId.serializer)
          ..add(CustomerInfo.serializer)
          ..add(CustomerUsersFilter.serializer)
          ..add(Dashboard.serializer)
          ..add(DashboardComponent.serializer)
          ..add(DashboardExportData.serializer)
          ..add(DashboardId.serializer)
          ..add(DashboardInfo.serializer)
          ..add(DashboardPage.serializer)
          ..add(DashboardReportConfig.serializer)
          ..add(DataKey.serializer)
          ..add(DataKeyComparisonSettings.serializer)
          ..add(DataKeySettingsType.serializer)
          ..add(DataSource.serializer)
          ..add(DataSourceType.serializer)
          ..add(DataType.serializer)
          ..add(DayInterval.serializer)
          ..add(DebugConverterEventFilter.serializer)
          ..add(DebugConverterEventFilterIsErrorEnum.serializer)
          ..add(DebugIntegrationEventFilter.serializer)
          ..add(DebugIntegrationEventFilterIsErrorEnum.serializer)
          ..add(DebugSettings.serializer)
          ..add(DefaultCoapDeviceTypeConfiguration.serializer)
          ..add(DefaultDashboardParams.serializer)
          ..add(DefaultDataKeySettings.serializer)
          ..add(DefaultDeviceConfiguration.serializer)
          ..add(DefaultDeviceProfileConfiguration.serializer)
          ..add(DefaultDeviceProfileTransportConfiguration.serializer)
          ..add(DefaultDeviceTransportConfiguration.serializer)
          ..add(DefaultMenuItem.serializer)
          ..add(DefaultMobilePage.serializer)
          ..add(DefaultPageId.serializer)
          ..add(DefaultRuleChainCreateRequest.serializer)
          ..add(DefaultTenantProfileConfiguration.serializer)
          ..add(Device.serializer)
          ..add(DeviceActivityNotificationRuleTriggerConfig.serializer)
          ..add(DeviceActivityRecipientsConfig.serializer)
          ..add(DeviceCredentials.serializer)
          ..add(DeviceCredentialsId.serializer)
          ..add(DeviceCredentialsType.serializer)
          ..add(DeviceData.serializer)
          ..add(DeviceEvent.serializer)
          ..add(DeviceExportData.serializer)
          ..add(DeviceGroupOtaPackage.serializer)
          ..add(DeviceId.serializer)
          ..add(DeviceInfo.serializer)
          ..add(DeviceProfile.serializer)
          ..add(DeviceProfileData.serializer)
          ..add(DeviceProfileExportData.serializer)
          ..add(DeviceProfileId.serializer)
          ..add(DeviceProfileInfo.serializer)
          ..add(DeviceProfileProvisionType.serializer)
          ..add(DeviceProfileType.serializer)
          ..add(DeviceSearchQuery.serializer)
          ..add(DeviceSearchQueryFilter.serializer)
          ..add(DeviceTransportType.serializer)
          ..add(DeviceTypeFilter.serializer)
          ..add(Direction.serializer)
          ..add(DisabledDeviceProfileProvisionConfiguration.serializer)
          ..add(DividerComponent.serializer)
          ..add(DockerComposeConfig.serializer)
          ..add(Domain.serializer)
          ..add(DomainId.serializer)
          ..add(DomainInfo.serializer)
          ..add(DoughnutLayout.serializer)
          ..add(DummyJobConfiguration.serializer)
          ..add(DummyJobResult.serializer)
          ..add(DummyTaskFailure.serializer)
          ..add(DummyTaskResult.serializer)
          ..add(DurationAlarmCondition.serializer)
          ..add(DynamicValueBoolean.serializer)
          ..add(DynamicValueDouble.serializer)
          ..add(DynamicValueSourceType.serializer)
          ..add(DynamicValueString.serializer)
          ..add(Edge.serializer)
          ..add(
            EdgeCommunicationFailureNotificationRuleTriggerConfig.serializer,
          )
          ..add(EdgeCommunicationFailureRecipientsConfig.serializer)
          ..add(EdgeConnectionNotificationRuleTriggerConfig.serializer)
          ..add(EdgeConnectionRecipientsConfig.serializer)
          ..add(EdgeConnectivityEvent.serializer)
          ..add(EdgeEvent.serializer)
          ..add(EdgeEventActionType.serializer)
          ..add(EdgeEventId.serializer)
          ..add(EdgeEventType.serializer)
          ..add(EdgeId.serializer)
          ..add(EdgeInfo.serializer)
          ..add(EdgeInstructions.serializer)
          ..add(EdgeSearchQuery.serializer)
          ..add(EdgeSearchQueryFilter.serializer)
          ..add(EdgeTypeFilter.serializer)
          ..add(EdqsApiMode.serializer)
          ..add(EdqsState.serializer)
          ..add(EdqsSyncRequest.serializer)
          ..add(EdqsSyncStatus.serializer)
          ..add(EfentoCoapDeviceTypeConfiguration.serializer)
          ..add(EmailDeliveryMethodNotificationTemplate.serializer)
          ..add(EmailTwoFaAccountConfig.serializer)
          ..add(EmailTwoFaProviderConfig.serializer)
          ..add(EnterpriseCaptchaParams.serializer)
          ..add(EntitiesByGroupNameFilter.serializer)
          ..add(EntitiesLimitNotificationRuleTriggerConfig.serializer)
          ..add(EntitiesLimitRecipientsConfig.serializer)
          ..add(Entity.serializer)
          ..add(EntityActionNotificationRuleTriggerConfig.serializer)
          ..add(EntityActionRecipientsConfig.serializer)
          ..add(EntityAggregationCalculatedFieldConfiguration.serializer)
          ..add(EntityAlias.serializer)
          ..add(EntityCoordinates.serializer)
          ..add(EntityCountQuery.serializer)
          ..add(EntityData.serializer)
          ..add(EntityDataDiff.serializer)
          ..add(EntityDataInfo.serializer)
          ..add(EntityDataPageLink.serializer)
          ..add(EntityDataQuery.serializer)
          ..add(EntityDataSortOrder.serializer)
          ..add(EntityExportSettings.serializer)
          ..add(EntityGroup.serializer)
          ..add(EntityGroupExportData.serializer)
          ..add(EntityGroupFilter.serializer)
          ..add(EntityGroupId.serializer)
          ..add(EntityGroupInfo.serializer)
          ..add(EntityGroupInfoTypeEnum.serializer)
          ..add(EntityGroupListFilter.serializer)
          ..add(EntityGroupNameFilter.serializer)
          ..add(EntityGroupTypeEnum.serializer)
          ..add(EntityInfo.serializer)
          ..add(EntityKey.serializer)
          ..add(EntityKeyType.serializer)
          ..add(EntityKeyValueType.serializer)
          ..add(EntityListFilter.serializer)
          ..add(EntityLoadError.serializer)
          ..add(EntityNameFilter.serializer)
          ..add(EntityRelation.serializer)
          ..add(EntityRelationInfo.serializer)
          ..add(EntityRelationsQuery.serializer)
          ..add(EntitySearchDirection.serializer)
          ..add(EntitySubtype.serializer)
          ..add(EntityTableComponent.serializer)
          ..add(EntityType.serializer)
          ..add(EntityTypeFilter.serializer)
          ..add(EntityTypeLoadResult.serializer)
          ..add(EntityTypeVersionCreateConfig.serializer)
          ..add(EntityTypeVersionLoadConfig.serializer)
          ..add(EntityTypeVersionLoadRequest.serializer)
          ..add(EntityVersion.serializer)
          ..add(EntityView.serializer)
          ..add(EntityViewExportData.serializer)
          ..add(EntityViewId.serializer)
          ..add(EntityViewInfo.serializer)
          ..add(EntityViewSearchQuery.serializer)
          ..add(EntityViewSearchQueryFilter.serializer)
          ..add(EntityViewTypeFilter.serializer)
          ..add(ErrorComponent.serializer)
          ..add(ErrorComponentAllOfException.serializer)
          ..add(ErrorComponentAllOfExceptionCause.serializer)
          ..add(ErrorComponentAllOfExceptionCauseStackTrace.serializer)
          ..add(ErrorEventFilter.serializer)
          ..add(EscalatedNotificationRuleRecipientsConfig.serializer)
          ..add(EventId.serializer)
          ..add(EventInfo.serializer)
          ..add(EventType.serializer)
          ..add(ExportableEntity.serializer)
          ..add(Failure.serializer)
          ..add(Favicon.serializer)
          ..add(FeaturesInfo.serializer)
          ..add(Filter.serializer)
          ..add(FilterPredicateValueBoolean.serializer)
          ..add(FilterPredicateValueDouble.serializer)
          ..add(FilterPredicateValueString.serializer)
          ..add(FixedTimeWindow.serializer)
          ..add(Font.serializer)
          ..add(FontStyle.serializer)
          ..add(FontWeight.serializer)
          ..add(GeofencingCalculatedFieldConfiguration.serializer)
          ..add(GeofencingReportStrategy.serializer)
          ..add(GetManagedRelatedEntityIds200ResponseInner.serializer)
          ..add(GitHubModelsChatModelConfig.serializer)
          ..add(GitHubModelsProviderConfig.serializer)
          ..add(GoogleAiGeminiChatModelConfig.serializer)
          ..add(GoogleAiGeminiProviderConfig.serializer)
          ..add(GoogleVertexAiGeminiChatModelConfig.serializer)
          ..add(GoogleVertexAiGeminiProviderConfig.serializer)
          ..add(GroupPermission.serializer)
          ..add(GroupPermissionId.serializer)
          ..add(GroupPermissionInfo.serializer)
          ..add(HasIdObject.serializer)
          ..add(HeaderFooter.serializer)
          ..add(Heading.serializer)
          ..add(HeadingComponent.serializer)
          ..add(History.serializer)
          ..add(HomeDashboard.serializer)
          ..add(HomeDashboardInfo.serializer)
          ..add(HomeDashboardParams.serializer)
          ..add(HomeMenuItem.serializer)
          ..add(HomeMenuItemType.serializer)
          ..add(HourInterval.serializer)
          ..add(ImageAlignment.serializer)
          ..add(ImageComponent.serializer)
          ..add(ImageSourceType.serializer)
          ..add(ImageWidthType.serializer)
          ..add(Insets.serializer)
          ..add(Integration.serializer)
          ..add(IntegrationConvertersInfo.serializer)
          ..add(IntegrationExportData.serializer)
          ..add(IntegrationId.serializer)
          ..add(IntegrationInfo.serializer)
          ..add(
            IntegrationLifecycleEventNotificationRuleTriggerConfig.serializer,
          )
          ..add(IntegrationLifecycleEventRecipientsConfig.serializer)
          ..add(IntegrationType.serializer)
          ..add(Interval.serializer)
          ..add(IntervalType.serializer)
          ..add(Job.serializer)
          ..add(JobId.serializer)
          ..add(JobStatus.serializer)
          ..add(JobType.serializer)
          ..add(JsonTransportPayloadConfiguration.serializer)
          ..add(JwtPair.serializer)
          ..add(JwtSettings.serializer)
          ..add(KeyFilter.serializer)
          ..add(KeyInfo.serializer)
          ..add(KeySample.serializer)
          ..add(LastVisitedDashboardInfo.serializer)
          ..add(LatestChartComponent.serializer)
          ..add(LegendConfig.serializer)
          ..add(LegendPosition.serializer)
          ..add(LicenseChangeResult.serializer)
          ..add(LicenseClaimInfo.serializer)
          ..add(LicenseClaimMode.serializer)
          ..add(LicenseClaimResult.serializer)
          ..add(LicenseClaimStatus.serializer)
          ..add(LicenseKeyRequest.serializer)
          ..add(LicenseUsageInfo.serializer)
          ..add(LifeCycleEventFilter.serializer)
          ..add(LifeCycleEventFilterStatusEnum.serializer)
          ..add(LimitedApi.serializer)
          ..add(LineSeriesSettings.serializer)
          ..add(LineSeriesStepType.serializer)
          ..add(LinkType.serializer)
          ..add(Login401Response.serializer)
          ..add(LoginMobileInfo.serializer)
          ..add(LoginRequest.serializer)
          ..add(LoginResponse.serializer)
          ..add(LoginWhiteLabelingParams.serializer)
          ..add(LwM2MServerSecurityConfigDefault.serializer)
          ..add(LwM2mInstance.serializer)
          ..add(LwM2mObject.serializer)
          ..add(LwM2mResourceObserve.serializer)
          ..add(LwM2mVersion.serializer)
          ..add(Lwm2mDeviceProfileTransportConfiguration.serializer)
          ..add(Lwm2mDeviceTransportConfiguration.serializer)
          ..add(MapperType.serializer)
          ..add(Mapping.serializer)
          ..add(MenuItemType.serializer)
          ..add(MergedGroupPermissionInfo.serializer)
          ..add(MergedGroupTypePermissionInfo.serializer)
          ..add(MergedUserPermissions.serializer)
          ..add(MicrosoftTeamsDeliveryMethodNotificationTemplate.serializer)
          ..add(MicrosoftTeamsNotificationTargetConfig.serializer)
          ..add(MistralAiChatModelConfig.serializer)
          ..add(MistralAiProviderConfig.serializer)
          ..add(MobileApp.serializer)
          ..add(MobileAppBundle.serializer)
          ..add(MobileAppBundleId.serializer)
          ..add(MobileAppBundleInfo.serializer)
          ..add(MobileAppDeliveryMethodNotificationTemplate.serializer)
          ..add(MobileAppId.serializer)
          ..add(MobileAppNotificationDeliveryMethodConfig.serializer)
          ..add(MobileAppStatus.serializer)
          ..add(MobileAppVersionInfo.serializer)
          ..add(MobileLayoutConfig.serializer)
          ..add(MobilePageType.serializer)
          ..add(MobileRedirectParams.serializer)
          ..add(MobileSelfRegistrationParams.serializer)
          ..add(MobileSessionInfo.serializer)
          ..add(Model.serializer)
          ..add(MonthInterval.serializer)
          ..add(MqttDeviceProfileTransportConfiguration.serializer)
          ..add(MqttDeviceTransportConfiguration.serializer)
          ..add(NameConflictPolicy.serializer)
          ..add(NewPlatformVersionNotificationRuleTriggerConfig.serializer)
          ..add(NewPlatformVersionRecipientsConfig.serializer)
          ..add(NoDataFilterPredicate.serializer)
          ..add(NoSecLwM2MBootstrapServerCredential.serializer)
          ..add(NodeConnectionInfo.serializer)
          ..add(None.serializer)
          ..add(Notification.serializer)
          ..add(NotificationDeliveryMethod.serializer)
          ..add(NotificationId.serializer)
          ..add(NotificationInfo.serializer)
          ..add(NotificationPref.serializer)
          ..add(NotificationRequest.serializer)
          ..add(NotificationRequestConfig.serializer)
          ..add(NotificationRequestId.serializer)
          ..add(NotificationRequestInfo.serializer)
          ..add(NotificationRequestPreview.serializer)
          ..add(NotificationRequestStats.serializer)
          ..add(NotificationRequestStatus.serializer)
          ..add(NotificationRule.serializer)
          ..add(NotificationRuleConfig.serializer)
          ..add(NotificationRuleExportData.serializer)
          ..add(NotificationRuleId.serializer)
          ..add(NotificationRuleInfo.serializer)
          ..add(NotificationRuleTriggerType.serializer)
          ..add(NotificationSettings.serializer)
          ..add(NotificationStatus.serializer)
          ..add(NotificationTarget.serializer)
          ..add(NotificationTargetExportData.serializer)
          ..add(NotificationTargetId.serializer)
          ..add(NotificationTemplate.serializer)
          ..add(NotificationTemplateConfig.serializer)
          ..add(NotificationTemplateExportData.serializer)
          ..add(NotificationTemplateId.serializer)
          ..add(NotificationType.serializer)
          ..add(NumericFilterPredicate.serializer)
          ..add(NumericOperation.serializer)
          ..add(OAuth2BasicMapperConfig.serializer)
          ..add(OAuth2Client.serializer)
          ..add(OAuth2ClientId.serializer)
          ..add(OAuth2ClientInfo.serializer)
          ..add(OAuth2ClientLoginInfo.serializer)
          ..add(OAuth2ClientRegistrationTemplate.serializer)
          ..add(OAuth2ClientRegistrationTemplateId.serializer)
          ..add(OAuth2CustomMapperConfig.serializer)
          ..add(OAuth2MapperConfig.serializer)
          ..add(ObjectAttributes.serializer)
          ..add(ObjectType.serializer)
          ..add(OllamaChatModelConfig.serializer)
          ..add(OllamaProviderConfig.serializer)
          ..add(OpenAiChatModelConfig.serializer)
          ..add(OpenAiProviderConfig.serializer)
          ..add(Operation.serializer)
          ..add(OriginatorEntityOwnerUsersFilter.serializer)
          ..add(OtaPackage.serializer)
          ..add(OtaPackageExportData.serializer)
          ..add(OtaPackageId.serializer)
          ..add(OtaPackageInfo.serializer)
          ..add(OtaPackageType.serializer)
          ..add(OtherConfiguration.serializer)
          ..add(PSKLwM2MBootstrapServerCredential.serializer)
          ..add(PageBreakComponent.serializer)
          ..add(PageDataAgent.serializer)
          ..add(PageDataAgentAppEvent.serializer)
          ..add(PageDataAgentAppEventInfo.serializer)
          ..add(PageDataAgentAppProfile.serializer)
          ..add(PageDataAgentAppUnit.serializer)
          ..add(PageDataAgentApplicationInfo.serializer)
          ..add(PageDataAgentBulkAction.serializer)
          ..add(PageDataAgentInfo.serializer)
          ..add(PageDataAgentProfile.serializer)
          ..add(PageDataAgentProfileInfo.serializer)
          ..add(PageDataAiModel.serializer)
          ..add(PageDataAlarmCommentInfo.serializer)
          ..add(PageDataAlarmData.serializer)
          ..add(PageDataAlarmInfo.serializer)
          ..add(PageDataAlarmRuleDefinition.serializer)
          ..add(PageDataAlarmRuleDefinitionInfo.serializer)
          ..add(PageDataApiKeyInfo.serializer)
          ..add(PageDataAsset.serializer)
          ..add(PageDataAssetInfo.serializer)
          ..add(PageDataAssetProfile.serializer)
          ..add(PageDataAssetProfileInfo.serializer)
          ..add(PageDataAuditLog.serializer)
          ..add(PageDataBlobEntityWithCustomerInfo.serializer)
          ..add(PageDataCalculatedField.serializer)
          ..add(PageDataCalculatedFieldInfo.serializer)
          ..add(PageDataContactBasedObject.serializer)
          ..add(PageDataConverter.serializer)
          ..add(PageDataCustomMenuInfo.serializer)
          ..add(PageDataCustomer.serializer)
          ..add(PageDataCustomerInfo.serializer)
          ..add(PageDataDashboardInfo.serializer)
          ..add(PageDataDevice.serializer)
          ..add(PageDataDeviceInfo.serializer)
          ..add(PageDataDeviceProfile.serializer)
          ..add(PageDataDeviceProfileInfo.serializer)
          ..add(PageDataDomainInfo.serializer)
          ..add(PageDataEdge.serializer)
          ..add(PageDataEdgeEvent.serializer)
          ..add(PageDataEdgeInfo.serializer)
          ..add(PageDataEntityData.serializer)
          ..add(PageDataEntityGroupInfo.serializer)
          ..add(PageDataEntityInfo.serializer)
          ..add(PageDataEntitySubtype.serializer)
          ..add(PageDataEntityVersion.serializer)
          ..add(PageDataEntityView.serializer)
          ..add(PageDataEntityViewInfo.serializer)
          ..add(PageDataEventInfo.serializer)
          ..add(PageDataIntegration.serializer)
          ..add(PageDataIntegrationInfo.serializer)
          ..add(PageDataJob.serializer)
          ..add(PageDataMobileApp.serializer)
          ..add(PageDataMobileAppBundleInfo.serializer)
          ..add(PageDataNotification.serializer)
          ..add(PageDataNotificationRequestInfo.serializer)
          ..add(PageDataNotificationRuleInfo.serializer)
          ..add(PageDataNotificationTarget.serializer)
          ..add(PageDataNotificationTemplate.serializer)
          ..add(PageDataOAuth2ClientInfo.serializer)
          ..add(PageDataOtaPackageInfo.serializer)
          ..add(PageDataQueue.serializer)
          ..add(PageDataQueueStats.serializer)
          ..add(PageDataReport.serializer)
          ..add(PageDataReportInfo.serializer)
          ..add(PageDataReportTemplateInfo.serializer)
          ..add(PageDataRole.serializer)
          ..add(PageDataRuleChain.serializer)
          ..add(PageDataScheduledReportInfo.serializer)
          ..add(PageDataSchedulerEventInfo.serializer)
          ..add(PageDataSchedulerEventWithCustomerInfo.serializer)
          ..add(PageDataSecretInfo.serializer)
          ..add(PageDataShortEntityView.serializer)
          ..add(PageDataString.serializer)
          ..add(PageDataTbResourceInfo.serializer)
          ..add(PageDataTenant.serializer)
          ..add(PageDataTenantInfo.serializer)
          ..add(PageDataTenantProfile.serializer)
          ..add(PageDataTrendzViewConfigLite.serializer)
          ..add(PageDataUser.serializer)
          ..add(PageDataUserEmailInfo.serializer)
          ..add(PageDataUserInfo.serializer)
          ..add(PageDataWidgetTypeInfo.serializer)
          ..add(PageDataWidgetsBundle.serializer)
          ..add(PageOrientation.serializer)
          ..add(PageSize.serializer)
          ..add(Palette.serializer)
          ..add(PaletteSettings.serializer)
          ..add(PdfReportTemplateConfig.serializer)
          ..add(PieChartLabelPosition.serializer)
          ..add(PlatformTwoFaSettings.serializer)
          ..add(PlatformType.serializer)
          ..add(PlatformUsersNotificationTargetConfig.serializer)
          ..add(PowerMode.serializer)
          ..add(PowerSavingConfiguration.serializer)
          ..add(PrivacyProtocol.serializer)
          ..add(ProcessingStartStatus.serializer)
          ..add(ProcessingStrategy.serializer)
          ..add(ProcessingStrategyType.serializer)
          ..add(PropagationCalculatedFieldConfiguration.serializer)
          ..add(ProtoTransportPayloadConfiguration.serializer)
          ..add(QRCodeConfig.serializer)
          ..add(QrCodeSettings.serializer)
          ..add(QrCodeSettingsId.serializer)
          ..add(QuarterInterval.serializer)
          ..add(Queue.serializer)
          ..add(QueueId.serializer)
          ..add(QueueStats.serializer)
          ..add(QueueStatsId.serializer)
          ..add(QuickTimeInterval.serializer)
          ..add(RPKLwM2MBootstrapServerCredential.serializer)
          ..add(RateLimitsNotificationRuleTriggerConfig.serializer)
          ..add(RateLimitsRecipientsConfig.serializer)
          ..add(RawDataEventFilter.serializer)
          ..add(ReadTsKvQueryResult.serializer)
          ..add(ReferencedEntityKey.serializer)
          ..add(RefreshTokenRequest.serializer)
          ..add(
            RelatedEntitiesAggregationCalculatedFieldConfiguration.serializer,
          )
          ..add(RelationEntityTypeFilter.serializer)
          ..add(RelationPathLevel.serializer)
          ..add(RelationPathQueryDynamicSourceConfiguration.serializer)
          ..add(RelationTypeGroup.serializer)
          ..add(RelationsQueryFilter.serializer)
          ..add(RelationsSearchParameters.serializer)
          ..add(RepeatingAlarmCondition.serializer)
          ..add(Report.serializer)
          ..add(ReportBarChartSettings.serializer)
          ..add(ReportBarChartWithLabelsSettings.serializer)
          ..add(ReportComponentSubType.serializer)
          ..add(ReportComponentType.serializer)
          ..add(ReportDoughnutChartSettings.serializer)
          ..add(ReportId.serializer)
          ..add(ReportInfo.serializer)
          ..add(ReportJobConfiguration.serializer)
          ..add(ReportJobResult.serializer)
          ..add(ReportPieChartSettings.serializer)
          ..add(ReportRangeChartSettings.serializer)
          ..add(ReportRequest.serializer)
          ..add(ReportTaskResult.serializer)
          ..add(ReportTemplate.serializer)
          ..add(ReportTemplateExportData.serializer)
          ..add(ReportTemplateId.serializer)
          ..add(ReportTemplateInfo.serializer)
          ..add(ReportTemplateType.serializer)
          ..add(RepositoryAuthMethod.serializer)
          ..add(RepositorySettings.serializer)
          ..add(RepositorySettingsInfo.serializer)
          ..add(ResetPasswordEmailRequest.serializer)
          ..add(ResetPasswordRequest.serializer)
          ..add(Resource.serializer)
          ..add(ResourceExportData.serializer)
          ..add(ResourceShortageRecipientsConfig.serializer)
          ..add(ResourceSubType.serializer)
          ..add(ResourceType.serializer)
          ..add(ResourcesShortageNotificationRuleTriggerConfig.serializer)
          ..add(RichTextComponent.serializer)
          ..add(Role.serializer)
          ..add(RoleExportData.serializer)
          ..add(RoleId.serializer)
          ..add(RoleType.serializer)
          ..add(RollBackStep.serializer)
          ..add(RollBackStepState.serializer)
          ..add(Rpc.serializer)
          ..add(RpcId.serializer)
          ..add(RpcStatus.serializer)
          ..add(RuleChain.serializer)
          ..add(RuleChainConnectionInfo.serializer)
          ..add(RuleChainData.serializer)
          ..add(RuleChainDebugEventFilter.serializer)
          ..add(RuleChainDebugEventFilterIsErrorEnum.serializer)
          ..add(RuleChainExportData.serializer)
          ..add(RuleChainId.serializer)
          ..add(RuleChainImportResult.serializer)
          ..add(RuleChainMetaData.serializer)
          ..add(RuleChainNote.serializer)
          ..add(RuleChainOutputLabelsUsage.serializer)
          ..add(RuleChainType.serializer)
          ..add(
            RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig
                .serializer,
          )
          ..add(RuleEngineComponentLifecycleEventRecipientsConfig.serializer)
          ..add(RuleNode.serializer)
          ..add(RuleNodeDebugEventFilter.serializer)
          ..add(RuleNodeDebugEventFilterEntityTypeEnum.serializer)
          ..add(RuleNodeDebugEventFilterIsErrorEnum.serializer)
          ..add(RuleNodeDebugEventFilterMsgDirectionTypeEnum.serializer)
          ..add(RuleNodeId.serializer)
          ..add(RunJobStep.serializer)
          ..add(RunJobStepState.serializer)
          ..add(SaveDeviceWithCredentialsRequest.serializer)
          ..add(SaveOtaPackageInfoRequest.serializer)
          ..add(ScheduledReportInfo.serializer)
          ..add(SchedulerEvent.serializer)
          ..add(SchedulerEventExportData.serializer)
          ..add(SchedulerEventFilter.serializer)
          ..add(SchedulerEventId.serializer)
          ..add(SchedulerEventInfo.serializer)
          ..add(SchedulerEventWithCustomerInfo.serializer)
          ..add(ScriptCalculatedFieldConfiguration.serializer)
          ..add(ScriptLanguage.serializer)
          ..add(Secret.serializer)
          ..add(SecretId.serializer)
          ..add(SecretInfo.serializer)
          ..add(SecretType.serializer)
          ..add(SecuritySettings.serializer)
          ..add(SelfRegistrationType.serializer)
          ..add(SetupInfo.serializer)
          ..add(ShareGroupRequest.serializer)
          ..add(SharedAttributesSettingSnmpCommunicationConfig.serializer)
          ..add(ShortCustomerInfo.serializer)
          ..add(ShortEntityView.serializer)
          ..add(SignUpField.serializer)
          ..add(SignUpFieldId.serializer)
          ..add(SignUpRequest.serializer)
          ..add(SignUpResult.serializer)
          ..add(SignUpSelfRegistrationParams.serializer)
          ..add(SimpleAlarmCondition.serializer)
          ..add(SimpleAlarmConditionExpression.serializer)
          ..add(SimpleCalculatedFieldConfiguration.serializer)
          ..add(SimpleEntity.serializer)
          ..add(SimpleValueSourceConfig.serializer)
          ..add(SingleEntityFilter.serializer)
          ..add(SingleEntityVersionCreateRequest.serializer)
          ..add(SingleEntityVersionLoadRequest.serializer)
          ..add(SkipReason.serializer)
          ..add(SkippedApp.serializer)
          ..add(SlackConversation.serializer)
          ..add(SlackConversationType.serializer)
          ..add(SlackDeliveryMethodNotificationTemplate.serializer)
          ..add(SlackNotificationDeliveryMethodConfig.serializer)
          ..add(SlackNotificationTargetConfig.serializer)
          ..add(SmppBindType.serializer)
          ..add(SmppSmsProviderConfiguration.serializer)
          ..add(SmppSmsProviderConfigurationProtocolVersionEnum.serializer)
          ..add(SmsDeliveryMethodNotificationTemplate.serializer)
          ..add(SmsTwoFaAccountConfig.serializer)
          ..add(SmsTwoFaProviderConfig.serializer)
          ..add(SnmpCommunicationSpec.serializer)
          ..add(SnmpDeviceProfileTransportConfiguration.serializer)
          ..add(SnmpDeviceTransportConfiguration.serializer)
          ..add(SnmpMapping.serializer)
          ..add(SnmpProtocolVersion.serializer)
          ..add(SolutionData.serializer)
          ..add(SolutionExportRequest.serializer)
          ..add(SolutionExportResponse.serializer)
          ..add(SolutionImportResult.serializer)
          ..add(SolutionStep.serializer)
          ..add(SolutionValidationResult.serializer)
          ..add(SpecificTimeSchedule.serializer)
          ..add(SplitViewComponent.serializer)
          ..add(StarredDashboardInfo.serializer)
          ..add(StateEntityFilter.serializer)
          ..add(StateEntityOwnerFilter.serializer)
          ..add(StatisticsEventFilter.serializer)
          ..add(StepFieldAgentAppEventId.serializer)
          ..add(StepFieldBoolean.serializer)
          ..add(StepFieldInteger.serializer)
          ..add(StepFieldListString.serializer)
          ..add(StepFieldString.serializer)
          ..add(StoreInfo.serializer)
          ..add(StringFilterPredicate.serializer)
          ..add(StringOperation.serializer)
          ..add(SubReportComponent.serializer)
          ..add(SubmitStrategy.serializer)
          ..add(SubmitStrategyType.serializer)
          ..add(SubscriptionEntry.serializer)
          ..add(SubscriptionErrorCode.serializer)
          ..add(SubscriptionInfo.serializer)
          ..add(Success.serializer)
          ..add(SyncStrategy.serializer)
          ..add(SystemAdministratorsFilter.serializer)
          ..add(SystemInfo.serializer)
          ..add(SystemInfoData.serializer)
          ..add(SystemSetupRequest.serializer)
          ..add(SystemSetupState.serializer)
          ..add(TableSortDirection.serializer)
          ..add(TableSortOrder.serializer)
          ..add(TaskProcessingFailureNotificationRuleTriggerConfig.serializer)
          ..add(TaskProcessingFailureRecipientsConfig.serializer)
          ..add(TbChatRequest.serializer)
          ..add(TbImageDeleteResult.serializer)
          ..add(TbReportFormat.serializer)
          ..add(TbResource.serializer)
          ..add(TbResourceDeleteResult.serializer)
          ..add(TbResourceExportData.serializer)
          ..add(TbResourceId.serializer)
          ..add(TbResourceInfo.serializer)
          ..add(TbSecretDeleteResult.serializer)
          ..add(TbTextContent.serializer)
          ..add(TbUserMessage.serializer)
          ..add(TbelAlarmConditionExpression.serializer)
          ..add(TelemetryEntityView.serializer)
          ..add(TelemetryMappingConfiguration.serializer)
          ..add(TelemetryObserveStrategy.serializer)
          ..add(TelemetryQueryingSnmpCommunicationConfig.serializer)
          ..add(Tenant.serializer)
          ..add(TenantAdministratorsFilter.serializer)
          ..add(TenantId.serializer)
          ..add(TenantInfo.serializer)
          ..add(TenantNameStrategyType.serializer)
          ..add(TenantProfile.serializer)
          ..add(TenantProfileData.serializer)
          ..add(TenantProfileId.serializer)
          ..add(TenantProfileQueueConfiguration.serializer)
          ..add(TestSmsRequest.serializer)
          ..add(TextAlignment.serializer)
          ..add(ThingsboardCredentialsExpiredResponse.serializer)
          ..add(ThingsboardErrorCode.serializer)
          ..add(ThingsboardErrorResponse.serializer)
          ..add(ThresholdLabelPosition.serializer)
          ..add(TimeSeriesChartBarWidth.serializer)
          ..add(TimeSeriesChartBarWidthSettings.serializer)
          ..add(TimeSeriesChartGridSettings.serializer)
          ..add(TimeSeriesChartKeySettings.serializer)
          ..add(TimeSeriesChartNoAggregationBarWidthSettings.serializer)
          ..add(TimeSeriesChartNoAggregationBarWidthStrategy.serializer)
          ..add(TimeSeriesChartSeriesType.serializer)
          ..add(TimeSeriesChartStateSettings.serializer)
          ..add(TimeSeriesChartStateSourceType.serializer)
          ..add(TimeSeriesChartThreshold.serializer)
          ..add(TimeSeriesChartXAxisSettings.serializer)
          ..add(TimeSeriesChartYAxisSettings.serializer)
          ..add(TimeSeriesImmediateOutputStrategy.serializer)
          ..add(TimeSeriesOutput.serializer)
          ..add(TimeSeriesRuleChainOutputStrategy.serializer)
          ..add(TimeUnit.serializer)
          ..add(TimeWindowConfiguration.serializer)
          ..add(TimeseriesChartComponent.serializer)
          ..add(TimeseriesTableComponent.serializer)
          ..add(ToCoreEdqsRequest.serializer)
          ..add(ToDeviceRpcRequestSnmpCommunicationConfig.serializer)
          ..add(ToServerRpcRequestSnmpCommunicationConfig.serializer)
          ..add(Token.serializer)
          ..add(TotpTwoFaAccountConfig.serializer)
          ..add(TotpTwoFaProviderConfig.serializer)
          ..add(TranslationInfo.serializer)
          ..add(TrendzConfiguration.serializer)
          ..add(TrendzHealthcheckResult.serializer)
          ..add(TrendzSummary.serializer)
          ..add(TrendzSynchronizationResult.serializer)
          ..add(TrendzSynchronizationResultType.serializer)
          ..add(TrendzSynchronizationStatus.serializer)
          ..add(TrendzUsage.serializer)
          ..add(TrendzViewConfig.serializer)
          ..add(TrendzViewConfigLite.serializer)
          ..add(TsData.serializer)
          ..add(TsKvEntry.serializer)
          ..add(TsValue.serializer)
          ..add(TwilioSmsProviderConfiguration.serializer)
          ..add(TwoFaAccountConfigUpdateRequest.serializer)
          ..add(TwoFaProviderInfo.serializer)
          ..add(TwoFaProviderType.serializer)
          ..add(UniquifyStrategy.serializer)
          ..add(UpdateMessage.serializer)
          ..add(UsageInfo.serializer)
          ..add(User.serializer)
          ..add(UserActivationLink.serializer)
          ..add(UserDashboardsInfo.serializer)
          ..add(UserEmailInfo.serializer)
          ..add(UserExportData.serializer)
          ..add(UserGroupListFilter.serializer)
          ..add(UserId.serializer)
          ..add(UserInfo.serializer)
          ..add(UserListFilter.serializer)
          ..add(UserMobileInfo.serializer)
          ..add(UserNotificationSettings.serializer)
          ..add(UserPasswordPolicy.serializer)
          ..add(UserRoleFilter.serializer)
          ..add(V2CaptchaParams.serializer)
          ..add(V3CaptchaParams.serializer)
          ..add(ValueSourceType.serializer)
          ..add(Vendor.serializer)
          ..add(VersionCreateConfig.serializer)
          ..add(VersionCreateRequestType.serializer)
          ..add(VersionCreationResult.serializer)
          ..add(VersionLoadConfig.serializer)
          ..add(VersionLoadRequestType.serializer)
          ..add(VersionLoadResult.serializer)
          ..add(VersionedEntityInfo.serializer)
          ..add(VerticalAlignment.serializer)
          ..add(Watermark.serializer)
          ..add(WebDeliveryMethodNotificationTemplate.serializer)
          ..add(WebSelfRegistrationParams.serializer)
          ..add(WebViewPage.serializer)
          ..add(WeekInterval.serializer)
          ..add(WeekSunSatInterval.serializer)
          ..add(WhiteLabeling.serializer)
          ..add(WhiteLabelingParams.serializer)
          ..add(WhiteLabelingType.serializer)
          ..add(WidgetBundleInfo.serializer)
          ..add(WidgetType.serializer)
          ..add(WidgetTypeDetails.serializer)
          ..add(WidgetTypeExportData.serializer)
          ..add(WidgetTypeId.serializer)
          ..add(WidgetTypeInfo.serializer)
          ..add(WidgetsBundle.serializer)
          ..add(WidgetsBundleExportData.serializer)
          ..add(WidgetsBundleId.serializer)
          ..add(X509CertificateChainProvisionConfiguration.serializer)
          ..add(X509LwM2MBootstrapServerCredential.serializer)
          ..add(YearInterval.serializer)
          ..add(ZoneGroupConfiguration.serializer)
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Agent)]),
            () => ListBuilder<Agent>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AgentAppArgument)]),
            () => ListBuilder<AgentAppArgument>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AgentAppArgument)]),
            () => ListBuilder<AgentAppArgument>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AgentAppEvent)]),
            () => ListBuilder<AgentAppEvent>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(AgentAppEventInfo),
            ]),
            () => ListBuilder<AgentAppEventInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AgentAppProfile)]),
            () => ListBuilder<AgentAppProfile>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(AgentAppTemplateStartStepsInner),
            ]),
            () => ListBuilder<AgentAppTemplateStartStepsInner>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(AgentAppTemplateStartStepsInner),
            ]),
            () => ListBuilder<AgentAppTemplateStartStepsInner>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(AgentAppTemplateStartStepsInner),
            ]),
            () => ListBuilder<AgentAppTemplateStartStepsInner>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(AgentAppTemplateStartStepsInner),
            ]),
            () => ListBuilder<AgentAppTemplateStartStepsInner>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(AgentAppTemplateStartStepsInner),
            ]),
            () => ListBuilder<AgentAppTemplateStartStepsInner>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AgentAppUnit)]),
            () => ListBuilder<AgentAppUnit>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(AgentApplicationInfo),
            ]),
            () => ListBuilder<AgentApplicationInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AgentBulkAction)]),
            () => ListBuilder<AgentBulkAction>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AgentInfo)]),
            () => ListBuilder<AgentInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AgentProfile)]),
            () => ListBuilder<AgentProfile>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AgentProfileInfo)]),
            () => ListBuilder<AgentProfileInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AiModel)]),
            () => ListBuilder<AiModel>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AlarmCommentInfo)]),
            () => ListBuilder<AlarmCommentInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(AlarmConditionFilter),
            ]),
            () => ListBuilder<AlarmConditionFilter>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AlarmData)]),
            () => ListBuilder<AlarmData>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AlarmInfo)]),
            () => ListBuilder<AlarmInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(AlarmRuleDefinition),
            ]),
            () => ListBuilder<AlarmRuleDefinition>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(AlarmRuleDefinitionInfo),
            ]),
            () => ListBuilder<AlarmRuleDefinitionInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(AlarmRuleKeyFilterPredicate),
            ]),
            () => ListBuilder<AlarmRuleKeyFilterPredicate>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(AlarmRuleKeyFilterPredicate),
            ]),
            () => ListBuilder<AlarmRuleKeyFilterPredicate>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ApiKeyInfo)]),
            () => ListBuilder<ApiKeyInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Asset)]),
            () => ListBuilder<Asset>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AssetInfo)]),
            () => ListBuilder<AssetInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AssetProfile)]),
            () => ListBuilder<AssetProfile>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AssetProfileInfo)]),
            () => ListBuilder<AssetProfileInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AuditLog)]),
            () => ListBuilder<AuditLog>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(BlobEntityWithCustomerInfo),
            ]),
            () => ListBuilder<BlobEntityWithCustomerInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(CalculatedFieldInfo),
            ]),
            () => ListBuilder<CalculatedFieldInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ColorRange)]),
            () => ListBuilder<ColorRange>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(TimeSeriesChartThreshold),
            ]),
            () => ListBuilder<TimeSeriesChartThreshold>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(TimeSeriesChartYAxisSettings),
            ]),
            () => MapBuilder<String, TimeSeriesChartYAxisSettings>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(TimeSeriesChartStateSettings),
            ]),
            () => ListBuilder<TimeSeriesChartStateSettings>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(TimeSeriesChartYAxisSettings),
            ]),
            () => MapBuilder<String, TimeSeriesChartYAxisSettings>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ColumnMapping)]),
            () => ListBuilder<ColumnMapping>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ContactBasedObject),
            ]),
            () => ListBuilder<ContactBasedObject>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Converter)]),
            () => ListBuilder<Converter>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CustomMenuInfo)]),
            () => ListBuilder<CustomMenuInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CustomMenuItem)]),
            () => ListBuilder<CustomMenuItem>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(CustomTimeScheduleItem),
            ]),
            () => ListBuilder<CustomTimeScheduleItem>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Customer)]),
            () => ListBuilder<Customer>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CustomerInfo)]),
            () => ListBuilder<CustomerInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DashboardInfo)]),
            () => ListBuilder<DashboardInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DataKey)]),
            () => ListBuilder<DataKey>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DataKey)]),
            () => ListBuilder<DataKey>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DataSource)]),
            () => ListBuilder<DataSource>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DataSource)]),
            () => ListBuilder<DataSource>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DataSource)]),
            () => ListBuilder<DataSource>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DataSource)]),
            () => ListBuilder<DataSource>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DataSource)]),
            () => ListBuilder<DataSource>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DataSource)]),
            () => ListBuilder<DataSource>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DataSource)]),
            () => ListBuilder<DataSource>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DataSource)]),
            () => ListBuilder<DataSource>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DataSource)]),
            () => ListBuilder<DataSource>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DefaultMenuItem)]),
            () => ListBuilder<DefaultMenuItem>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DefaultMenuItem)]),
            () => ListBuilder<DefaultMenuItem>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Device)]),
            () => ListBuilder<Device>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(DeviceGroupOtaPackage),
            ]),
            () => ListBuilder<DeviceGroupOtaPackage>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(GroupPermission)]),
            () => ListBuilder<GroupPermission>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DeviceInfo)]),
            () => ListBuilder<DeviceInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DeviceProfile)]),
            () => ListBuilder<DeviceProfile>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(DeviceProfileInfo),
            ]),
            () => ListBuilder<DeviceProfileInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(DomainInfo)]),
            () => ListBuilder<DomainInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Edge)]),
            () => ListBuilder<Edge>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EdgeEvent)]),
            () => ListBuilder<EdgeEvent>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EdgeInfo)]),
            () => ListBuilder<EdgeInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityAlias)]),
            () => ListBuilder<EntityAlias>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Filter)]),
            () => ListBuilder<Filter>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ReportComponent)]),
            () => ListBuilder<ReportComponent>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityAlias)]),
            () => ListBuilder<EntityAlias>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Filter)]),
            () => ListBuilder<Filter>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ReportComponent)]),
            () => ListBuilder<ReportComponent>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityAlias)]),
            () => ListBuilder<EntityAlias>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Filter)]),
            () => ListBuilder<Filter>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ReportComponent)]),
            () => ListBuilder<ReportComponent>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityData)]),
            () => ListBuilder<EntityData>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityGroupId)]),
            () => ListBuilder<EntityGroupId>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityGroupInfo)]),
            () => ListBuilder<EntityGroupInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityInfo)]),
            () => ListBuilder<EntityInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityInfo)]),
            () => ListBuilder<EntityInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityInfo)]),
            () => ListBuilder<EntityInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityInfo)]),
            () => ListBuilder<EntityInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityInfo)]),
            () => ListBuilder<EntityInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityInfo)]),
            () => ListBuilder<EntityInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityInfo)]),
            () => ListBuilder<EntityInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityInfo)]),
            () => ListBuilder<EntityInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityInfo)]),
            () => ListBuilder<EntityInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntitySubtype)]),
            () => ListBuilder<EntitySubtype>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityType)]),
            () => ListBuilder<EntityType>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(EntityTypeLoadResult),
            ]),
            () => ListBuilder<EntityTypeLoadResult>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityVersion)]),
            () => ListBuilder<EntityVersion>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityView)]),
            () => ListBuilder<EntityView>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityViewInfo)]),
            () => ListBuilder<EntityViewInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ErrorComponentAllOfExceptionCauseStackTrace),
            ]),
            () => ListBuilder<ErrorComponentAllOfExceptionCauseStackTrace>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ErrorComponentAllOfExceptionCauseStackTrace),
            ]),
            () => ListBuilder<ErrorComponentAllOfExceptionCauseStackTrace>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ErrorComponentAllOfExceptionCause),
            ]),
            () => ListBuilder<ErrorComponentAllOfExceptionCause>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EventInfo)]),
            () => ListBuilder<EventInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(GroupPermission)]),
            () => ListBuilder<GroupPermission>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SignUpField)]),
            () => ListBuilder<SignUpField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(GroupPermission)]),
            () => ListBuilder<GroupPermission>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SignUpField)]),
            () => ListBuilder<SignUpField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(GroupPermission)]),
            () => ListBuilder<GroupPermission>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SignUpField)]),
            () => ListBuilder<SignUpField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Integration)]),
            () => ListBuilder<Integration>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(IntegrationInfo)]),
            () => ListBuilder<IntegrationInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Job)]),
            () => ListBuilder<Job>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(KeyFilter)]),
            () => ListBuilder<KeyFilter>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(KeyFilter)]),
            () => ListBuilder<KeyFilter>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(KeyFilter)]),
            () => ListBuilder<KeyFilter>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityKey)]),
            () => ListBuilder<EntityKey>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityKey)]),
            () => ListBuilder<EntityKey>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(KeyFilter)]),
            () => ListBuilder<KeyFilter>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityKey)]),
            () => ListBuilder<EntityKey>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityKey)]),
            () => ListBuilder<EntityKey>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityKey)]),
            () => ListBuilder<EntityKey>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(KeyFilter)]),
            () => ListBuilder<KeyFilter>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(AlarmSearchStatus),
            ]),
            () => ListBuilder<AlarmSearchStatus>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AlarmSeverity)]),
            () => ListBuilder<AlarmSeverity>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(KeyFilterPredicate),
            ]),
            () => ListBuilder<KeyFilterPredicate>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(LastVisitedDashboardInfo),
            ]),
            () => ListBuilder<LastVisitedDashboardInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(StarredDashboardInfo),
            ]),
            () => ListBuilder<StarredDashboardInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(LwM2MBootstrapServerCredential),
            ]),
            () => ListBuilder<LwM2MBootstrapServerCredential>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(LwM2mInstance)]),
            () => ListBuilder<LwM2mInstance>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(LwM2mResourceObserve),
            ]),
            () => ListBuilder<LwM2mResourceObserve>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MenuItem)]),
            () => ListBuilder<MenuItem>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MobileApp)]),
            () => ListBuilder<MobileApp>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(MobileAppBundleInfo),
            ]),
            () => ListBuilder<MobileAppBundleInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MobilePage)]),
            () => ListBuilder<MobilePage>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Notification)]),
            () => ListBuilder<Notification>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(NotificationDeliveryMethod),
            ]),
            () => ListBuilder<NotificationDeliveryMethod>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(NotificationRequest),
            ]),
            () => ListBuilder<NotificationRequest>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(TaskResult)]),
            () => ListBuilder<TaskResult>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(NotificationRequestInfo),
            ]),
            () => ListBuilder<NotificationRequestInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(NotificationRuleInfo),
            ]),
            () => ListBuilder<NotificationRuleInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(NotificationTarget),
            ]),
            () => ListBuilder<NotificationTarget>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(NotificationTemplate),
            ]),
            () => ListBuilder<NotificationTemplate>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(OAuth2ClientInfo)]),
            () => ListBuilder<OAuth2ClientInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(OAuth2ClientInfo)]),
            () => ListBuilder<OAuth2ClientInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(OAuth2ClientInfo)]),
            () => ListBuilder<OAuth2ClientInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(OAuth2ClientLoginInfo),
            ]),
            () => ListBuilder<OAuth2ClientLoginInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(OtaPackageInfo)]),
            () => ListBuilder<OtaPackageInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(PlatformType)]),
            () => ListBuilder<PlatformType>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Queue)]),
            () => ListBuilder<Queue>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(QueueStats)]),
            () => ListBuilder<QueueStats>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(RelationEntityTypeFilter),
            ]),
            () => ListBuilder<RelationEntityTypeFilter>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(RelationPathLevel),
            ]),
            () => ListBuilder<RelationPathLevel>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Report)]),
            () => ListBuilder<Report>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ReportComponent)]),
            () => ListBuilder<ReportComponent>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ReportId)]),
            () => ListBuilder<ReportId>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ReportInfo)]),
            () => ListBuilder<ReportInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ReportTemplateInfo),
            ]),
            () => ListBuilder<ReportTemplateInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Role)]),
            () => ListBuilder<Role>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(RoleId)]),
            () => ListBuilder<RoleId>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(RuleChain)]),
            () => ListBuilder<RuleChain>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(RuleChain)]),
            () => ListBuilder<RuleChain>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(RuleChainMetaData),
            ]),
            () => ListBuilder<RuleChainMetaData>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(RuleNode)]),
            () => ListBuilder<RuleNode>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(NodeConnectionInfo),
            ]),
            () => ListBuilder<NodeConnectionInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(RuleChainConnectionInfo),
            ]),
            () => ListBuilder<RuleChainConnectionInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(RuleChainNote)]),
            () => ListBuilder<RuleChainNote>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ScheduledReportInfo),
            ]),
            () => ListBuilder<ScheduledReportInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(SchedulerEventInfo),
            ]),
            () => ListBuilder<SchedulerEventInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(SchedulerEventWithCustomerInfo),
            ]),
            () => ListBuilder<SchedulerEventWithCustomerInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SecretInfo)]),
            () => ListBuilder<SecretInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ShortEntityView)]),
            () => ListBuilder<ShortEntityView>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SignUpField)]),
            () => ListBuilder<SignUpField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(SnmpCommunicationConfig),
            ]),
            () => ListBuilder<SnmpCommunicationConfig>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SnmpMapping)]),
            () => ListBuilder<SnmpMapping>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SnmpMapping)]),
            () => ListBuilder<SnmpMapping>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SnmpMapping)]),
            () => ListBuilder<SnmpMapping>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SnmpMapping)]),
            () => ListBuilder<SnmpMapping>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SnmpMapping)]),
            () => ListBuilder<SnmpMapping>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(AlarmSearchStatus),
            ]),
            () => ListBuilder<AlarmSearchStatus>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AlarmSeverity)]),
            () => ListBuilder<AlarmSeverity>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(AlarmSearchStatus),
            ]),
            () => ListBuilder<AlarmSearchStatus>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(AlarmSeverity)]),
            () => ListBuilder<AlarmSeverity>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(NotificationDeliveryMethod),
            ]),
            () => ListBuilder<NotificationDeliveryMethod>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(PlatformType)]),
            () => ListBuilder<PlatformType>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ResourceExportData),
            ]),
            () => ListBuilder<ResourceExportData>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(TaskResult)]),
            () => ListBuilder<TaskResult>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(WidgetBundleInfo)]),
            () => ListBuilder<WidgetBundleInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType.nullable(JsonObject),
            ]),
            () => ListBuilder<JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityRelation)]),
            () => ListBuilder<EntityRelation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(AttributeExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<AttributeExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CalculatedField)]),
            () => ListBuilder<CalculatedField>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(TsValue),
              ]),
            ]),
            () => MapBuilder<String, BuiltMap<String, TsValue>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SystemInfoData)]),
            () => ListBuilder<SystemInfoData>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(TaskResult)]),
            () => ListBuilder<TaskResult>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(TaskResult)]),
            () => ListBuilder<TaskResult>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(TaskResult)]),
            () => ListBuilder<TaskResult>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(TaskResult)]),
            () => ListBuilder<TaskResult>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(TaskResult)]),
            () => ListBuilder<TaskResult>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(TaskResult)]),
            () => ListBuilder<TaskResult>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(TbContent)]),
            () => ListBuilder<TbContent>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(TbResourceInfo)]),
            () => ListBuilder<TbResourceInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Tenant)]),
            () => ListBuilder<Tenant>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(TenantInfo)]),
            () => ListBuilder<TenantInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(TenantProfile)]),
            () => ListBuilder<TenantProfile>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(TenantProfileQueueConfiguration),
            ]),
            () => ListBuilder<TenantProfileQueueConfiguration>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(TimeSeriesChartThreshold),
            ]),
            () => ListBuilder<TimeSeriesChartThreshold>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(TimeSeriesChartYAxisSettings),
            ]),
            () => MapBuilder<String, TimeSeriesChartYAxisSettings>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(TimeSeriesChartStateSettings),
            ]),
            () => ListBuilder<TimeSeriesChartStateSettings>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(TimeSeriesChartYAxisSettings),
            ]),
            () => MapBuilder<String, TimeSeriesChartYAxisSettings>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(TimeSeriesChartThreshold),
            ]),
            () => ListBuilder<TimeSeriesChartThreshold>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(TimeSeriesChartYAxisSettings),
            ]),
            () => MapBuilder<String, TimeSeriesChartYAxisSettings>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(TimeSeriesChartStateSettings),
            ]),
            () => ListBuilder<TimeSeriesChartStateSettings>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(TimeSeriesChartYAxisSettings),
            ]),
            () => MapBuilder<String, TimeSeriesChartYAxisSettings>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(TrendzViewConfigLite),
            ]),
            () => ListBuilder<TrendzViewConfigLite>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(TsKvEntry)]),
            () => ListBuilder<TsKvEntry>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(TwoFaProviderConfig),
            ]),
            () => ListBuilder<TwoFaProviderConfig>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(User)]),
            () => ListBuilder<User>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(UserEmailInfo)]),
            () => ListBuilder<UserEmailInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(UserInfo)]),
            () => ListBuilder<UserInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(WhiteLabeling)]),
            () => ListBuilder<WhiteLabeling>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [const FullType(HasIdObject)]),
            ]),
            () => MapBuilder<String, BuiltList<HasIdObject>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(WidgetTypeInfo)]),
            () => ListBuilder<WidgetTypeInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(WidgetsBundle)]),
            () => ListBuilder<WidgetsBundle>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(int)]),
            () => ListBuilder<int>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType.nullable(JsonObject),
            ]),
            () => ListBuilder<JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType.nullable(JsonObject),
            ]),
            () => ListBuilder<JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType.nullable(JsonObject),
            ]),
            () => ListBuilder<JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType.nullable(JsonObject),
            ]),
            () => ListBuilder<JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType.nullable(JsonObject),
            ]),
            () => ListBuilder<JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType.nullable(JsonObject),
            ]),
            () => ListBuilder<JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType.nullable(JsonObject),
            ]),
            () => ListBuilder<JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(AgentAppEventStepStatesValue),
            ]),
            () => MapBuilder<String, AgentAppEventStepStatesValue>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(AgentAppEventStepStatesValue),
            ]),
            () => MapBuilder<String, AgentAppEventStepStatesValue>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(AgentAppEventStepStatesValue),
            ]),
            () => MapBuilder<String, AgentAppEventStepStatesValue>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(AgentAppEventStepStatesValue),
            ]),
            () => MapBuilder<String, AgentAppEventStepStatesValue>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(AlarmRule),
            ]),
            () => MapBuilder<String, AlarmRule>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(Argument),
            ]),
            () => MapBuilder<String, Argument>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(Argument),
            ]),
            () => MapBuilder<String, Argument>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(Argument),
            ]),
            () => MapBuilder<String, Argument>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(Argument),
            ]),
            () => MapBuilder<String, Argument>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(Argument),
            ]),
            () => MapBuilder<String, Argument>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(AggMetric),
            ]),
            () => MapBuilder<String, AggMetric>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(Argument),
            ]),
            () => MapBuilder<String, Argument>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(AggMetric),
            ]),
            () => MapBuilder<String, AggMetric>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [
                const FullType(EntityExportData),
              ]),
            ]),
            () => MapBuilder<String, BuiltList<EntityExportData>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [const FullType(EntityInfo)]),
            ]),
            () => MapBuilder<String, BuiltList<EntityInfo>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [const FullType(EntityInfo)]),
            ]),
            () => MapBuilder<String, BuiltList<EntityInfo>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [const FullType(String)]),
            ]),
            () => MapBuilder<String, BuiltList<String>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(TsValue),
              ]),
            ]),
            () => MapBuilder<String, BuiltMap<String, TsValue>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [const FullType(TsValue)]),
            ]),
            () => MapBuilder<String, BuiltList<TsValue>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(ComparisonTsValue),
            ]),
            () => MapBuilder<String, ComparisonTsValue>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltSet, const [const FullType(Operation)]),
            ]),
            () => MapBuilder<String, BuiltSet<Operation>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(MergedGroupPermissionInfo),
            ]),
            () => MapBuilder<String, MergedGroupPermissionInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(MergedGroupTypePermissionInfo),
            ]),
            () => MapBuilder<String, MergedGroupTypePermissionInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(MergedGroupTypePermissionInfo),
            ]),
            () => MapBuilder<String, MergedGroupTypePermissionInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(MergedGroupTypePermissionInfo),
            ]),
            () => MapBuilder<String, MergedGroupTypePermissionInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(MergedGroupTypePermissionInfo),
            ]),
            () => MapBuilder<String, MergedGroupTypePermissionInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltSet, const [const FullType(Operation)]),
            ]),
            () => MapBuilder<String, BuiltSet<Operation>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(Operation)]),
            () => SetBuilder<Operation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(Operation)]),
            () => SetBuilder<Operation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(Operation)]),
            () => SetBuilder<Operation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(Resource)]),
            () => SetBuilder<Resource>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(DeliveryMethodNotificationTemplate),
            ]),
            () => MapBuilder<String, DeliveryMethodNotificationTemplate>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(DeliveryMethodNotificationTemplate),
            ]),
            () => MapBuilder<String, DeliveryMethodNotificationTemplate>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(int),
            ]),
            () => MapBuilder<String, int>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(EntityTypeVersionCreateConfig),
            ]),
            () => MapBuilder<String, EntityTypeVersionCreateConfig>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(EntityTypeVersionLoadConfig),
            ]),
            () => MapBuilder<String, EntityTypeVersionLoadConfig>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(NotificationDeliveryMethodConfig),
            ]),
            () => MapBuilder<String, NotificationDeliveryMethodConfig>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(NotificationPref),
            ]),
            () => MapBuilder<String, NotificationPref>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(ObjectAttributes),
            ]),
            () => MapBuilder<String, ObjectAttributes>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(TwoFaAccountConfig),
            ]),
            () => MapBuilder<String, TwoFaAccountConfig>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(ZoneGroupConfiguration),
            ]),
            () => MapBuilder<String, ZoneGroupConfiguration>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(bool),
            ]),
            () => MapBuilder<String, bool>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(int),
            ]),
            () => MapBuilder<String, int>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(int),
            ]),
            () => MapBuilder<String, int>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(int),
            ]),
            () => MapBuilder<String, int>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SkippedApp)]),
            () => ListBuilder<SkippedApp>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(int),
            ]),
            () => MapBuilder<String, int>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(int),
            ]),
            () => MapBuilder<String, int>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(String),
              ]),
            ]),
            () => MapBuilder<String, BuiltMap<String, String>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(int),
            ]),
            () => MapBuilder<String, int>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType.nullable(JsonObject),
            ]),
            () => MapBuilder<String, JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(Action)]),
            () => SetBuilder<Action>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(AlarmSeverity)]),
            () => SetBuilder<AlarmSeverity>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(AlarmSearchStatus)]),
            () => SetBuilder<AlarmSearchStatus>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(AlarmAction)]),
            () => SetBuilder<AlarmAction>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(AlarmSeverity)]),
            () => SetBuilder<AlarmSeverity>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(AlarmSearchStatus)]),
            () => SetBuilder<AlarmSearchStatus>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(AlarmSeverity)]),
            () => SetBuilder<AlarmSeverity>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(AlarmSearchStatus)]),
            () => SetBuilder<AlarmSearchStatus>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(ApiFeature)]),
            () => SetBuilder<ApiFeature>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [
              const FullType(ApiUsageStateValue),
            ]),
            () => SetBuilder<ApiUsageStateValue>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [
              const FullType(ComponentLifecycleEvent),
            ]),
            () => SetBuilder<ComponentLifecycleEvent>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [
              const FullType(ComponentLifecycleEvent),
            ]),
            () => SetBuilder<ComponentLifecycleEvent>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [
              const FullType(EdgeConnectivityEvent),
            ]),
            () => SetBuilder<EdgeConnectivityEvent>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(EntityId)]),
            () => SetBuilder<EntityId>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(EntityId)]),
            () => SetBuilder<EntityId>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(EntityId)]),
            () => SetBuilder<EntityId>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(EntityType)]),
            () => SetBuilder<EntityType>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(EntityType)]),
            () => SetBuilder<EntityType>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(EntityType)]),
            () => SetBuilder<EntityType>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(KeyInfo)]),
            () => ListBuilder<KeyInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [const FullType(KeyInfo)]),
            ]),
            () => MapBuilder<String, BuiltList<KeyInfo>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(EntityType)]),
            () => SetBuilder<EntityType>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(IntegrationType)]),
            () => SetBuilder<IntegrationType>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [
              const FullType(ComponentLifecycleEvent),
            ]),
            () => SetBuilder<ComponentLifecycleEvent>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(LimitedApi)]),
            () => SetBuilder<LimitedApi>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(ObjectType)]),
            () => SetBuilder<ObjectType>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(Operation)]),
            () => SetBuilder<Operation>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(ShortCustomerInfo)]),
            () => SetBuilder<ShortCustomerInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ResourceExportData),
            ]),
            () => ListBuilder<ResourceExportData>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(ShortCustomerInfo)]),
            () => SetBuilder<ShortCustomerInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ResourceExportData),
            ]),
            () => ListBuilder<ResourceExportData>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(ShortCustomerInfo)]),
            () => SetBuilder<ShortCustomerInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ResourceExportData),
            ]),
            () => ListBuilder<ResourceExportData>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(EntityInfo)]),
            () => ListBuilder<EntityInfo>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(RelationEntityTypeFilter),
            ]),
            () => ListBuilder<RelationEntityTypeFilter>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(DeviceEvent)]),
            () => SetBuilder<DeviceEvent>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(String)]),
            () => SetBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltSet, const [const FullType(int)]),
            () => SetBuilder<int>(),
          ))
        .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
