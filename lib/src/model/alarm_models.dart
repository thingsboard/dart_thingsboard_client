import 'page/page_link.dart';
import 'id/customer_id.dart';
import 'id/entity_id.dart';
import 'id/tenant_id.dart';
import 'id/user_id.dart';
import 'base_data.dart';
import 'has_name.dart';
import 'has_tenant_id.dart';
import 'id/alarm_id.dart';

enum AlarmSeverity { CRITICAL, MAJOR, MINOR, WARNING, INDETERMINATE }

AlarmSeverity alarmSeverityFromString(String value) {
  return AlarmSeverity.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension AlarmSeverityToString on AlarmSeverity {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum AlarmStatus { ACTIVE_UNACK, ACTIVE_ACK, CLEARED_UNACK, CLEARED_ACK }

AlarmStatus alarmStatusFromString(String value) {
  return AlarmStatus.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension AlarmStatusToString on AlarmStatus {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum AlarmSearchStatus { ANY, ACTIVE, CLEARED, ACK, UNACK }

AlarmSearchStatus alarmSearchStatusFromString(String value) {
  return AlarmSearchStatus.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension AlarmSearchStatusToString on AlarmSearchStatus {
  String toShortString() {
    return toString().split('.').last;
  }
}

class Alarm extends BaseData<AlarmId> with HasName, HasTenantId {
  TenantId? tenantId;
  CustomerId? customerId;
  String type;
  EntityId originator;
  AlarmSeverity severity;
  AlarmStatus? status;
  bool? acknowledged;
  bool? cleared;
  UserId? assigneeId;
  int? startTs;
  int? endTs;
  int? ackTs;
  int? clearTs;
  int? assignTs;
  bool? propagate;
  bool? propagateToOwner;
  bool? propagateToTenant;
  Map<String, dynamic>? details;

  Alarm(this.originator, this.type, this.severity);

  Alarm.fromJson(Map<String, dynamic> json)
      : tenantId = TenantId.fromJson(json['tenantId']),
        customerId = json['customerId'] != null
            ? CustomerId.fromJson(json['customerId'])
            : null,
        type = json['type'],
        originator = EntityId.fromJson(json['originator']),
        severity = alarmSeverityFromString(json['severity']),
        status = alarmStatusFromString(json['status']),
        acknowledged = json['acknowledged'],
        cleared = json['cleared'],
        assigneeId = json['assigneeId'] != null
            ? UserId.fromJson(json['assigneeId'])
            : null,
        startTs = json['startTs'],
        endTs = json['endTs'],
        ackTs = json['ackTs'],
        clearTs = json['clearTs'],
        assignTs = json['assignTs'],
        propagate = json['propagate'],
        propagateToOwner = json['propagateToOwner'],
        propagateToTenant = json['propagateToTenant'],
        details = json['details'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['tenantId'] = tenantId?.toJson();
    json['customerId'] = customerId?.toJson();
    json['type'] = type;
    json['originator'] = originator.toJson();
    json['severity'] = severity.toShortString();
    json['status'] = status?.toShortString();
    json['acknowledged'] = acknowledged;
    json['cleared'] = cleared;
    json['assigneeId'] = assigneeId?.toJson();
    json['startTs'] = startTs;
    json['endTs'] = endTs;
    json['ackTs'] = ackTs;
    json['clearTs'] = clearTs;
    json['assignTs'] = assignTs;
    json['propagate'] = propagate;
    json['propagateToOwner'] = propagateToOwner;
    json['propagateToTenant'] = propagateToTenant;
    if (details != null) {
      json['details'] = details;
    }
    return json;
  }

  @override
  String getName() {
    return type;
  }

  @override
  TenantId? getTenantId() {
    return tenantId;
  }

  @override
  String toString() {
    return 'Alarm{${alarmString()}';
  }

  String alarmString([String? toStringBody]) {
    return '${baseDataString('tenantId: $tenantId, customerId: $customerId, type: $type, originator: $originator, severity: $severity, '
        'status: $status, acknowledged: $acknowledged, cleared: $cleared, assigneeId: $assigneeId, startTs: $startTs, endTs: $endTs, '
        'ackTs: $ackTs, clearTs: $clearTs, assignTs: $assignTs, propagate: $propagate, propagateToOwner: $propagateToOwner, '
        'propagateToTenant: $propagateToTenant, details: $details${toStringBody != null ? ', ' + toStringBody : ''}')}';
  }
}

class AlarmInfo extends Alarm {
  String? originatorName;
  String? originatorLabel;
  AlarmAssignee? assignee;

  AlarmInfo.fromJson(Map<String, dynamic> json)
      : originatorName = json['originatorName'],
        originatorLabel = json['originatorLabel'],
        assignee = json['assignee'] != null
            ? AlarmAssignee.fromJson(json['assignee'])
            : null,
        super.fromJson(json);

  @override
  String toString() {
    return 'AlarmInfo{${alarmInfoString()}}';
  }

  String alarmInfoString([String? toStringBody]) {
    return '${alarmString('originatorName: $originatorName, originatorLabel: $originatorLabel, '
        'assignee: $assignee${toStringBody != null ? ', ' + toStringBody : ''}')}';
  }
}

class AlarmAssignee {
  UserId id;
  String? firstName;
  String? lastName;
  String email;

  AlarmAssignee.fromJson(Map<String, dynamic> json)
      : id = UserId.fromJson(json['id']),
        firstName = json['firstName'],
        lastName = json['lastName'],
        email = json['email'];

  @override
  String toString() {
    return 'AlarmAssignee{${alarmAssigneeString()}}';
  }

  String alarmAssigneeString([String? toStringBody]) {
    return '${'id: $id, firstName: $firstName, lastName: $lastName, email: $email${toStringBody != null ? ', ' + toStringBody : ''}'}';
  }
}

class AlarmQuery {
  EntityId? affectedEntityId;
  TimePageLink pageLink;
  AlarmSearchStatus? searchStatus;
  AlarmStatus? status;
  UserId? assigneeId;
  bool? fetchOriginator;

  AlarmQuery(this.pageLink,
      {this.affectedEntityId,
      this.searchStatus,
      this.status,
      this.assigneeId,
      this.fetchOriginator});

  Map<String, dynamic> toQueryParameters() {
    var queryParameters = pageLink.toQueryParameters();
    if (searchStatus != null) {
      queryParameters['searchStatus'] = searchStatus!.toShortString();
    } else if (status != null) {
      queryParameters['status'] = status!.toShortString();
    }
    if (assigneeId != null) {
      queryParameters['assigneeId'] = assigneeId!.id;
    }
    if (fetchOriginator != null) {
      queryParameters['fetchOriginator'] = fetchOriginator;
    }
    return queryParameters;
  }
}

class AlarmQueryV2 {
  EntityId? affectedEntityId;
  TimePageLink pageLink;
  List<String>? typeList;
  List<AlarmSearchStatus>? statusList;
  List<AlarmSeverity>? severityList;
  UserId? assigneeId;

  AlarmQueryV2(this.pageLink,
      {this.affectedEntityId,
      this.typeList,
      this.statusList,
      this.severityList,
      this.assigneeId});

  Map<String, dynamic> toQueryParameters() {
    var queryParameters = pageLink.toQueryParameters();
    if (typeList != null) {
      queryParameters['typeList'] = typeList!.join(',');
    }
    if (statusList != null) {
      queryParameters['statusList'] =
          statusList!.map((e) => e.toShortString()).join(',');
    }
    if (severityList != null) {
      queryParameters['severityList'] =
          severityList!.map((e) => e.toShortString()).join(',');
    }
    if (assigneeId != null) {
      queryParameters['assigneeId'] = assigneeId!.id;
    }
    return queryParameters;
  }
}
