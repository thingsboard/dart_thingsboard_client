import 'page/page_link.dart';
import 'id/entity_id.dart';
import 'id/tenant_id.dart';
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
  TenantId tenantId;
  String type;
  EntityId originator;
  AlarmSeverity severity;
  AlarmStatus status;
  int startTs;
  int endTs;
  int ackTs;
  int clearTs;
  bool propagate;
  Map<String, dynamic>? details;

  Alarm.fromJson(Map<String, dynamic> json)
      : tenantId = TenantId.fromJson(json['tenantId']),
        type = json['type'],
        originator = EntityId.fromJson(json['originator']),
        severity = alarmSeverityFromString(json['severity']),
        status = alarmStatusFromString(json['status']),
        startTs = json['startTs'],
        endTs = json['endTs'],
        ackTs = json['ackTs'],
        clearTs = json['clearTs'],
        propagate = json['propagate'],
        details = json['details'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['tenantId'] = tenantId.toJson();
    json['type'] = type;
    json['originator'] = originator.toJson();
    json['severity'] = severity.toShortString();
    json['status'] = status.toShortString();
    json['startTs'] = startTs;
    json['endTs'] = endTs;
    json['ackTs'] = ackTs;
    json['clearTs'] = clearTs;
    json['propagate'] = propagate;
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
    return '${baseDataString('tenantId: $tenantId, type: $type, originator: $originator, severity: $severity, '
        'status: $status, startTs: $startTs, endTs: $endTs, ackTs: $ackTs, clearTs: $clearTs, propagate: $propagate, details: $details${toStringBody != null ? ', ' + toStringBody : ''}')}';
  }
}

class AlarmInfo extends Alarm {
  String? originatorName;

  AlarmInfo.fromJson(Map<String, dynamic> json)
      : originatorName = json['originatorName'],
        super.fromJson(json);

  @override
  String toString() {
    return 'AlarmInfo{${alarmInfoString()}}';
  }

  String alarmInfoString([String? toStringBody]) {
    return '${alarmString('originatorName: $originatorName${toStringBody != null ? ', ' + toStringBody : ''}')}';
  }
}

class AlarmQuery {
  EntityId? affectedEntityId;
  TimePageLink pageLink;
  AlarmSearchStatus? searchStatus;
  AlarmStatus? status;
  bool? fetchOriginator;

  AlarmQuery(this.pageLink,
      {this.affectedEntityId,
      this.searchStatus,
      this.status,
      this.fetchOriginator});

  Map<String, dynamic> toQueryParameters() {
    var queryParameters = pageLink.toQueryParameters();
    if (searchStatus != null) {
      queryParameters['searchStatus'] = searchStatus!.toShortString();
    } else if (status != null) {
      queryParameters['status'] = status!.toShortString();
    }
    if (fetchOriginator != null) {
      queryParameters['fetchOriginator'] = fetchOriginator;
    }
    return queryParameters;
  }
}
