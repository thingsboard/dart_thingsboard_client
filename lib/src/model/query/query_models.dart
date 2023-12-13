import '../alarm_models.dart';
import '../id/customer_id.dart';

import '../entity_type_models.dart';
import '../id/entity_id.dart';
import '../relation_models.dart';
import '../telemetry_models.dart';

enum EntityFilterType {
  SINGLE_ENTITY,
  ENTITY_LIST,
  ENTITY_NAME,
  ENTITY_TYPE,
  ASSET_TYPE,
  DEVICE_TYPE,
  ENTITY_VIEW_TYPE,
  EDGE_TYPE,
  RELATIONS_QUERY,
  ASSET_SEARCH_QUERY,
  DEVICE_SEARCH_QUERY,
  ENTITY_VIEW_SEARCH_QUERY,
  EDGE_SEARCH_QUERY,
  API_USAGE_STATE
}

const Map<EntityFilterType, String> entityFilterTypeToStringMap = {
  EntityFilterType.SINGLE_ENTITY: 'singleEntity',
  EntityFilterType.ENTITY_LIST: 'entityList',
  EntityFilterType.ENTITY_NAME: 'entityName',
  EntityFilterType.ENTITY_TYPE: 'entityType',
  EntityFilterType.ASSET_TYPE: 'assetType',
  EntityFilterType.DEVICE_TYPE: 'deviceType',
  EntityFilterType.ENTITY_VIEW_TYPE: 'entityViewType',
  EntityFilterType.EDGE_TYPE: 'edgeType',
  EntityFilterType.RELATIONS_QUERY: 'relationsQuery',
  EntityFilterType.ASSET_SEARCH_QUERY: 'assetSearchQuery',
  EntityFilterType.DEVICE_SEARCH_QUERY: 'deviceSearchQuery',
  EntityFilterType.ENTITY_VIEW_SEARCH_QUERY: 'entityViewSearchQuery',
  EntityFilterType.EDGE_SEARCH_QUERY: 'edgeSearchQuery',
  EntityFilterType.API_USAGE_STATE: 'apiUsageState'
};

Map<String, EntityFilterType> stringToEntityFilterTypeMap =
    entityFilterTypeToStringMap.map((key, value) => MapEntry(value, key));

EntityFilterType entityFilterTypeFromString(String value) {
  return stringToEntityFilterTypeMap[value]!;
}

extension EntityFilterTypeToString on EntityFilterType {
  String toShortString() {
    return entityFilterTypeToStringMap[this]!;
  }
}

abstract class EntityFilter {
  EntityFilterType getType();

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['type'] = getType().toShortString();
    return json;
  }
}

class SingleEntityFilter extends EntityFilter {
  EntityId singleEntity;

  SingleEntityFilter({required this.singleEntity});

  @override
  EntityFilterType getType() {
    return EntityFilterType.SINGLE_ENTITY;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['singleEntity'] = singleEntity.toJson();
    return json;
  }

  @override
  String toString() {
    return 'SingleEntityFilter{singleEntity: $singleEntity}';
  }
}

class EntityListFilter extends EntityFilter {
  EntityType entityType;
  List<String> entityList;

  EntityListFilter({required this.entityType, required this.entityList});

  @override
  EntityFilterType getType() {
    return EntityFilterType.ENTITY_LIST;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityType'] = entityType.toShortString();
    json['entityList'] = entityList;
    return json;
  }

  @override
  String toString() {
    return 'EntityListFilter{entityType: $entityType, entityList: $entityList}';
  }
}

class EntityNameFilter extends EntityFilter {
  EntityType entityType;
  String entityNameFilter;

  EntityNameFilter({required this.entityType, required this.entityNameFilter});

  @override
  EntityFilterType getType() {
    return EntityFilterType.ENTITY_NAME;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityType'] = entityType.toShortString();
    json['entityNameFilter'] = entityNameFilter;
    return json;
  }

  @override
  String toString() {
    return 'EntityNameFilter{entityType: $entityType, entityNameFilter: $entityNameFilter}';
  }
}

class EntityTypeFilter extends EntityFilter {
  EntityType entityType;

  EntityTypeFilter({required this.entityType});

  @override
  EntityFilterType getType() {
    return EntityFilterType.ENTITY_TYPE;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityType'] = entityType.toShortString();
    return json;
  }

  @override
  String toString() {
    return 'EntityTypeFilter{entityType: $entityType}';
  }
}

class AssetTypeFilter extends EntityFilter {
  String assetType;
  String? assetNameFilter;

  AssetTypeFilter({required this.assetType, this.assetNameFilter});

  @override
  EntityFilterType getType() {
    return EntityFilterType.ASSET_TYPE;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['assetType'] = assetType;
    if (assetNameFilter != null) {
      json['assetNameFilter'] = assetNameFilter;
    }
    return json;
  }

  @override
  String toString() {
    return 'AssetTypeFilter{assetType: $assetType, assetNameFilter: $assetNameFilter}';
  }
}

class DeviceTypeFilter extends EntityFilter {
  String deviceType;
  String? deviceNameFilter;

  DeviceTypeFilter({required this.deviceType, this.deviceNameFilter});

  @override
  EntityFilterType getType() {
    return EntityFilterType.DEVICE_TYPE;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['deviceType'] = deviceType;
    if (deviceNameFilter != null) {
      json['deviceNameFilter'] = deviceNameFilter;
    }
    return json;
  }

  @override
  String toString() {
    return 'DeviceTypeFilter{deviceType: $deviceType, deviceNameFilter: $deviceNameFilter}';
  }
}

class EdgeTypeFilter extends EntityFilter {
  String edgeType;
  String? edgeNameFilter;

  EdgeTypeFilter({required this.edgeType, this.edgeNameFilter});

  @override
  EntityFilterType getType() {
    return EntityFilterType.EDGE_TYPE;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['edgeType'] = edgeType;
    if (edgeNameFilter != null) {
      json['edgeNameFilter'] = edgeNameFilter;
    }
    return json;
  }

  @override
  String toString() {
    return 'EdgeTypeFilter{edgeType: $edgeType, edgeNameFilter: $edgeNameFilter}';
  }
}

class EntityViewTypeFilter extends EntityFilter {
  String entityViewType;
  String? entityViewNameFilter;

  EntityViewTypeFilter(
      {required this.entityViewType, this.entityViewNameFilter});

  @override
  EntityFilterType getType() {
    return EntityFilterType.ENTITY_VIEW_TYPE;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityViewType'] = entityViewType;
    if (entityViewNameFilter != null) {
      json['entityViewNameFilter'] = entityViewNameFilter;
    }
    return json;
  }

  @override
  String toString() {
    return 'EntityViewTypeFilter{entityViewType: $entityViewType, entityViewNameFilter: $entityViewNameFilter}';
  }
}

class ApiUsageStateFilter extends EntityFilter {
  CustomerId? customerId;

  ApiUsageStateFilter({this.customerId});

  @override
  EntityFilterType getType() {
    return EntityFilterType.API_USAGE_STATE;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (customerId != null) {
      json['customerId'] = customerId!.toJson();
    }
    return json;
  }

  @override
  String toString() {
    return 'ApiUsageStateFilter{customerId: $customerId}';
  }
}

class RelationsQueryFilter extends EntityFilter {
  EntityId rootEntity;
  EntitySearchDirection direction;
  List<RelationEntityTypeFilter>? filters;
  int maxLevel;
  bool fetchLastLevelOnly;

  RelationsQueryFilter(
      {required this.rootEntity,
      this.direction = EntitySearchDirection.FROM,
      this.filters,
      this.maxLevel = 1,
      this.fetchLastLevelOnly = false});

  @override
  EntityFilterType getType() {
    return EntityFilterType.RELATIONS_QUERY;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['rootEntity'] = rootEntity.toJson();
    json['direction'] = direction.toShortString();
    json['maxLevel'] = maxLevel;
    json['fetchLastLevelOnly'] = fetchLastLevelOnly;
    if (filters != null) {
      json['filters'] = filters!.map((e) => e.toJson()).toList();
    }
    return json;
  }

  @override
  String toString() {
    return 'RelationsQueryFilter{rootEntity: $rootEntity, direction: $direction, filters: $filters, maxLevel: $maxLevel, fetchLastLevelOnly: $fetchLastLevelOnly}';
  }
}

abstract class EntitySearchQueryFilter extends EntityFilter {
  EntityId rootEntity;
  String? relationType;
  EntitySearchDirection direction;
  int maxLevel;
  bool fetchLastLevelOnly;

  EntitySearchQueryFilter(
      {required this.rootEntity,
      this.relationType,
      this.direction = EntitySearchDirection.FROM,
      this.maxLevel = 1,
      this.fetchLastLevelOnly = false});

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['rootEntity'] = rootEntity.toJson();
    json['direction'] = direction.toShortString();
    json['maxLevel'] = maxLevel;
    json['fetchLastLevelOnly'] = fetchLastLevelOnly;
    if (relationType != null) {
      json['relationType'] = relationType;
    }
    return json;
  }

  @override
  String toString() {
    return 'EntitySearchQueryFilter{${entitySearchQueryFilterString()}';
  }

  String entitySearchQueryFilterString([String? toStringBody]) {
    return 'rootEntity: $rootEntity, relationType: $relationType, direction: $direction, maxLevel: $maxLevel, fetchLastLevelOnly: $fetchLastLevelOnly${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}

class AssetSearchQueryFilter extends EntitySearchQueryFilter {
  List<String> assetTypes;

  AssetSearchQueryFilter(
      {required this.assetTypes,
      required EntityId rootEntity,
      String? relationType,
      EntitySearchDirection direction = EntitySearchDirection.FROM,
      int maxLevel = 1,
      bool fetchLastLevelOnly = false})
      : super(
            rootEntity: rootEntity,
            relationType: relationType,
            direction: direction,
            maxLevel: maxLevel,
            fetchLastLevelOnly: fetchLastLevelOnly);

  @override
  EntityFilterType getType() {
    return EntityFilterType.ASSET_SEARCH_QUERY;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['assetTypes'] = assetTypes;
    return json;
  }

  @override
  String toString() {
    return 'AssetSearchQueryFilter{${entitySearchQueryFilterString('assetTypes: $assetTypes')}';
  }
}

class DeviceSearchQueryFilter extends EntitySearchQueryFilter {
  List<String> deviceTypes;

  DeviceSearchQueryFilter(
      {required this.deviceTypes,
      required EntityId rootEntity,
      String? relationType,
      EntitySearchDirection direction = EntitySearchDirection.FROM,
      int maxLevel = 1,
      bool fetchLastLevelOnly = false})
      : super(
            rootEntity: rootEntity,
            relationType: relationType,
            direction: direction,
            maxLevel: maxLevel,
            fetchLastLevelOnly: fetchLastLevelOnly);

  @override
  EntityFilterType getType() {
    return EntityFilterType.DEVICE_SEARCH_QUERY;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['deviceTypes'] = deviceTypes;
    return json;
  }

  @override
  String toString() {
    return 'DeviceSearchQueryFilter{${entitySearchQueryFilterString('deviceTypes: $deviceTypes')}';
  }
}

class EntityViewSearchQueryFilter extends EntitySearchQueryFilter {
  List<String> entityViewTypes;

  EntityViewSearchQueryFilter(
      {required this.entityViewTypes,
      required EntityId rootEntity,
      String? relationType,
      EntitySearchDirection direction = EntitySearchDirection.FROM,
      int maxLevel = 1,
      bool fetchLastLevelOnly = false})
      : super(
            rootEntity: rootEntity,
            relationType: relationType,
            direction: direction,
            maxLevel: maxLevel,
            fetchLastLevelOnly: fetchLastLevelOnly);

  @override
  EntityFilterType getType() {
    return EntityFilterType.ENTITY_VIEW_SEARCH_QUERY;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityViewTypes'] = entityViewTypes;
    return json;
  }

  @override
  String toString() {
    return 'EntityViewSearchQueryFilter{${entitySearchQueryFilterString('entityViewTypes: $entityViewTypes')}';
  }
}

class EdgeSearchQueryFilter extends EntitySearchQueryFilter {
  List<String> edgeTypes;

  EdgeSearchQueryFilter(
      {required this.edgeTypes,
      required EntityId rootEntity,
      String? relationType,
      EntitySearchDirection direction = EntitySearchDirection.FROM,
      int maxLevel = 1,
      bool fetchLastLevelOnly = false})
      : super(
            rootEntity: rootEntity,
            relationType: relationType,
            direction: direction,
            maxLevel: maxLevel,
            fetchLastLevelOnly: fetchLastLevelOnly);

  @override
  EntityFilterType getType() {
    return EntityFilterType.EDGE_SEARCH_QUERY;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['edgeTypes'] = edgeTypes;
    return json;
  }

  @override
  String toString() {
    return 'EdgeSearchQueryFilter{${entitySearchQueryFilterString('edgeTypes: $edgeTypes')}';
  }
}

enum EntityKeyType {
  ATTRIBUTE,
  CLIENT_ATTRIBUTE,
  SHARED_ATTRIBUTE,
  SERVER_ATTRIBUTE,
  TIME_SERIES,
  ENTITY_FIELD,
  ALARM_FIELD
}

EntityKeyType entityKeyTypeFromString(String value) {
  return EntityKeyType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension EntityKeyTypeToString on EntityKeyType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum EntityKeyValueType { STRING, NUMERIC, BOOLEAN, DATE_TIME }

EntityKeyValueType entityKeyValueTypeFromString(String value) {
  return EntityKeyValueType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension EntityKeyValueTypeToString on EntityKeyValueType {
  String toShortString() {
    return toString().split('.').last;
  }
}

class EntityKey {
  EntityKeyType type;
  String key;

  EntityKey({required this.type, required this.key});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['type'] = type.toShortString();
    json['key'] = key;
    return json;
  }

  @override
  String toString() {
    return 'EntityKey{type: $type, key: $key}';
  }
}

enum DynamicValueSourceType {
  CURRENT_TENANT,
  CURRENT_CUSTOMER,
  CURRENT_USER,
  CURRENT_DEVICE
}

DynamicValueSourceType dynamicValueSourceTypeFromString(String value) {
  return DynamicValueSourceType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension DynamicValueSourceTypeToString on DynamicValueSourceType {
  String toShortString() {
    return toString().split('.').last;
  }
}

class DynamicValue<T> {
  DynamicValueSourceType sourceType;
  String sourceAttribute;
  bool inherit;

  DynamicValue(
      {required this.sourceType,
      required this.sourceAttribute,
      this.inherit = false});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['sourceType'] = sourceType.toShortString();
    json['sourceAttribute'] = sourceAttribute;
    json['inherit'] = inherit;
    return json;
  }

  @override
  String toString() {
    return 'DynamicValue{sourceType: $sourceType, sourceAttribute: $sourceAttribute, inherit: $inherit}';
  }
}

class FilterPredicateValue<T> {
  T defaultValue;
  T? userValue;
  DynamicValue<T>? dynamicValue;

  FilterPredicateValue(this.defaultValue, {this.userValue, this.dynamicValue});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['defaultValue'] = defaultValue;
    if (userValue != null) {
      json['userValue'] = userValue;
    }
    if (dynamicValue != null) {
      json['dynamicValue'] = dynamicValue!.toJson();
    }
    return json;
  }

  @override
  String toString() {
    return 'FilterPredicateValue{defaultValue: $defaultValue, userValue: $userValue, dynamicValue: $dynamicValue}';
  }
}

enum FilterPredicateType { STRING, NUMERIC, BOOLEAN, COMPLEX }

FilterPredicateType filterPredicateTypeFromString(String value) {
  return FilterPredicateType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension FilterPredicateTypeToString on FilterPredicateType {
  String toShortString() {
    return toString().split('.').last;
  }
}

abstract class KeyFilterPredicate {
  FilterPredicateType getType();

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['type'] = getType().toShortString();
    return json;
  }
}

abstract class SimpleKeyFilterPredicate<T> extends KeyFilterPredicate {
  FilterPredicateValue<T> getValue();
}

enum StringOperation {
  EQUAL,
  NOT_EQUAL,
  STARTS_WITH,
  ENDS_WITH,
  CONTAINS,
  NOT_CONTAINS
}

StringOperation stringOperationFromString(String value) {
  return StringOperation.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension StringOperationToString on StringOperation {
  String toShortString() {
    return toString().split('.').last;
  }
}

class StringFilterPredicate extends SimpleKeyFilterPredicate<String> {
  StringOperation operation;
  FilterPredicateValue<String> value;
  bool ignoreCase;

  StringFilterPredicate(
      {required this.operation, required this.value, this.ignoreCase = false});

  @override
  FilterPredicateType getType() {
    return FilterPredicateType.STRING;
  }

  @override
  FilterPredicateValue<String> getValue() {
    return value;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['operation'] = operation.toShortString();
    json['value'] = value.toJson();
    json['ignoreCase'] = ignoreCase;
    return json;
  }

  @override
  String toString() {
    return 'StringFilterPredicate{operation: $operation, value: $value, ignoreCase: $ignoreCase}';
  }
}

enum NumericOperation {
  EQUAL,
  NOT_EQUAL,
  GREATER,
  LESS,
  GREATER_OR_EQUAL,
  LESS_OR_EQUAL
}

NumericOperation numericOperationFromString(String value) {
  return NumericOperation.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension NumericOperationToString on NumericOperation {
  String toShortString() {
    return toString().split('.').last;
  }
}

class NumericFilterPredicate extends SimpleKeyFilterPredicate<double> {
  NumericOperation operation;
  FilterPredicateValue<double> value;

  NumericFilterPredicate({required this.operation, required this.value});

  @override
  FilterPredicateType getType() {
    return FilterPredicateType.NUMERIC;
  }

  @override
  FilterPredicateValue<double> getValue() {
    return value;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['operation'] = operation.toShortString();
    json['value'] = value.toJson();
    return json;
  }

  @override
  String toString() {
    return 'NumericFilterPredicate{operation: $operation, value: $value}';
  }
}

enum BooleanOperation { EQUAL, NOT_EQUAL }

BooleanOperation booleanOperationFromString(String value) {
  return BooleanOperation.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension BooleanOperationToString on BooleanOperation {
  String toShortString() {
    return toString().split('.').last;
  }
}

class BooleanFilterPredicate extends SimpleKeyFilterPredicate<bool> {
  BooleanOperation operation;
  FilterPredicateValue<bool> value;

  BooleanFilterPredicate({required this.operation, required this.value});

  @override
  FilterPredicateType getType() {
    return FilterPredicateType.BOOLEAN;
  }

  @override
  FilterPredicateValue<bool> getValue() {
    return value;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['operation'] = operation.toShortString();
    json['value'] = value.toJson();
    return json;
  }

  @override
  String toString() {
    return 'BooleanFilterPredicate{operation: $operation, value: $value}';
  }
}

enum ComplexOperation { AND, OR }

ComplexOperation complexOperationFromString(String value) {
  return ComplexOperation.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension ComplexOperationToString on ComplexOperation {
  String toShortString() {
    return toString().split('.').last;
  }
}

class ComplexFilterPredicate extends KeyFilterPredicate {
  ComplexOperation operation;
  List<KeyFilterPredicate> predicates;

  ComplexFilterPredicate({required this.operation, required this.predicates});

  @override
  FilterPredicateType getType() {
    return FilterPredicateType.COMPLEX;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['operation'] = operation.toShortString();
    json['predicates'] = predicates.map((e) => e.toJson()).toList();
    return json;
  }

  @override
  String toString() {
    return 'ComplexFilterPredicate{operation: $operation, predicates: $predicates}';
  }
}

class KeyFilter {
  EntityKey key;
  EntityKeyValueType valueType;
  KeyFilterPredicate predicate;

  KeyFilter(
      {required this.key, required this.valueType, required this.predicate});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['key'] = key.toJson();
    json['valueType'] = valueType.toShortString();
    json['predicate'] = predicate.toJson();
    return json;
  }

  @override
  String toString() {
    return 'KeyFilter{key: $key, valueType: $valueType, predicate: $predicate}';
  }
}

class EntityCountQuery {
  EntityFilter entityFilter;
  List<KeyFilter>? keyFilters;

  EntityCountQuery({required this.entityFilter, this.keyFilters});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['entityFilter'] = entityFilter.toJson();
    json['keyFilters'] =
        keyFilters != null ? keyFilters!.map((e) => e.toJson()).toList() : [];
    return json;
  }

  @override
  String toString() {
    return 'EntityCountQuery{${entityCountQueryString()}}';
  }

  String entityCountQueryString([String? toStringBody]) {
    return 'entityFilter: $entityFilter, keyFilters: $keyFilters${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}

enum EntityDataSortOrderDirection { ASC, DESC }

EntityDataSortOrderDirection entityDataSortOrderDirectionFromString(
    String value) {
  return EntityDataSortOrderDirection.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension EntityDataSortOrderDirectionToString on EntityDataSortOrderDirection {
  String toShortString() {
    return toString().split('.').last;
  }
}

class EntityDataSortOrder {
  EntityKey key;
  EntityDataSortOrderDirection direction;

  EntityDataSortOrder({required this.key, required this.direction});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['key'] = key.toJson();
    json['direction'] = direction.toShortString();
    return json;
  }

  @override
  String toString() {
    return 'EntityDataSortOrder{key: $key, direction: $direction}';
  }
}

class EntityDataPageLink {
  int pageSize;
  int page;
  String? textSearch;
  EntityDataSortOrder? sortOrder;
  bool isDynamic;

  EntityDataPageLink(
      {required this.pageSize,
      this.page = 0,
      this.textSearch,
      this.sortOrder,
      this.isDynamic = false});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['pageSize'] = pageSize;
    json['page'] = page;
    if (textSearch != null) {
      json['textSearch'] = textSearch;
    }
    if (sortOrder != null) {
      json['sortOrder'] = sortOrder!.toJson();
    }
    json['dynamic'] = isDynamic;
    return json;
  }

  EntityDataPageLink nextPageLink() {
    return EntityDataPageLink(
        pageSize: pageSize,
        page: page + 1,
        textSearch: textSearch,
        sortOrder: sortOrder,
        isDynamic: isDynamic);
  }

  @override
  String toString() {
    return 'EntityDataPageLink{${entityDataPageLinkString()}';
  }

  String entityDataPageLinkString([String? toStringBody]) {
    return 'pageSize: $pageSize, page: $page, textSearch: $textSearch, sortOrder: $sortOrder, isDynamic: $isDynamic${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}

class AlarmDataPageLink extends EntityDataPageLink {
  int? startTs;
  int? endTs;
  int? timeWindow;

  List<String>? typeList;
  List<AlarmSearchStatus>? statusList;
  List<AlarmSeverity>? severityList;
  bool? searchPropagatedAlarms;

  AlarmDataPageLink(
      {required int pageSize,
      int page = 0,
      String? textSearch,
      EntityDataSortOrder? sortOrder,
      bool isDynamic = false,
      this.startTs,
      this.endTs,
      this.timeWindow,
      this.typeList,
      this.statusList,
      this.severityList,
      this.searchPropagatedAlarms})
      : super(
            pageSize: pageSize,
            page: page,
            textSearch: textSearch,
            sortOrder: sortOrder,
            isDynamic: isDynamic);

  @override
  AlarmDataPageLink nextPageLink() {
    return AlarmDataPageLink(
        pageSize: pageSize,
        page: page + 1,
        textSearch: textSearch,
        sortOrder: sortOrder,
        isDynamic: isDynamic,
        startTs: startTs,
        endTs: endTs,
        timeWindow: timeWindow,
        typeList: typeList,
        statusList: statusList,
        severityList: severityList,
        searchPropagatedAlarms: searchPropagatedAlarms);
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (startTs != null) {
      json['startTs'] = startTs;
    }
    if (endTs != null) {
      json['endTs'] = endTs;
    }
    if (timeWindow != null) {
      json['timeWindow'] = timeWindow;
    }
    if (typeList != null) {
      json['typeList'] = typeList;
    }
    if (statusList != null) {
      json['statusList'] = statusList!.map((e) => e.toShortString()).toList();
    }
    if (severityList != null) {
      json['severityList'] =
          severityList!.map((e) => e.toShortString()).toList();
    }
    if (searchPropagatedAlarms != null) {
      json['searchPropagatedAlarms'] = searchPropagatedAlarms;
    }
    return json;
  }

  @override
  String toString() {
    return 'AlarmDataPageLink{${entityDataPageLinkString('startTs: $startTs, endTs: $endTs, timeWindow: $timeWindow, typeList: $typeList, statusList: $statusList, severityList: $severityList, searchPropagatedAlarms: $searchPropagatedAlarms')}}';
  }
}

class AbstractDataQuery<T extends EntityDataPageLink> extends EntityCountQuery {
  T pageLink;
  List<EntityKey>? entityFields;
  List<EntityKey>? latestValues;

  AbstractDataQuery(
      {required EntityFilter entityFilter,
      List<KeyFilter>? keyFilters,
      required this.pageLink,
      this.entityFields,
      this.latestValues})
      : super(entityFilter: entityFilter, keyFilters: keyFilters);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['pageLink'] = pageLink.toJson();
    json['entityFields'] = entityFields != null
        ? entityFields!.map((e) => e.toJson()).toList()
        : [];
    json['latestValues'] = latestValues != null
        ? latestValues!.map((e) => e.toJson()).toList()
        : [];
    return json;
  }

  @override
  String toString() {
    return 'AbstractDataQuery{${dataQueryString()}}';
  }

  String dataQueryString([String? toStringBody]) {
    return '${entityCountQueryString('pageLink: $pageLink, entityFields: $entityFields, latestValues: $latestValues${toStringBody != null ? ', ' + toStringBody : ''}')}';
  }
}

class EntityDataQuery extends AbstractDataQuery<EntityDataPageLink> {
  EntityDataQuery(
      {required EntityFilter entityFilter,
      List<KeyFilter>? keyFilters,
      required EntityDataPageLink pageLink,
      List<EntityKey>? entityFields,
      List<EntityKey>? latestValues})
      : super(
            entityFilter: entityFilter,
            keyFilters: keyFilters,
            pageLink: pageLink,
            entityFields: entityFields,
            latestValues: latestValues);

  EntityDataQuery next() {
    return EntityDataQuery(
        entityFilter: entityFilter,
        pageLink: pageLink.nextPageLink(),
        keyFilters: keyFilters,
        entityFields: entityFields,
        latestValues: latestValues);
  }

  @override
  String toString() {
    return 'EntityDataQuery{${dataQueryString()}}';
  }
}

class AlarmDataQuery extends AbstractDataQuery<AlarmDataPageLink> {
  List<EntityKey>? alarmFields;

  AlarmDataQuery(
      {required EntityFilter entityFilter,
      List<KeyFilter>? keyFilters,
      required AlarmDataPageLink pageLink,
      List<EntityKey>? entityFields,
      List<EntityKey>? latestValues,
      this.alarmFields})
      : super(
            entityFilter: entityFilter,
            keyFilters: keyFilters,
            pageLink: pageLink,
            entityFields: entityFields,
            latestValues: latestValues);

  AlarmDataQuery next() {
    return AlarmDataQuery(
        entityFilter: entityFilter,
        pageLink: pageLink.nextPageLink(),
        keyFilters: keyFilters,
        entityFields: entityFields,
        latestValues: latestValues,
        alarmFields: alarmFields);
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (alarmFields != null) {
      json['alarmFields'] = alarmFields!.map((e) => e.toJson()).toList();
    }
    return json;
  }

  @override
  String toString() {
    return 'AlarmDataQuery{${dataQueryString('alarmFields: $alarmFields')}}';
  }
}

class EntityData {
  final EntityId entityId;
  final Map<EntityKeyType, Map<String, TsValue>> latest;
  final Map<String, List<TsValue>> timeseries;
  final Map<int, ComparisonTsValue> aggLatest;

  EntityData(
      {required this.entityId,
      required this.latest,
      required this.timeseries,
      required this.aggLatest});

  EntityData.fromJson(Map<String, dynamic> json)
      : entityId = EntityId.fromJson(json['entityId']),
        latest = json['latest'] != null
            ? (json['latest'] as Map<String, dynamic>).map((key, value) =>
                MapEntry(
                    entityKeyTypeFromString(key),
                    (value as Map<String, dynamic>).map((key, value) =>
                        MapEntry(key, TsValue.fromJson(value)))))
            : {},
        timeseries = json['timeseries'] != null
            ? (json['timeseries'] as Map<String, dynamic>).map((key, value) =>
                MapEntry(
                    key,
                    (value as List<dynamic>)
                        .map((e) => TsValue.fromJson(e))
                        .toList()))
            : {},
        aggLatest = json['aggLatest'] != null
            ? (json['aggLatest'] as Map<String, dynamic>).map((key, value) =>
                MapEntry(int.parse(key), ComparisonTsValue.fromJson(value)))
            : {};

  String? field(String name) {
    return _latest(name, EntityKeyType.ENTITY_FIELD);
  }

  String? attribute(String name) {
    return _latest(name, EntityKeyType.ATTRIBUTE);
  }

  String? serverAttribute(String name) {
    return _latest(name, EntityKeyType.SERVER_ATTRIBUTE);
  }

  String? sharedAttribute(String name) {
    return _latest(name, EntityKeyType.SHARED_ATTRIBUTE);
  }

  String? clientAttribute(String name) {
    return _latest(name, EntityKeyType.CLIENT_ATTRIBUTE);
  }

  int? get createdTime {
    var strTime = field('createdTime');
    if (strTime != null) {
      return int.parse(strTime);
    }
    return null;
  }

  String? _latest(String name, EntityKeyType keyType) {
    var fields = latest[keyType];
    if (fields != null) {
      var tsValue = fields[name];
      if (tsValue != null) {
        return tsValue.value;
      }
    }
    return null;
  }

  @override
  String toString() {
    return 'EntityData{entityId: $entityId, latest: $latest, timeseries: $timeseries, aggLatest: $aggLatest}';
  }
}

class AlarmData extends AlarmInfo {
  final EntityId entityId;
  final Map<EntityKeyType, Map<String, TsValue>> latest;

  AlarmData.fromJson(Map<String, dynamic> json)
      : entityId = EntityId.fromJson(json['entityId']),
        latest = json['latest'] != null
            ? (json['latest'] as Map<String, dynamic>).map((key, value) =>
                MapEntry(
                    entityKeyTypeFromString(key),
                    (value as Map<String, dynamic>).map((key, value) =>
                        MapEntry(key, TsValue.fromJson(value)))))
            : {},
        super.fromJson(json);

  @override
  String toString() {
    return 'AlarmData{${alarmInfoString('entityId: $entityId, latest: $latest')}}';
  }
}
