import 'package:thingsboard_client/thingsboard_client.dart';

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

enum AlarmCommentType { SYSTEM, OTHER }

AlarmCommentType alarmCommentTypeFromString(String value) {
  return AlarmCommentType.values.firstWhere(
    (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase(),
  );
}

extension AlarmCommentTypeToString on AlarmCommentType {
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
  AlarmStatus status;
  bool acknowledged;
  bool cleared;
  UserId? assigneeId;
  int? startTs;
  int? endTs;
  int? ackTs;
  List<String>? propagateRelationTypes;
  int? clearTs;
  int? assignTs;
  bool? propagate;
  bool? propagateToOwner;
  bool? propagateToTenant;
  dynamic details;

  Alarm(this.originator, this.type, this.severity,
      {this.acknowledged = false, this.cleared = false})
      : this.status = toStatus(cleared, acknowledged);
  static AlarmStatus toStatus(bool cleared, bool acknowledged) {
    if (cleared) {
      return acknowledged ? AlarmStatus.CLEARED_ACK : AlarmStatus.CLEARED_UNACK;
    } else {
      return acknowledged ? AlarmStatus.ACTIVE_ACK : AlarmStatus.ACTIVE_UNACK;
    }
  }

  Alarm.fromJson(Map<String, dynamic> json)
      : tenantId = json['tenantId'] != null? TenantId.fromJson(json['tenantId']) : null,
        customerId = json['customerId'] != null
            ? CustomerId.fromJson(json['customerId'])
            : null,
        type = json['type'],
        originator = EntityId.fromJson(json['originator']),
        severity = alarmSeverityFromString(json['severity']),
        status = alarmStatusFromString(json['status']),
        acknowledged = json['acknowledged'],
        cleared = json['cleared'],
        propagateRelationTypes =
            List<String>.from(json['propagateRelationTypes'] ?? []),
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
    json['status'] = status.toShortString();
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
    json['propagateRelationTypes'] = propagateRelationTypes;
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
        'propagateToTenant: $propagateToTenant, propagateRelationTypes: $propagateRelationTypes,  details: $details${toStringBody != null ? ', ' + toStringBody : ''}')}';
  }
}

class AlarmInfo extends Alarm {
  String? originatorName;
  String? originatorLabel;
  AlarmAssignee? assignee;
  String? originatorDisplayName;

  AlarmInfo.fromJson(Map<String, dynamic> json)
      : originatorName = json['originatorName'],
        originatorLabel = json['originatorLabel'],
        originatorDisplayName = json['originatorDisplayName'],
        assignee = json['assignee'] != null
            ? AlarmAssignee.fromJson(json['assignee'])
            : null,
        super.fromJson(json);

  @override
  String toString() {
    return 'AlarmInfo{${alarmInfoString()}}';
  }

  String alarmInfoString([String? toStringBody]) {
    return '${alarmString('originatorName: $originatorName, originatorDisplayName: $originatorDisplayName, originatorLabel: $originatorLabel, '
        'assignee: $assignee${toStringBody != null ? ', ' + toStringBody : ''}')}';
  }
}

class AlarmAssignee {
  UserId? id;
  String? firstName;
  String? lastName;
  String email;

  AlarmAssignee.fromJson(Map<String, dynamic> json)
      : id = json['id'] != null ? UserId.fromJson(json['id']) : null,
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
  @deprecated
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

class AlarmComment {
  String? id;
  int? createdTime;
  AlarmId alarmId;
  UserId? userId;
  AlarmCommentType type;
  dynamic comment;
  String? name;
  AlarmComment(this.id, this.createdTime, this.alarmId, this.userId, this.type,
      this.comment, this.name);
  AlarmComment.fromJson(Map<String, dynamic> json)
      : comment = json['comment'],
        id = json['id']['id'],
        createdTime = json['createdTime'],
        alarmId = AlarmId.fromJson(json['alarmId']),
        userId =
            json['userId'] != null ? UserId.fromJson(json['userId']) : null,
        type = alarmCommentTypeFromString(json['type']),
        name = json['name'];
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "createdTime": createdTime,
      "alarmId": alarmId.toJson(),
      "userId": userId?.toJson(),
      "type": type.toShortString(),
      "comment": comment,
      "name": name,
    };
  }
}

class AlarmCommentInfo extends AlarmComment {
  String? firstName;
  String? lastName;
  String? email;
  AlarmCommentInfo(
      super.id,
      super.createdTime,
      super.alarmId,
      super.userId,
      super.type,
      super.comment,
      super.name,
      this.email,
      this.firstName,
      this.lastName);
  AlarmCommentInfo.fromJson(Map<String, dynamic> json)
      : firstName = json['firstName'],
        lastName = json['lastName'],
        email = json['email'],
        super.fromJson(json);
  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['firstName'] = firstName;
    json['lastName'] = lastName;
    json['email'] = email;
    return json;
  }
}

class AlarmCommentJsonNode {
  const AlarmCommentJsonNode({
    required this.text,
    required this.subtype,
    required this.userId,
    required this.edited,
    required this.editedOn,
    required this.assigneeId,
  });

  final String text;
  final String? subtype;
  final UserId? userId;
  final bool edited;
  final int? editedOn;
  final String? assigneeId;

  factory AlarmCommentJsonNode.fromJson(Map<String, dynamic> json) {
    return AlarmCommentJsonNode(
      text: json['text'],
      subtype: json['subtype'],
      userId: json['userId'] != null ? UserId(json['userId']) : null,
      edited: json['edited'] != null,
      editedOn: json['editedOn'],
      assigneeId: json['assigneeId'],
    );
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'text': text};
    if (subtype != null) {
      json['subtype'] = subtype;
    }
    if (userId != null) {
      json['userId'] = userId!.toJson();
    }
    if (edited) {
      json['edited'] = 'true';
    }
    if (editedOn != null) {
      json['editedOn'] = editedOn;
    }

    return json;
  }
}

class AlarmCommentsQuery {
  const AlarmCommentsQuery({
    required this.pageLink,
    required this.id,
  });

  final PageLink pageLink;
  final AlarmId id;

  Map<String, dynamic> toQueryParameters() {
    return pageLink.toQueryParameters();
  }
}
