// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:thingsboard_client/src/api/admin_controller_api.dart';
import 'package:thingsboard_client/src/api/agent_app_profile_controller_api.dart';
import 'package:thingsboard_client/src/api/agent_app_template_controller_api.dart';
import 'package:thingsboard_client/src/api/agent_application_controller_api.dart';
import 'package:thingsboard_client/src/api/agent_bulk_action_controller_api.dart';
import 'package:thingsboard_client/src/api/agent_controller_api.dart';
import 'package:thingsboard_client/src/api/agent_profile_controller_api.dart';
import 'package:thingsboard_client/src/api/ai_chat_controller_api.dart';
import 'package:thingsboard_client/src/api/ai_device_dashboard_controller_api.dart';
import 'package:thingsboard_client/src/api/ai_model_controller_api.dart';
import 'package:thingsboard_client/src/api/ai_solution_controller_api.dart';
import 'package:thingsboard_client/src/api/ai_tool_controller_api.dart';
import 'package:thingsboard_client/src/api/alarm_comment_controller_api.dart';
import 'package:thingsboard_client/src/api/alarm_controller_api.dart';
import 'package:thingsboard_client/src/api/alarm_rule_controller_api.dart';
import 'package:thingsboard_client/src/api/api_key_controller_api.dart';
import 'package:thingsboard_client/src/api/asset_controller_api.dart';
import 'package:thingsboard_client/src/api/asset_profile_controller_api.dart';
import 'package:thingsboard_client/src/api/audit_log_controller_api.dart';
import 'package:thingsboard_client/src/api/auth_controller_api.dart';
import 'package:thingsboard_client/src/api/blob_entity_controller_api.dart';
import 'package:thingsboard_client/src/api/calculated_field_controller_api.dart';
import 'package:thingsboard_client/src/api/component_descriptor_controller_api.dart';
import 'package:thingsboard_client/src/api/converter_controller_api.dart';
import 'package:thingsboard_client/src/api/converter_library_controller_api.dart';
import 'package:thingsboard_client/src/api/custom_menu_controller_api.dart';
import 'package:thingsboard_client/src/api/custom_translation_controller_api.dart';
import 'package:thingsboard_client/src/api/customer_controller_api.dart';
import 'package:thingsboard_client/src/api/dashboard_controller_api.dart';
import 'package:thingsboard_client/src/api/dashboard_report_controller_api.dart';
import 'package:thingsboard_client/src/api/device_connectivity_controller_api.dart';
import 'package:thingsboard_client/src/api/device_controller_api.dart';
import 'package:thingsboard_client/src/api/device_group_ota_package_controller_api.dart';
import 'package:thingsboard_client/src/api/device_profile_controller_api.dart';
import 'package:thingsboard_client/src/api/domain_controller_api.dart';
import 'package:thingsboard_client/src/api/edge_controller_api.dart';
import 'package:thingsboard_client/src/api/edge_event_controller_api.dart';
import 'package:thingsboard_client/src/api/entities_version_control_controller_api.dart';
import 'package:thingsboard_client/src/api/entity_group_controller_api.dart';
import 'package:thingsboard_client/src/api/entity_query_controller_api.dart';
import 'package:thingsboard_client/src/api/entity_relation_controller_api.dart';
import 'package:thingsboard_client/src/api/entity_view_controller_api.dart';
import 'package:thingsboard_client/src/api/event_controller_api.dart';
import 'package:thingsboard_client/src/api/group_permission_controller_api.dart';
import 'package:thingsboard_client/src/api/image_controller_api.dart';
import 'package:thingsboard_client/src/api/integration_controller_api.dart';
import 'package:thingsboard_client/src/api/job_controller_api.dart';
import 'package:thingsboard_client/src/api/login_endpoint_api.dart';
import 'package:thingsboard_client/src/api/lwm2m_controller_api.dart';
import 'package:thingsboard_client/src/api/mail_config_template_controller_api.dart';
import 'package:thingsboard_client/src/api/mobile_app_bundle_controller_api.dart';
import 'package:thingsboard_client/src/api/mobile_app_controller_api.dart';
import 'package:thingsboard_client/src/api/notification_controller_api.dart';
import 'package:thingsboard_client/src/api/notification_rule_controller_api.dart';
import 'package:thingsboard_client/src/api/notification_target_controller_api.dart';
import 'package:thingsboard_client/src/api/notification_template_controller_api.dart';
import 'package:thingsboard_client/src/api/o_auth2_config_template_controller_api.dart';
import 'package:thingsboard_client/src/api/o_auth2_controller_api.dart';
import 'package:thingsboard_client/src/api/ota_package_controller_api.dart';
import 'package:thingsboard_client/src/api/owner_controller_api.dart';
import 'package:thingsboard_client/src/api/qr_code_settings_controller_api.dart';
import 'package:thingsboard_client/src/api/queue_controller_api.dart';
import 'package:thingsboard_client/src/api/queue_stats_controller_api.dart';
import 'package:thingsboard_client/src/api/report_controller_api.dart';
import 'package:thingsboard_client/src/api/report_template_controller_api.dart';
import 'package:thingsboard_client/src/api/role_controller_api.dart';
import 'package:thingsboard_client/src/api/rpc_v1_controller_api.dart';
import 'package:thingsboard_client/src/api/rpc_v2_controller_api.dart';
import 'package:thingsboard_client/src/api/rule_chain_controller_api.dart';
import 'package:thingsboard_client/src/api/rule_engine_controller_api.dart';
import 'package:thingsboard_client/src/api/scheduler_event_controller_api.dart';
import 'package:thingsboard_client/src/api/secret_controller_api.dart';
import 'package:thingsboard_client/src/api/self_registration_controller_api.dart';
import 'package:thingsboard_client/src/api/sign_up_controller_api.dart';
import 'package:thingsboard_client/src/api/solution_export_import_controller_api.dart';
import 'package:thingsboard_client/src/api/system_setup_controller_api.dart';
import 'package:thingsboard_client/src/api/tb_resource_controller_api.dart';
import 'package:thingsboard_client/src/api/telemetry_controller_api.dart';
import 'package:thingsboard_client/src/api/tenant_controller_api.dart';
import 'package:thingsboard_client/src/api/tenant_profile_controller_api.dart';
import 'package:thingsboard_client/src/api/translation_controller_api.dart';
import 'package:thingsboard_client/src/api/trendz_api_controller_api.dart';
import 'package:thingsboard_client/src/api/trendz_controller_api.dart';
import 'package:thingsboard_client/src/api/two_factor_auth_config_controller_api.dart';
import 'package:thingsboard_client/src/api/two_factor_auth_controller_api.dart';
import 'package:thingsboard_client/src/api/ui_settings_controller_api.dart';
import 'package:thingsboard_client/src/api/usage_info_controller_api.dart';
import 'package:thingsboard_client/src/api/user_controller_api.dart';
import 'package:thingsboard_client/src/api/user_permissions_controller_api.dart';
import 'package:thingsboard_client/src/api/white_labeling_controller_api.dart';
import 'package:thingsboard_client/src/api/widget_type_controller_api.dart';
import 'package:thingsboard_client/src/api/widgets_bundle_controller_api.dart';
import 'thingsboard_client_base.dart';
import 'storage/tb_storage.dart';

class ThingsboardClient extends ThingsboardClientBase {
  AdminControllerApi? _adminControllerApi;
  AgentAppProfileControllerApi? _agentAppProfileControllerApi;
  AgentAppTemplateControllerApi? _agentAppTemplateControllerApi;
  AgentApplicationControllerApi? _agentApplicationControllerApi;
  AgentBulkActionControllerApi? _agentBulkActionControllerApi;
  AgentControllerApi? _agentControllerApi;
  AgentProfileControllerApi? _agentProfileControllerApi;
  AiChatControllerApi? _aiChatControllerApi;
  AiDeviceDashboardControllerApi? _aiDeviceDashboardControllerApi;
  AiModelControllerApi? _aiModelControllerApi;
  AiSolutionControllerApi? _aiSolutionControllerApi;
  AiToolControllerApi? _aiToolControllerApi;
  AlarmCommentControllerApi? _alarmCommentControllerApi;
  AlarmControllerApi? _alarmControllerApi;
  AlarmRuleControllerApi? _alarmRuleControllerApi;
  ApiKeyControllerApi? _apiKeyControllerApi;
  AssetControllerApi? _assetControllerApi;
  AssetProfileControllerApi? _assetProfileControllerApi;
  AuditLogControllerApi? _auditLogControllerApi;
  AuthControllerApi? _authControllerApi;
  BlobEntityControllerApi? _blobEntityControllerApi;
  CalculatedFieldControllerApi? _calculatedFieldControllerApi;
  ComponentDescriptorControllerApi? _componentDescriptorControllerApi;
  ConverterControllerApi? _converterControllerApi;
  ConverterLibraryControllerApi? _converterLibraryControllerApi;
  CustomMenuControllerApi? _customMenuControllerApi;
  CustomTranslationControllerApi? _customTranslationControllerApi;
  CustomerControllerApi? _customerControllerApi;
  DashboardControllerApi? _dashboardControllerApi;
  DashboardReportControllerApi? _dashboardReportControllerApi;
  DeviceConnectivityControllerApi? _deviceConnectivityControllerApi;
  DeviceControllerApi? _deviceControllerApi;
  DeviceGroupOtaPackageControllerApi? _deviceGroupOtaPackageControllerApi;
  DeviceProfileControllerApi? _deviceProfileControllerApi;
  DomainControllerApi? _domainControllerApi;
  EdgeControllerApi? _edgeControllerApi;
  EdgeEventControllerApi? _edgeEventControllerApi;
  EntitiesVersionControlControllerApi? _entitiesVersionControlControllerApi;
  EntityGroupControllerApi? _entityGroupControllerApi;
  EntityQueryControllerApi? _entityQueryControllerApi;
  EntityRelationControllerApi? _entityRelationControllerApi;
  EntityViewControllerApi? _entityViewControllerApi;
  EventControllerApi? _eventControllerApi;
  GroupPermissionControllerApi? _groupPermissionControllerApi;
  ImageControllerApi? _imageControllerApi;
  IntegrationControllerApi? _integrationControllerApi;
  JobControllerApi? _jobControllerApi;
  LoginEndpointApi? _loginEndpointApi;
  Lwm2mControllerApi? _lwm2mControllerApi;
  MailConfigTemplateControllerApi? _mailConfigTemplateControllerApi;
  MobileAppBundleControllerApi? _mobileAppBundleControllerApi;
  MobileAppControllerApi? _mobileAppControllerApi;
  NotificationControllerApi? _notificationControllerApi;
  NotificationRuleControllerApi? _notificationRuleControllerApi;
  NotificationTargetControllerApi? _notificationTargetControllerApi;
  NotificationTemplateControllerApi? _notificationTemplateControllerApi;
  OAuth2ConfigTemplateControllerApi? _oAuth2ConfigTemplateControllerApi;
  OAuth2ControllerApi? _oAuth2ControllerApi;
  OtaPackageControllerApi? _otaPackageControllerApi;
  OwnerControllerApi? _ownerControllerApi;
  QrCodeSettingsControllerApi? _qrCodeSettingsControllerApi;
  QueueControllerApi? _queueControllerApi;
  QueueStatsControllerApi? _queueStatsControllerApi;
  ReportControllerApi? _reportControllerApi;
  ReportTemplateControllerApi? _reportTemplateControllerApi;
  RoleControllerApi? _roleControllerApi;
  RpcV1ControllerApi? _rpcV1ControllerApi;
  RpcV2ControllerApi? _rpcV2ControllerApi;
  RuleChainControllerApi? _ruleChainControllerApi;
  RuleEngineControllerApi? _ruleEngineControllerApi;
  SchedulerEventControllerApi? _schedulerEventControllerApi;
  SecretControllerApi? _secretControllerApi;
  SelfRegistrationControllerApi? _selfRegistrationControllerApi;
  SignUpControllerApi? _signUpControllerApi;
  SolutionExportImportControllerApi? _solutionExportImportControllerApi;
  SystemSetupControllerApi? _systemSetupControllerApi;
  TbResourceControllerApi? _tbResourceControllerApi;
  TelemetryControllerApi? _telemetryControllerApi;
  TenantControllerApi? _tenantControllerApi;
  TenantProfileControllerApi? _tenantProfileControllerApi;
  TranslationControllerApi? _translationControllerApi;
  TrendzApiControllerApi? _trendzApiControllerApi;
  TrendzControllerApi? _trendzControllerApi;
  TwoFactorAuthConfigControllerApi? _twoFactorAuthConfigControllerApi;
  TwoFactorAuthControllerApi? _twoFactorAuthControllerApi;
  UiSettingsControllerApi? _uiSettingsControllerApi;
  UsageInfoControllerApi? _usageInfoControllerApi;
  UserControllerApi? _userControllerApi;
  UserPermissionsControllerApi? _userPermissionsControllerApi;
  WhiteLabelingControllerApi? _whiteLabelingControllerApi;
  WidgetTypeControllerApi? _widgetTypeControllerApi;
  WidgetsBundleControllerApi? _widgetsBundleControllerApi;
  ThingsboardClient(
    String apiEndpoint, {
    TbStorage? storage,
    String? apiKey,
    UserLoadedCallback? onUserLoaded,
    MfaAuthCallback? onMfaAuth,
    MfaAuthCallback? onMfaForce,
    ErrorCallback? onError,
    LoadStartedCallback? onLoadStarted,
    LoadFinishedCallback? onLoadFinished,
    TbCompute? computeFunc,
    bool debugMode = false,
  }) : super.create(
          apiEndpoint,
          storage: storage,
          apiKey: apiKey,
          onUserLoaded: onUserLoaded,
          onMfaAuth: onMfaAuth,
          onMfaForce: onMfaForce,
          onError: onError,
          onLoadStarted: onLoadStarted,
          onLoadFinished: onLoadFinished,
          computeFunc: computeFunc,
          debugMode: debugMode,
        );

  AdminControllerApi getAdminControllerApi() {
    _adminControllerApi ??= AdminControllerApi(dio);
    return _adminControllerApi!;
  }

  AgentAppProfileControllerApi getAgentAppProfileControllerApi() {
    _agentAppProfileControllerApi ??= AgentAppProfileControllerApi(dio);
    return _agentAppProfileControllerApi!;
  }

  AgentAppTemplateControllerApi getAgentAppTemplateControllerApi() {
    _agentAppTemplateControllerApi ??= AgentAppTemplateControllerApi(dio);
    return _agentAppTemplateControllerApi!;
  }

  AgentApplicationControllerApi getAgentApplicationControllerApi() {
    _agentApplicationControllerApi ??= AgentApplicationControllerApi(dio);
    return _agentApplicationControllerApi!;
  }

  AgentBulkActionControllerApi getAgentBulkActionControllerApi() {
    _agentBulkActionControllerApi ??= AgentBulkActionControllerApi(dio);
    return _agentBulkActionControllerApi!;
  }

  AgentControllerApi getAgentControllerApi() {
    _agentControllerApi ??= AgentControllerApi(dio);
    return _agentControllerApi!;
  }

  AgentProfileControllerApi getAgentProfileControllerApi() {
    _agentProfileControllerApi ??= AgentProfileControllerApi(dio);
    return _agentProfileControllerApi!;
  }

  AiChatControllerApi getAiChatControllerApi() {
    _aiChatControllerApi ??= AiChatControllerApi(dio);
    return _aiChatControllerApi!;
  }

  AiDeviceDashboardControllerApi getAiDeviceDashboardControllerApi() {
    _aiDeviceDashboardControllerApi ??= AiDeviceDashboardControllerApi(dio);
    return _aiDeviceDashboardControllerApi!;
  }

  AiModelControllerApi getAiModelControllerApi() {
    _aiModelControllerApi ??= AiModelControllerApi(dio);
    return _aiModelControllerApi!;
  }

  AiSolutionControllerApi getAiSolutionControllerApi() {
    _aiSolutionControllerApi ??= AiSolutionControllerApi(dio);
    return _aiSolutionControllerApi!;
  }

  AiToolControllerApi getAiToolControllerApi() {
    _aiToolControllerApi ??= AiToolControllerApi(dio);
    return _aiToolControllerApi!;
  }

  AlarmCommentControllerApi getAlarmCommentControllerApi() {
    _alarmCommentControllerApi ??= AlarmCommentControllerApi(dio);
    return _alarmCommentControllerApi!;
  }

  AlarmControllerApi getAlarmControllerApi() {
    _alarmControllerApi ??= AlarmControllerApi(dio);
    return _alarmControllerApi!;
  }

  AlarmRuleControllerApi getAlarmRuleControllerApi() {
    _alarmRuleControllerApi ??= AlarmRuleControllerApi(dio);
    return _alarmRuleControllerApi!;
  }

  ApiKeyControllerApi getApiKeyControllerApi() {
    _apiKeyControllerApi ??= ApiKeyControllerApi(dio);
    return _apiKeyControllerApi!;
  }

  AssetControllerApi getAssetControllerApi() {
    _assetControllerApi ??= AssetControllerApi(dio);
    return _assetControllerApi!;
  }

  AssetProfileControllerApi getAssetProfileControllerApi() {
    _assetProfileControllerApi ??= AssetProfileControllerApi(dio);
    return _assetProfileControllerApi!;
  }

  AuditLogControllerApi getAuditLogControllerApi() {
    _auditLogControllerApi ??= AuditLogControllerApi(dio);
    return _auditLogControllerApi!;
  }

  AuthControllerApi getAuthControllerApi() {
    _authControllerApi ??= AuthControllerApi(dio);
    return _authControllerApi!;
  }

  BlobEntityControllerApi getBlobEntityControllerApi() {
    _blobEntityControllerApi ??= BlobEntityControllerApi(dio);
    return _blobEntityControllerApi!;
  }

  CalculatedFieldControllerApi getCalculatedFieldControllerApi() {
    _calculatedFieldControllerApi ??= CalculatedFieldControllerApi(dio);
    return _calculatedFieldControllerApi!;
  }

  ComponentDescriptorControllerApi getComponentDescriptorControllerApi() {
    _componentDescriptorControllerApi ??= ComponentDescriptorControllerApi(dio);
    return _componentDescriptorControllerApi!;
  }

  ConverterControllerApi getConverterControllerApi() {
    _converterControllerApi ??= ConverterControllerApi(dio);
    return _converterControllerApi!;
  }

  ConverterLibraryControllerApi getConverterLibraryControllerApi() {
    _converterLibraryControllerApi ??= ConverterLibraryControllerApi(dio);
    return _converterLibraryControllerApi!;
  }

  CustomMenuControllerApi getCustomMenuControllerApi() {
    _customMenuControllerApi ??= CustomMenuControllerApi(dio);
    return _customMenuControllerApi!;
  }

  CustomTranslationControllerApi getCustomTranslationControllerApi() {
    _customTranslationControllerApi ??= CustomTranslationControllerApi(dio);
    return _customTranslationControllerApi!;
  }

  CustomerControllerApi getCustomerControllerApi() {
    _customerControllerApi ??= CustomerControllerApi(dio);
    return _customerControllerApi!;
  }

  DashboardControllerApi getDashboardControllerApi() {
    _dashboardControllerApi ??= DashboardControllerApi(dio);
    return _dashboardControllerApi!;
  }

  DashboardReportControllerApi getDashboardReportControllerApi() {
    _dashboardReportControllerApi ??= DashboardReportControllerApi(dio);
    return _dashboardReportControllerApi!;
  }

  DeviceConnectivityControllerApi getDeviceConnectivityControllerApi() {
    _deviceConnectivityControllerApi ??= DeviceConnectivityControllerApi(dio);
    return _deviceConnectivityControllerApi!;
  }

  DeviceControllerApi getDeviceControllerApi() {
    _deviceControllerApi ??= DeviceControllerApi(dio);
    return _deviceControllerApi!;
  }

  DeviceGroupOtaPackageControllerApi getDeviceGroupOtaPackageControllerApi() {
    _deviceGroupOtaPackageControllerApi ??= DeviceGroupOtaPackageControllerApi(dio);
    return _deviceGroupOtaPackageControllerApi!;
  }

  DeviceProfileControllerApi getDeviceProfileControllerApi() {
    _deviceProfileControllerApi ??= DeviceProfileControllerApi(dio);
    return _deviceProfileControllerApi!;
  }

  DomainControllerApi getDomainControllerApi() {
    _domainControllerApi ??= DomainControllerApi(dio);
    return _domainControllerApi!;
  }

  EdgeControllerApi getEdgeControllerApi() {
    _edgeControllerApi ??= EdgeControllerApi(dio);
    return _edgeControllerApi!;
  }

  EdgeEventControllerApi getEdgeEventControllerApi() {
    _edgeEventControllerApi ??= EdgeEventControllerApi(dio);
    return _edgeEventControllerApi!;
  }

  EntitiesVersionControlControllerApi getEntitiesVersionControlControllerApi() {
    _entitiesVersionControlControllerApi ??= EntitiesVersionControlControllerApi(dio);
    return _entitiesVersionControlControllerApi!;
  }

  EntityGroupControllerApi getEntityGroupControllerApi() {
    _entityGroupControllerApi ??= EntityGroupControllerApi(dio);
    return _entityGroupControllerApi!;
  }

  EntityQueryControllerApi getEntityQueryControllerApi() {
    _entityQueryControllerApi ??= EntityQueryControllerApi(dio);
    return _entityQueryControllerApi!;
  }

  EntityRelationControllerApi getEntityRelationControllerApi() {
    _entityRelationControllerApi ??= EntityRelationControllerApi(dio);
    return _entityRelationControllerApi!;
  }

  EntityViewControllerApi getEntityViewControllerApi() {
    _entityViewControllerApi ??= EntityViewControllerApi(dio);
    return _entityViewControllerApi!;
  }

  EventControllerApi getEventControllerApi() {
    _eventControllerApi ??= EventControllerApi(dio);
    return _eventControllerApi!;
  }

  GroupPermissionControllerApi getGroupPermissionControllerApi() {
    _groupPermissionControllerApi ??= GroupPermissionControllerApi(dio);
    return _groupPermissionControllerApi!;
  }

  ImageControllerApi getImageControllerApi() {
    _imageControllerApi ??= ImageControllerApi(dio);
    return _imageControllerApi!;
  }

  IntegrationControllerApi getIntegrationControllerApi() {
    _integrationControllerApi ??= IntegrationControllerApi(dio);
    return _integrationControllerApi!;
  }

  JobControllerApi getJobControllerApi() {
    _jobControllerApi ??= JobControllerApi(dio);
    return _jobControllerApi!;
  }

  LoginEndpointApi getLoginEndpointApi() {
    _loginEndpointApi ??= LoginEndpointApi(dio);
    return _loginEndpointApi!;
  }

  Lwm2mControllerApi getLwm2mControllerApi() {
    _lwm2mControllerApi ??= Lwm2mControllerApi(dio);
    return _lwm2mControllerApi!;
  }

  MailConfigTemplateControllerApi getMailConfigTemplateControllerApi() {
    _mailConfigTemplateControllerApi ??= MailConfigTemplateControllerApi(dio);
    return _mailConfigTemplateControllerApi!;
  }

  MobileAppBundleControllerApi getMobileAppBundleControllerApi() {
    _mobileAppBundleControllerApi ??= MobileAppBundleControllerApi(dio);
    return _mobileAppBundleControllerApi!;
  }

  MobileAppControllerApi getMobileAppControllerApi() {
    _mobileAppControllerApi ??= MobileAppControllerApi(dio);
    return _mobileAppControllerApi!;
  }

  NotificationControllerApi getNotificationControllerApi() {
    _notificationControllerApi ??= NotificationControllerApi(dio);
    return _notificationControllerApi!;
  }

  NotificationRuleControllerApi getNotificationRuleControllerApi() {
    _notificationRuleControllerApi ??= NotificationRuleControllerApi(dio);
    return _notificationRuleControllerApi!;
  }

  NotificationTargetControllerApi getNotificationTargetControllerApi() {
    _notificationTargetControllerApi ??= NotificationTargetControllerApi(dio);
    return _notificationTargetControllerApi!;
  }

  NotificationTemplateControllerApi getNotificationTemplateControllerApi() {
    _notificationTemplateControllerApi ??= NotificationTemplateControllerApi(dio);
    return _notificationTemplateControllerApi!;
  }

  OAuth2ConfigTemplateControllerApi getOAuth2ConfigTemplateControllerApi() {
    _oAuth2ConfigTemplateControllerApi ??= OAuth2ConfigTemplateControllerApi(dio);
    return _oAuth2ConfigTemplateControllerApi!;
  }

  OAuth2ControllerApi getOAuth2ControllerApi() {
    _oAuth2ControllerApi ??= OAuth2ControllerApi(dio);
    return _oAuth2ControllerApi!;
  }

  OtaPackageControllerApi getOtaPackageControllerApi() {
    _otaPackageControllerApi ??= OtaPackageControllerApi(dio);
    return _otaPackageControllerApi!;
  }

  OwnerControllerApi getOwnerControllerApi() {
    _ownerControllerApi ??= OwnerControllerApi(dio);
    return _ownerControllerApi!;
  }

  QrCodeSettingsControllerApi getQrCodeSettingsControllerApi() {
    _qrCodeSettingsControllerApi ??= QrCodeSettingsControllerApi(dio);
    return _qrCodeSettingsControllerApi!;
  }

  QueueControllerApi getQueueControllerApi() {
    _queueControllerApi ??= QueueControllerApi(dio);
    return _queueControllerApi!;
  }

  QueueStatsControllerApi getQueueStatsControllerApi() {
    _queueStatsControllerApi ??= QueueStatsControllerApi(dio);
    return _queueStatsControllerApi!;
  }

  ReportControllerApi getReportControllerApi() {
    _reportControllerApi ??= ReportControllerApi(dio);
    return _reportControllerApi!;
  }

  ReportTemplateControllerApi getReportTemplateControllerApi() {
    _reportTemplateControllerApi ??= ReportTemplateControllerApi(dio);
    return _reportTemplateControllerApi!;
  }

  RoleControllerApi getRoleControllerApi() {
    _roleControllerApi ??= RoleControllerApi(dio);
    return _roleControllerApi!;
  }

  RpcV1ControllerApi getRpcV1ControllerApi() {
    _rpcV1ControllerApi ??= RpcV1ControllerApi(dio);
    return _rpcV1ControllerApi!;
  }

  RpcV2ControllerApi getRpcV2ControllerApi() {
    _rpcV2ControllerApi ??= RpcV2ControllerApi(dio);
    return _rpcV2ControllerApi!;
  }

  RuleChainControllerApi getRuleChainControllerApi() {
    _ruleChainControllerApi ??= RuleChainControllerApi(dio);
    return _ruleChainControllerApi!;
  }

  RuleEngineControllerApi getRuleEngineControllerApi() {
    _ruleEngineControllerApi ??= RuleEngineControllerApi(dio);
    return _ruleEngineControllerApi!;
  }

  SchedulerEventControllerApi getSchedulerEventControllerApi() {
    _schedulerEventControllerApi ??= SchedulerEventControllerApi(dio);
    return _schedulerEventControllerApi!;
  }

  SecretControllerApi getSecretControllerApi() {
    _secretControllerApi ??= SecretControllerApi(dio);
    return _secretControllerApi!;
  }

  SelfRegistrationControllerApi getSelfRegistrationControllerApi() {
    _selfRegistrationControllerApi ??= SelfRegistrationControllerApi(dio);
    return _selfRegistrationControllerApi!;
  }

  SignUpControllerApi getSignUpControllerApi() {
    _signUpControllerApi ??= SignUpControllerApi(dio);
    return _signUpControllerApi!;
  }

  SolutionExportImportControllerApi getSolutionExportImportControllerApi() {
    _solutionExportImportControllerApi ??= SolutionExportImportControllerApi(dio);
    return _solutionExportImportControllerApi!;
  }

  SystemSetupControllerApi getSystemSetupControllerApi() {
    _systemSetupControllerApi ??= SystemSetupControllerApi(dio);
    return _systemSetupControllerApi!;
  }

  TbResourceControllerApi getTbResourceControllerApi() {
    _tbResourceControllerApi ??= TbResourceControllerApi(dio);
    return _tbResourceControllerApi!;
  }

  TelemetryControllerApi getTelemetryControllerApi() {
    _telemetryControllerApi ??= TelemetryControllerApi(dio);
    return _telemetryControllerApi!;
  }

  TenantControllerApi getTenantControllerApi() {
    _tenantControllerApi ??= TenantControllerApi(dio);
    return _tenantControllerApi!;
  }

  TenantProfileControllerApi getTenantProfileControllerApi() {
    _tenantProfileControllerApi ??= TenantProfileControllerApi(dio);
    return _tenantProfileControllerApi!;
  }

  TranslationControllerApi getTranslationControllerApi() {
    _translationControllerApi ??= TranslationControllerApi(dio);
    return _translationControllerApi!;
  }

  TrendzApiControllerApi getTrendzApiControllerApi() {
    _trendzApiControllerApi ??= TrendzApiControllerApi(dio);
    return _trendzApiControllerApi!;
  }

  TrendzControllerApi getTrendzControllerApi() {
    _trendzControllerApi ??= TrendzControllerApi(dio);
    return _trendzControllerApi!;
  }

  TwoFactorAuthConfigControllerApi getTwoFactorAuthConfigControllerApi() {
    _twoFactorAuthConfigControllerApi ??= TwoFactorAuthConfigControllerApi(dio);
    return _twoFactorAuthConfigControllerApi!;
  }

  TwoFactorAuthControllerApi getTwoFactorAuthControllerApi() {
    _twoFactorAuthControllerApi ??= TwoFactorAuthControllerApi(dio);
    return _twoFactorAuthControllerApi!;
  }

  UiSettingsControllerApi getUiSettingsControllerApi() {
    _uiSettingsControllerApi ??= UiSettingsControllerApi(dio);
    return _uiSettingsControllerApi!;
  }

  UsageInfoControllerApi getUsageInfoControllerApi() {
    _usageInfoControllerApi ??= UsageInfoControllerApi(dio);
    return _usageInfoControllerApi!;
  }

  UserControllerApi getUserControllerApi() {
    _userControllerApi ??= UserControllerApi(dio);
    return _userControllerApi!;
  }

  UserPermissionsControllerApi getUserPermissionsControllerApi() {
    _userPermissionsControllerApi ??= UserPermissionsControllerApi(dio);
    return _userPermissionsControllerApi!;
  }

  WhiteLabelingControllerApi getWhiteLabelingControllerApi() {
    _whiteLabelingControllerApi ??= WhiteLabelingControllerApi(dio);
    return _whiteLabelingControllerApi!;
  }

  WidgetTypeControllerApi getWidgetTypeControllerApi() {
    _widgetTypeControllerApi ??= WidgetTypeControllerApi(dio);
    return _widgetTypeControllerApi!;
  }

  WidgetsBundleControllerApi getWidgetsBundleControllerApi() {
    _widgetsBundleControllerApi ??= WidgetsBundleControllerApi(dio);
    return _widgetsBundleControllerApi!;
  }}
