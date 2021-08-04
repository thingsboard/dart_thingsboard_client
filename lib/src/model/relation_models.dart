import 'entity_type_models.dart';
import 'id/entity_id.dart';

const CONTAINS_TYPE = 'Contains';
const MANAGES_TYPE = 'Manages';

enum RelationTypeGroup { COMMON, ALARM, DASHBOARD, RULE_CHAIN, RULE_NODE }

RelationTypeGroup relationTypeGroupFromString(String value) {
  return RelationTypeGroup.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension RelationTypeGroupToString on RelationTypeGroup {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum EntitySearchDirection { FROM, TO }

EntitySearchDirection entitySearchDirectionFromString(String value) {
  return EntitySearchDirection.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension EntitySearchDirectionToString on EntitySearchDirection {
  String toShortString() {
    return toString().split('.').last;
  }
}

class RelationEntityTypeFilter {
  String relationType;
  List<EntityType> entityTypes;

  RelationEntityTypeFilter(this.relationType, this.entityTypes);

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['relationType'] = relationType;
    json['entityTypes'] = entityTypes.map((e) => e.toShortString()).toList();
    return json;
  }

  @override
  String toString() {
    return 'RelationEntityTypeFilter{relationType: $relationType, entityTypes: $entityTypes}';
  }
}

class RelationsSearchParameters {
  String rootId;
  EntityType rootType;
  EntitySearchDirection direction;
  RelationTypeGroup? relationTypeGroup;
  int maxLevel;
  bool fetchLastLevelOnly;

  RelationsSearchParameters(
      {required this.rootId,
      required this.rootType,
      this.direction = EntitySearchDirection.FROM,
      this.relationTypeGroup,
      this.maxLevel = 1,
      this.fetchLastLevelOnly = false});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['rootId'] = rootId;
    json['rootType'] = rootType.toShortString();
    json['direction'] = direction.toShortString();
    if (relationTypeGroup != null) {
      json['relationTypeGroup'] = relationTypeGroup!.toShortString();
    }
    json['maxLevel'] = maxLevel;
    json['fetchLastLevelOnly'] = fetchLastLevelOnly;
    return json;
  }

  @override
  String toString() {
    return 'RelationsSearchParameters{rootId: $rootId, rootType: $rootType, direction: $direction, relationTypeGroup: $relationTypeGroup, maxLevel: $maxLevel, fetchLastLevelOnly: $fetchLastLevelOnly}';
  }
}

class EntityRelationsQuery {
  RelationsSearchParameters parameters;
  List<RelationEntityTypeFilter>? filters;

  EntityRelationsQuery({required this.parameters, this.filters});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['parameters'] = parameters.toJson();
    if (filters != null) {
      json['filters'] = filters!.map((e) => e.toJson()).toList();
    }
    return json;
  }

  @override
  String toString() {
    return 'EntityRelationsQuery{parameters: $parameters, filters: $filters}';
  }
}

class EntitySearchQuery {
  RelationsSearchParameters parameters;
  String? relationType;

  EntitySearchQuery({required this.parameters, this.relationType});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['parameters'] = parameters.toJson();
    if (relationType != null) {
      json['relationType'] = relationType;
    }
    return json;
  }

  @override
  String toString() {
    return 'EntitySearchQuery{${entitySearchQueryString()}}';
  }

  String entitySearchQueryString([String? toStringBody]) {
    return 'parameters: $parameters, relationType: $relationType${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}

class EntityRelation {
  EntityId from;
  EntityId to;
  String type;
  RelationTypeGroup typeGroup;
  Map<String, dynamic>? additionalInfo;

  EntityRelation(
      {required this.from,
      required this.to,
      this.type = CONTAINS_TYPE,
      this.typeGroup = RelationTypeGroup.COMMON,
      this.additionalInfo});

  EntityRelation.fromJson(Map<String, dynamic> json)
      : from = EntityId.fromJson(json['from']),
        to = EntityId.fromJson(json['to']),
        type = json['type'],
        typeGroup = relationTypeGroupFromString(json['typeGroup']),
        additionalInfo = json['additionalInfo'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['from'] = from.toJson();
    json['to'] = to.toJson();
    json['type'] = type;
    json['typeGroup'] = typeGroup.toShortString();
    if (additionalInfo != null) {
      json['additionalInfo'] = additionalInfo;
    }
    return json;
  }

  @override
  String toString() {
    return 'EntityRelation{${entityRelationString()}}';
  }

  String entityRelationString([String? toStringBody]) {
    return 'from: $from, to: $to, type: $type, typeGroup: $typeGroup, additionalInfo: $additionalInfo${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}

class EntityRelationInfo extends EntityRelation {
  String fromName;
  String? fromEntityTypeName;
  String toName;
  String? toEntityTypeName;

  EntityRelationInfo.fromJson(Map<String, dynamic> json)
      : fromName = json['fromName'],
        fromEntityTypeName = json['fromEntityTypeName'],
        toName = json['fromName'],
        toEntityTypeName = json['fromEntityTypeName'],
        super.fromJson(json);

  @override
  String toString() {
    return 'EntityRelationInfo{${entityRelationString('fromName: $fromName, fromEntityTypeName: $fromEntityTypeName, toName: $toName, toEntityTypeName: $toEntityTypeName')}}';
  }
}
