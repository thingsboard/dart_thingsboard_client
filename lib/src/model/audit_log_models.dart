import 'dart:convert';
import 'dart:math';

import 'id/audit_log_id.dart';
import 'id/customer_id.dart';
import 'id/entity_id.dart';

import 'base_data.dart';
import 'id/tenant_id.dart';
import 'id/user_id.dart';

enum ActionType {
  ADDED,
  DELETED,
  UPDATED,
  ATTRIBUTES_UPDATED,
  ATTRIBUTES_DELETED,
  RPC_CALL,
  CREDENTIALS_UPDATED,
  ASSIGNED_TO_CUSTOMER,
  UNASSIGNED_FROM_CUSTOMER,
  ACTIVATED,
  SUSPENDED,
  CREDENTIALS_READ,
  ATTRIBUTES_READ,
  RELATION_ADD_OR_UPDATE,
  RELATION_DELETED,
  RELATIONS_DELETED,
  ALARM_ACK,
  ALARM_CLEAR,
  ALARM_DELETE,
  ALARM_ASSIGNED,
  ALARM_UNASSIGNED,
  LOGIN,
  LOGOUT,
  LOCKOUT,
  ASSIGNED_FROM_TENANT,
  ASSIGNED_TO_TENANT,
  PROVISION_SUCCESS,
  PROVISION_FAILURE,
  TIMESERIES_UPDATED,
  TIMESERIES_DELETED,
  ASSIGNED_TO_EDGE,
  UNASSIGNED_FROM_EDGE,
  ADDED_COMMENT,
  UPDATED_COMMENT,
  DELETED_COMMENT
}

ActionType actionTypeFromString(String value) {
  return ActionType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension ActionTypeToString on ActionType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum ActionStatus { SUCCESS, FAILURE }

ActionStatus actionStatusFromString(String value) {
  return ActionStatus.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension ActionStatusToString on ActionStatus {
  String toShortString() {
    return toString().split('.').last;
  }
}

class AuditLog extends BaseData<AuditLogId> {
  TenantId tenantId;
  CustomerId? customerId;
  EntityId entityId;
  String? entityName;
  UserId userId;
  String userName;
  ActionType actionType;
  Map<String, dynamic> actionData;
  ActionStatus actionStatus;
  String? actionFailureDetails;

  AuditLog.fromJson(Map<String, dynamic> json)
      : tenantId = TenantId.fromJson(json['tenantId']),
        customerId = json['customerId'] != null
            ? CustomerId.fromJson(json['customerId'])
            : null,
        entityId = EntityId.fromJson(json['entityId']),
        entityName = json['entityName'],
        userId = UserId.fromJson(json['userId']),
        userName = json['userName'],
        actionType = actionTypeFromString(json['actionType']),
        actionData = json['actionData'],
        actionStatus = actionStatusFromString(json['actionStatus']),
        actionFailureDetails = json['actionFailureDetails'],
        super.fromJson(json, (id) => AuditLogId(id));

  @override
  String toString() {
    return 'AuditLog{${baseDataString('tenantId: $tenantId, customerId: $customerId, entityId: $entityId, '
        'entityName: $entityName, userId: $userId, userName: $userName, actionType: $actionType, '
        'actionData: ${actionDataToString()}, actionStatus: $actionStatus, actionFailureDetails: ${actionFailureDetailsToString()}')}}';
  }

  String actionDataToString() {
    var actionDataStr = jsonEncode(actionData);
    if (actionDataStr.length > 50) {
      actionDataStr =
          actionDataStr.substring(0, min(50, actionDataStr.length)) + '...';
    }
    return actionDataStr;
  }

  String actionFailureDetailsToString() {
    if (actionFailureDetails == null) {
      return 'null';
    }
    if (actionFailureDetails!.length > 50) {
      return actionFailureDetails!
              .substring(0, min(50, actionFailureDetails!.length)) +
          '...';
    }
    return actionFailureDetails!;
  }
}
