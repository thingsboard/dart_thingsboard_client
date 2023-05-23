import 'base_data.dart';
import 'id/edge_event_id.dart';
import 'relation_models.dart';
import 'has_customer_id.dart';
import 'has_name.dart';
import 'has_tenant_id.dart';
import 'id/customer_id.dart';
import 'id/edge_id.dart';
import 'additional_info_based.dart';
import 'id/rule_chain_id.dart';
import 'id/tenant_id.dart';

class Edge extends AdditionalInfoBased<EdgeId>
    with HasName, HasTenantId, HasCustomerId {
  TenantId? tenantId;
  CustomerId? customerId;
  RuleChainId? rootRuleChainId;
  String name;
  String type;
  String? label;
  String routingKey;
  String secret;
  String edgeLicenseKey;
  String cloudEndpoint;

  Edge(this.name, this.type, this.routingKey, this.secret, this.edgeLicenseKey,
      this.cloudEndpoint);

  Edge.fromJson(Map<String, dynamic> json)
      : tenantId = TenantId.fromJson(json['tenantId']),
        customerId = json['customerId'] != null
            ? CustomerId.fromJson(json['customerId'])
            : null,
        name = json['name'],
        type = json['type'],
        label = json['label'],
        routingKey = json['routingKey'],
        secret = json['secret'],
        edgeLicenseKey = json['edgeLicenseKey'],
        cloudEndpoint = json['cloudEndpoint'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (tenantId != null) {
      json['tenantId'] = tenantId!.toJson();
    }
    if (customerId != null) {
      json['customerId'] = customerId!.toJson();
    }
    json['name'] = name;
    json['type'] = type;
    if (label != null) {
      json['label'] = label;
    }
    json['routingKey'] = routingKey;
    json['secret'] = secret;
    json['edgeLicenseKey'] = edgeLicenseKey;
    json['cloudEndpoint'] = cloudEndpoint;
    return json;
  }

  @override
  String getName() {
    return name;
  }

  @override
  TenantId? getTenantId() {
    return tenantId;
  }

  @override
  CustomerId? getCustomerId() {
    return customerId;
  }

  @override
  String toString() {
    return 'Edge{${edgeString()}}';
  }

  String edgeString([String? toStringBody]) {
    return '${additionalInfoBasedString('tenantId: $tenantId, customerId: $customerId, name: $name, type: $type, '
        'label: $label, routingKey: $routingKey, secret: $secret, edgeLicenseKey: $edgeLicenseKey, '
        'cloudEndpoint: $cloudEndpoint${toStringBody != null ? ', ' + toStringBody : ''}')}';
  }
}

class EdgeInfo extends Edge {
  String? customerTitle;
  bool? customerIsPublic;

  EdgeInfo.fromJson(Map<String, dynamic> json)
      : customerTitle = json['customerTitle'],
        customerIsPublic = json['customerIsPublic'],
        super.fromJson(json);

  @override
  String toString() {
    return 'EdgeInfo{${edgeString('customerTitle: $customerTitle, customerIsPublic: $customerIsPublic')}}';
  }
}

class EdgeSearchQuery extends EntitySearchQuery {
  List<String> edgeTypes;

  EdgeSearchQuery(
      {required RelationsSearchParameters parameters,
      required this.edgeTypes,
      String? relationType})
      : super(parameters: parameters, relationType: relationType);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['edgeTypes'] = edgeTypes;
    return json;
  }

  @override
  String toString() {
    return 'EdgeSearchQuery{${entitySearchQueryString('edgeTypes: $edgeTypes')}}';
  }
}

enum EdgeEventActionType {
  ADDED,
  DELETED,
  UPDATED,
  POST_ATTRIBUTES,
  ATTRIBUTES_UPDATED,
  ATTRIBUTES_DELETED,
  TIMESERIES_UPDATED,
  CREDENTIALS_UPDATED,
  ASSIGNED_TO_CUSTOMER,
  UNASSIGNED_FROM_CUSTOMER,
  RELATION_ADD_OR_UPDATE,
  RELATION_DELETED,
  RPC_CALL,
  ALARM_ACK,
  ALARM_CLEAR,
  ALARM_ASSIGNED,
  ALARM_UNASSIGNED,
  ASSIGNED_TO_EDGE,
  UNASSIGNED_FROM_EDGE,
  CREDENTIALS_REQUEST,
  ENTITY_MERGE_REQUEST
}

EdgeEventActionType edgeEventActionTypeFromString(String value) {
  return EdgeEventActionType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension EdgeEventActionTypeToString on EdgeEventActionType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum EdgeEventType {
  DASHBOARD,
  ASSET,
  DEVICE,
  DEVICE_PROFILE,
  ASSET_PROFILE,
  ENTITY_VIEW,
  ALARM,
  RULE_CHAIN,
  RULE_CHAIN_METADATA,
  EDGE,
  USER,
  CUSTOMER,
  RELATION,
  TENANT,
  WIDGETS_BUNDLE,
  WIDGET_TYPE,
  ADMIN_SETTINGS,
  OTA_PACKAGE,
  QUEUE
}

EdgeEventType edgeEventTypeFromString(String value) {
  return EdgeEventType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension EdgeEventTypeToString on EdgeEventType {
  String toShortString() {
    return toString().split('.').last;
  }
}

class EdgeEvent extends BaseData<EdgeEventId> {
  TenantId tenantId;
  EdgeId edgeId;
  EdgeEventActionType action;
  String? entityId;
  String uid;
  EdgeEventType type;
  Map<String, dynamic>? body;

  EdgeEvent.fromJson(Map<String, dynamic> json)
      : tenantId = TenantId.fromJson(json['tenantId']),
        edgeId = EdgeId.fromJson(json['edgeId']),
        action = edgeEventActionTypeFromString(json['action']),
        entityId = json['entityId'],
        uid = json['uid'],
        type = edgeEventTypeFromString(json['type']),
        body = json['body'],
        super.fromJson(json, (id) => EdgeEventId(id));

  @override
  String toString() {
    return 'EdgeEvent{${baseDataString('tenantId: $tenantId, edgeId: $edgeId, action: ${action.toShortString()}, entityId: $entityId, uid: $uid, type: ${type.toShortString()}, body: $body')}}';
  }
}
