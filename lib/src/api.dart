// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:thingsboard_client/src/serializers.dart';
import 'package:thingsboard_client/src/auth/api_key_auth.dart';
import 'package:thingsboard_client/src/auth/basic_auth.dart';
import 'package:thingsboard_client/src/auth/bearer_auth.dart';
import 'package:thingsboard_client/src/auth/oauth.dart';
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

class ThingsboardClient {
  static const String basePath = r'http://localhost:8080';

  final Dio dio;
  final Serializers serializers;

  ThingsboardClient({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  /// Removes the OAuth token associated with the given [name].
  ///
  /// If no [OAuthInterceptor] is registered or no token exists for the given
  /// [name], this method has no effect.
  void removeOAuthToken(String name) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens.remove(name);
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  /// Removes the bearer authentication token associated with the given [name].
  ///
  /// If no [BearerAuthInterceptor] is registered or no token exists for the
  /// given [name], this method has no effect.
  void removeBearerAuth(String name) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens.remove(name);
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  /// Removes the basic authentication credentials associated with the given [name].
  ///
  /// If no [BasicAuthInterceptor] is registered or no credentials exist for the
  /// given [name], this method has no effect.
  void removeBasicAuth(String name) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo.remove(name);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Removes the API key associated with the given [name].
  ///
  /// If no [ApiKeyAuthInterceptor] is registered or no API key exists for the
  /// given [name], this method has no effect.
  void removeApiKey(String name) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys.remove(name);
    }
  }

  /// Get AdminControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AdminControllerApi getAdminControllerApi() {
    return AdminControllerApi(dio, serializers);
  }

  /// Get AgentAppProfileControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AgentAppProfileControllerApi getAgentAppProfileControllerApi() {
    return AgentAppProfileControllerApi(dio, serializers);
  }

  /// Get AgentAppTemplateControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AgentAppTemplateControllerApi getAgentAppTemplateControllerApi() {
    return AgentAppTemplateControllerApi(dio, serializers);
  }

  /// Get AgentApplicationControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AgentApplicationControllerApi getAgentApplicationControllerApi() {
    return AgentApplicationControllerApi(dio, serializers);
  }

  /// Get AgentBulkActionControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AgentBulkActionControllerApi getAgentBulkActionControllerApi() {
    return AgentBulkActionControllerApi(dio, serializers);
  }

  /// Get AgentControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AgentControllerApi getAgentControllerApi() {
    return AgentControllerApi(dio, serializers);
  }

  /// Get AgentProfileControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AgentProfileControllerApi getAgentProfileControllerApi() {
    return AgentProfileControllerApi(dio, serializers);
  }

  /// Get AiChatControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AiChatControllerApi getAiChatControllerApi() {
    return AiChatControllerApi(dio, serializers);
  }

  /// Get AiDeviceDashboardControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AiDeviceDashboardControllerApi getAiDeviceDashboardControllerApi() {
    return AiDeviceDashboardControllerApi(dio, serializers);
  }

  /// Get AiModelControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AiModelControllerApi getAiModelControllerApi() {
    return AiModelControllerApi(dio, serializers);
  }

  /// Get AiSolutionControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AiSolutionControllerApi getAiSolutionControllerApi() {
    return AiSolutionControllerApi(dio, serializers);
  }

  /// Get AiToolControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AiToolControllerApi getAiToolControllerApi() {
    return AiToolControllerApi(dio, serializers);
  }

  /// Get AlarmCommentControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AlarmCommentControllerApi getAlarmCommentControllerApi() {
    return AlarmCommentControllerApi(dio, serializers);
  }

  /// Get AlarmControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AlarmControllerApi getAlarmControllerApi() {
    return AlarmControllerApi(dio, serializers);
  }

  /// Get AlarmRuleControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AlarmRuleControllerApi getAlarmRuleControllerApi() {
    return AlarmRuleControllerApi(dio, serializers);
  }

  /// Get ApiKeyControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ApiKeyControllerApi getApiKeyControllerApi() {
    return ApiKeyControllerApi(dio, serializers);
  }

  /// Get AssetControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AssetControllerApi getAssetControllerApi() {
    return AssetControllerApi(dio, serializers);
  }

  /// Get AssetProfileControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AssetProfileControllerApi getAssetProfileControllerApi() {
    return AssetProfileControllerApi(dio, serializers);
  }

  /// Get AuditLogControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuditLogControllerApi getAuditLogControllerApi() {
    return AuditLogControllerApi(dio, serializers);
  }

  /// Get AuthControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthControllerApi getAuthControllerApi() {
    return AuthControllerApi(dio, serializers);
  }

  /// Get BlobEntityControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BlobEntityControllerApi getBlobEntityControllerApi() {
    return BlobEntityControllerApi(dio, serializers);
  }

  /// Get CalculatedFieldControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CalculatedFieldControllerApi getCalculatedFieldControllerApi() {
    return CalculatedFieldControllerApi(dio, serializers);
  }

  /// Get ComponentDescriptorControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ComponentDescriptorControllerApi getComponentDescriptorControllerApi() {
    return ComponentDescriptorControllerApi(dio, serializers);
  }

  /// Get ConverterControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConverterControllerApi getConverterControllerApi() {
    return ConverterControllerApi(dio, serializers);
  }

  /// Get ConverterLibraryControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConverterLibraryControllerApi getConverterLibraryControllerApi() {
    return ConverterLibraryControllerApi(dio, serializers);
  }

  /// Get CustomMenuControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CustomMenuControllerApi getCustomMenuControllerApi() {
    return CustomMenuControllerApi(dio, serializers);
  }

  /// Get CustomTranslationControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CustomTranslationControllerApi getCustomTranslationControllerApi() {
    return CustomTranslationControllerApi(dio, serializers);
  }

  /// Get CustomerControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CustomerControllerApi getCustomerControllerApi() {
    return CustomerControllerApi(dio, serializers);
  }

  /// Get DashboardControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DashboardControllerApi getDashboardControllerApi() {
    return DashboardControllerApi(dio, serializers);
  }

  /// Get DashboardReportControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DashboardReportControllerApi getDashboardReportControllerApi() {
    return DashboardReportControllerApi(dio, serializers);
  }

  /// Get DeviceConnectivityControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DeviceConnectivityControllerApi getDeviceConnectivityControllerApi() {
    return DeviceConnectivityControllerApi(dio, serializers);
  }

  /// Get DeviceControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DeviceControllerApi getDeviceControllerApi() {
    return DeviceControllerApi(dio, serializers);
  }

  /// Get DeviceGroupOtaPackageControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DeviceGroupOtaPackageControllerApi getDeviceGroupOtaPackageControllerApi() {
    return DeviceGroupOtaPackageControllerApi(dio, serializers);
  }

  /// Get DeviceProfileControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DeviceProfileControllerApi getDeviceProfileControllerApi() {
    return DeviceProfileControllerApi(dio, serializers);
  }

  /// Get DomainControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DomainControllerApi getDomainControllerApi() {
    return DomainControllerApi(dio, serializers);
  }

  /// Get EdgeControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EdgeControllerApi getEdgeControllerApi() {
    return EdgeControllerApi(dio, serializers);
  }

  /// Get EdgeEventControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EdgeEventControllerApi getEdgeEventControllerApi() {
    return EdgeEventControllerApi(dio, serializers);
  }

  /// Get EntitiesVersionControlControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EntitiesVersionControlControllerApi getEntitiesVersionControlControllerApi() {
    return EntitiesVersionControlControllerApi(dio, serializers);
  }

  /// Get EntityGroupControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EntityGroupControllerApi getEntityGroupControllerApi() {
    return EntityGroupControllerApi(dio, serializers);
  }

  /// Get EntityQueryControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EntityQueryControllerApi getEntityQueryControllerApi() {
    return EntityQueryControllerApi(dio, serializers);
  }

  /// Get EntityRelationControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EntityRelationControllerApi getEntityRelationControllerApi() {
    return EntityRelationControllerApi(dio, serializers);
  }

  /// Get EntityViewControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EntityViewControllerApi getEntityViewControllerApi() {
    return EntityViewControllerApi(dio, serializers);
  }

  /// Get EventControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EventControllerApi getEventControllerApi() {
    return EventControllerApi(dio, serializers);
  }

  /// Get GroupPermissionControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GroupPermissionControllerApi getGroupPermissionControllerApi() {
    return GroupPermissionControllerApi(dio, serializers);
  }

  /// Get ImageControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ImageControllerApi getImageControllerApi() {
    return ImageControllerApi(dio, serializers);
  }

  /// Get IntegrationControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IntegrationControllerApi getIntegrationControllerApi() {
    return IntegrationControllerApi(dio, serializers);
  }

  /// Get JobControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  JobControllerApi getJobControllerApi() {
    return JobControllerApi(dio, serializers);
  }

  /// Get LoginEndpointApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LoginEndpointApi getLoginEndpointApi() {
    return LoginEndpointApi(dio, serializers);
  }

  /// Get Lwm2mControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  Lwm2mControllerApi getLwm2mControllerApi() {
    return Lwm2mControllerApi(dio, serializers);
  }

  /// Get MailConfigTemplateControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MailConfigTemplateControllerApi getMailConfigTemplateControllerApi() {
    return MailConfigTemplateControllerApi(dio, serializers);
  }

  /// Get MobileAppBundleControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MobileAppBundleControllerApi getMobileAppBundleControllerApi() {
    return MobileAppBundleControllerApi(dio, serializers);
  }

  /// Get MobileAppControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MobileAppControllerApi getMobileAppControllerApi() {
    return MobileAppControllerApi(dio, serializers);
  }

  /// Get NotificationControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NotificationControllerApi getNotificationControllerApi() {
    return NotificationControllerApi(dio, serializers);
  }

  /// Get NotificationRuleControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NotificationRuleControllerApi getNotificationRuleControllerApi() {
    return NotificationRuleControllerApi(dio, serializers);
  }

  /// Get NotificationTargetControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NotificationTargetControllerApi getNotificationTargetControllerApi() {
    return NotificationTargetControllerApi(dio, serializers);
  }

  /// Get NotificationTemplateControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NotificationTemplateControllerApi getNotificationTemplateControllerApi() {
    return NotificationTemplateControllerApi(dio, serializers);
  }

  /// Get OAuth2ConfigTemplateControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OAuth2ConfigTemplateControllerApi getOAuth2ConfigTemplateControllerApi() {
    return OAuth2ConfigTemplateControllerApi(dio, serializers);
  }

  /// Get OAuth2ControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OAuth2ControllerApi getOAuth2ControllerApi() {
    return OAuth2ControllerApi(dio, serializers);
  }

  /// Get OtaPackageControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OtaPackageControllerApi getOtaPackageControllerApi() {
    return OtaPackageControllerApi(dio, serializers);
  }

  /// Get OwnerControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OwnerControllerApi getOwnerControllerApi() {
    return OwnerControllerApi(dio, serializers);
  }

  /// Get QrCodeSettingsControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QrCodeSettingsControllerApi getQrCodeSettingsControllerApi() {
    return QrCodeSettingsControllerApi(dio, serializers);
  }

  /// Get QueueControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QueueControllerApi getQueueControllerApi() {
    return QueueControllerApi(dio, serializers);
  }

  /// Get QueueStatsControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QueueStatsControllerApi getQueueStatsControllerApi() {
    return QueueStatsControllerApi(dio, serializers);
  }

  /// Get ReportControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReportControllerApi getReportControllerApi() {
    return ReportControllerApi(dio, serializers);
  }

  /// Get ReportTemplateControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReportTemplateControllerApi getReportTemplateControllerApi() {
    return ReportTemplateControllerApi(dio, serializers);
  }

  /// Get RoleControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RoleControllerApi getRoleControllerApi() {
    return RoleControllerApi(dio, serializers);
  }

  /// Get RpcV1ControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RpcV1ControllerApi getRpcV1ControllerApi() {
    return RpcV1ControllerApi(dio, serializers);
  }

  /// Get RpcV2ControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RpcV2ControllerApi getRpcV2ControllerApi() {
    return RpcV2ControllerApi(dio, serializers);
  }

  /// Get RuleChainControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RuleChainControllerApi getRuleChainControllerApi() {
    return RuleChainControllerApi(dio, serializers);
  }

  /// Get RuleEngineControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RuleEngineControllerApi getRuleEngineControllerApi() {
    return RuleEngineControllerApi(dio, serializers);
  }

  /// Get SchedulerEventControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SchedulerEventControllerApi getSchedulerEventControllerApi() {
    return SchedulerEventControllerApi(dio, serializers);
  }

  /// Get SecretControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SecretControllerApi getSecretControllerApi() {
    return SecretControllerApi(dio, serializers);
  }

  /// Get SelfRegistrationControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SelfRegistrationControllerApi getSelfRegistrationControllerApi() {
    return SelfRegistrationControllerApi(dio, serializers);
  }

  /// Get SignUpControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SignUpControllerApi getSignUpControllerApi() {
    return SignUpControllerApi(dio, serializers);
  }

  /// Get SolutionExportImportControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SolutionExportImportControllerApi getSolutionExportImportControllerApi() {
    return SolutionExportImportControllerApi(dio, serializers);
  }

  /// Get SystemSetupControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SystemSetupControllerApi getSystemSetupControllerApi() {
    return SystemSetupControllerApi(dio, serializers);
  }

  /// Get TbResourceControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TbResourceControllerApi getTbResourceControllerApi() {
    return TbResourceControllerApi(dio, serializers);
  }

  /// Get TelemetryControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TelemetryControllerApi getTelemetryControllerApi() {
    return TelemetryControllerApi(dio, serializers);
  }

  /// Get TenantControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TenantControllerApi getTenantControllerApi() {
    return TenantControllerApi(dio, serializers);
  }

  /// Get TenantProfileControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TenantProfileControllerApi getTenantProfileControllerApi() {
    return TenantProfileControllerApi(dio, serializers);
  }

  /// Get TranslationControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TranslationControllerApi getTranslationControllerApi() {
    return TranslationControllerApi(dio, serializers);
  }

  /// Get TrendzApiControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TrendzApiControllerApi getTrendzApiControllerApi() {
    return TrendzApiControllerApi(dio, serializers);
  }

  /// Get TrendzControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TrendzControllerApi getTrendzControllerApi() {
    return TrendzControllerApi(dio, serializers);
  }

  /// Get TwoFactorAuthConfigControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TwoFactorAuthConfigControllerApi getTwoFactorAuthConfigControllerApi() {
    return TwoFactorAuthConfigControllerApi(dio, serializers);
  }

  /// Get TwoFactorAuthControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TwoFactorAuthControllerApi getTwoFactorAuthControllerApi() {
    return TwoFactorAuthControllerApi(dio, serializers);
  }

  /// Get UiSettingsControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UiSettingsControllerApi getUiSettingsControllerApi() {
    return UiSettingsControllerApi(dio, serializers);
  }

  /// Get UsageInfoControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UsageInfoControllerApi getUsageInfoControllerApi() {
    return UsageInfoControllerApi(dio, serializers);
  }

  /// Get UserControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserControllerApi getUserControllerApi() {
    return UserControllerApi(dio, serializers);
  }

  /// Get UserPermissionsControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserPermissionsControllerApi getUserPermissionsControllerApi() {
    return UserPermissionsControllerApi(dio, serializers);
  }

  /// Get WhiteLabelingControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WhiteLabelingControllerApi getWhiteLabelingControllerApi() {
    return WhiteLabelingControllerApi(dio, serializers);
  }

  /// Get WidgetTypeControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WidgetTypeControllerApi getWidgetTypeControllerApi() {
    return WidgetTypeControllerApi(dio, serializers);
  }

  /// Get WidgetsBundleControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WidgetsBundleControllerApi getWidgetsBundleControllerApi() {
    return WidgetsBundleControllerApi(dio, serializers);
  }
}
