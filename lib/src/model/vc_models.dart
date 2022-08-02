import 'rule_chain_models.dart';
import 'device_models.dart';
import 'relation_models.dart';
import 'entity_type_models.dart';
import 'exportable_entity.dart';
import 'id/entity_id.dart';

const List<EntityType> exportableEntityTypes = [
  EntityType.ASSET,
  EntityType.DEVICE,
  EntityType.ENTITY_VIEW,
  EntityType.DASHBOARD,
  EntityType.CUSTOMER,
  EntityType.DEVICE_PROFILE,
  EntityType.RULE_CHAIN,
  EntityType.WIDGETS_BUNDLE
];

class VersionCreateConfig {
  bool saveRelations;
  bool saveAttributes;
  bool saveCredentials;

  VersionCreateConfig(
      {required this.saveRelations,
      required this.saveAttributes,
      required this.saveCredentials});

  VersionCreateConfig.fromJson(Map<String, dynamic> json)
      : saveRelations = json['saveRelations'],
        saveAttributes = json['saveAttributes'],
        saveCredentials = json['saveCredentials'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['saveRelations'] = saveRelations;
    json['saveAttributes'] = saveAttributes;
    json['saveCredentials'] = saveCredentials;
    return json;
  }

  @override
  String toString() {
    return 'VersionCreateConfig{${versionCreateConfigString()}}';
  }

  String versionCreateConfigString([String? toStringBody]) {
    return 'saveRelations: $saveRelations, saveAttributes: $saveAttributes, saveCredentials: $saveCredentials${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}

enum SyncStrategy { MERGE, OVERWRITE }

SyncStrategy syncStrategyFromString(String value) {
  return SyncStrategy.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension SyncStrategyToString on SyncStrategy {
  String toShortString() {
    return toString().split('.').last.toLowerCase();
  }
}

class EntityTypeVersionCreateConfig extends VersionCreateConfig {
  SyncStrategy? syncStrategy;
  List<String>? entityIds;
  bool allEntities;

  EntityTypeVersionCreateConfig(
      {required bool saveRelations,
      required bool saveAttributes,
      required bool saveCredentials,
      required this.allEntities,
      this.syncStrategy,
      this.entityIds})
      : super(
            saveRelations: saveRelations,
            saveAttributes: saveAttributes,
            saveCredentials: saveCredentials);

  EntityTypeVersionCreateConfig.fromJson(Map<String, dynamic> json)
      : syncStrategy = json['syncStrategy'] != null
            ? syncStrategyFromString(json['syncStrategy'])
            : null,
        entityIds = json['entityIds'] != null ? json['entityIds'] : null,
        allEntities = json['allEntities'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (syncStrategy != null) {
      json['syncStrategy'] = syncStrategy!.toShortString();
    }
    if (entityIds != null) {
      json['entityIds'] = entityIds;
    }
    json['allEntities'] = allEntities;
    return json;
  }

  @override
  String toString() {
    return 'EntityTypeVersionCreateConfig{${versionCreateConfigString('syncStrategy: $syncStrategy, allEntities: $allEntities, entityIds: $entityIds')}}';
  }
}

enum VersionCreateRequestType { SINGLE_ENTITY, COMPLEX }

VersionCreateRequestType versionCreateRequestTypeFromString(String value) {
  return VersionCreateRequestType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension VersionCreateRequestTypeToString on VersionCreateRequestType {
  String toShortString() {
    return toString().split('.').last.toLowerCase();
  }
}

abstract class VersionCreateRequest {
  String versionName;
  String branch;

  VersionCreateRequest({required this.versionName, required this.branch});

  factory VersionCreateRequest.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('type')) {
      var versionCreateRequestType =
          versionCreateRequestTypeFromString(json['type']);
      switch (versionCreateRequestType) {
        case VersionCreateRequestType.SINGLE_ENTITY:
          return SingleEntityVersionCreateRequest.fromJson(json);
        case VersionCreateRequestType.COMPLEX:
          return ComplexVersionCreateRequest.fromJson(json);
      }
    } else {
      throw FormatException('Missing type!');
    }
  }

  VersionCreateRequest._fromJson(Map<String, dynamic> json)
      : versionName = json['versionName'],
        branch = json['branch'];

  VersionCreateRequestType getType();

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['type'] = getType().toShortString();
    json['versionName'] = versionName;
    json['branch'] = branch;
    return json;
  }

  @override
  String toString() {
    return 'VersionCreateRequest{${versionCreateRequestString()}}';
  }

  String versionCreateRequestString([String? toStringBody]) {
    return 'type: ${getType()}, versionName: $versionName, branch: $branch${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}

class SingleEntityVersionCreateRequest extends VersionCreateRequest {
  EntityId entityId;
  VersionCreateConfig config;

  SingleEntityVersionCreateRequest(
      {required String versionName,
      required String branch,
      required this.entityId,
      required this.config})
      : super(versionName: versionName, branch: branch);

  @override
  VersionCreateRequestType getType() {
    return VersionCreateRequestType.SINGLE_ENTITY;
  }

  SingleEntityVersionCreateRequest.fromJson(Map<String, dynamic> json)
      : entityId = EntityId.fromJson(json['entityId']),
        config = VersionCreateConfig.fromJson(json['config']),
        super._fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityId'] = entityId.toJson();
    json['config'] = config.toJson();
    return json;
  }

  @override
  String toString() {
    return 'SingleEntityVersionCreateRequest{${versionCreateRequestString('entityId: $entityId, config: $config')}}';
  }
}

class ComplexVersionCreateRequest extends VersionCreateRequest {
  SyncStrategy syncStrategy;
  Map<EntityType, EntityTypeVersionCreateConfig> entityTypes;

  ComplexVersionCreateRequest(
      {required String versionName,
      required String branch,
      required this.syncStrategy,
      required this.entityTypes})
      : super(versionName: versionName, branch: branch);

  @override
  VersionCreateRequestType getType() {
    return VersionCreateRequestType.COMPLEX;
  }

  ComplexVersionCreateRequest.fromJson(Map<String, dynamic> json)
      : syncStrategy = syncStrategyFromString(json['syncStrategy']),
        entityTypes = (json['entityTypes'] as Map).map((key, value) => MapEntry(
            entityTypeFromString(key),
            EntityTypeVersionCreateConfig.fromJson(value))),
        super._fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['syncStrategy'] = syncStrategy.toShortString();
    json['entityTypes'] = entityTypes
        .map((key, value) => MapEntry(key.toShortString(), value.toJson()));
    return json;
  }

  @override
  String toString() {
    return 'ComplexVersionCreateRequest{${versionCreateRequestString('syncStrategy: $syncStrategy, entityTypes: $entityTypes')}}';
  }
}

Map<EntityType, EntityTypeVersionCreateConfig>
    createDefaultEntityTypesVersionCreate() {
  Map<EntityType, EntityTypeVersionCreateConfig> res = Map();
  for (var entityType in exportableEntityTypes) {
    res[entityType] = EntityTypeVersionCreateConfig(
        syncStrategy: null,
        saveAttributes: true,
        saveRelations: true,
        saveCredentials: true,
        allEntities: true,
        entityIds: []);
  }
  return res;
}

class VersionLoadConfig {
  bool loadRelations;
  bool loadAttributes;
  bool loadCredentials;

  VersionLoadConfig(
      {required this.loadRelations,
      required this.loadAttributes,
      required this.loadCredentials});

  VersionLoadConfig.fromJson(Map<String, dynamic> json)
      : loadRelations = json['loadRelations'],
        loadAttributes = json['loadAttributes'],
        loadCredentials = json['loadCredentials'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['loadRelations'] = loadRelations;
    json['loadAttributes'] = loadAttributes;
    json['loadCredentials'] = loadCredentials;
    return json;
  }

  @override
  String toString() {
    return 'VersionLoadConfig{${versionLoadConfigString()}}';
  }

  String versionLoadConfigString([String? toStringBody]) {
    return 'loadRelations: $loadRelations, loadAttributes: $loadAttributes, loadCredentials: $loadCredentials${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}

class EntityTypeVersionLoadConfig extends VersionLoadConfig {
  bool removeOtherEntities;
  bool findExistingEntityByName;

  EntityTypeVersionLoadConfig(
      {required bool loadRelations,
      required bool loadAttributes,
      required bool loadCredentials,
      required this.removeOtherEntities,
      required this.findExistingEntityByName})
      : super(
            loadRelations: loadRelations,
            loadAttributes: loadAttributes,
            loadCredentials: loadCredentials);

  EntityTypeVersionLoadConfig.fromJson(Map<String, dynamic> json)
      : removeOtherEntities = json['removeOtherEntities'],
        findExistingEntityByName = json['findExistingEntityByName'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['removeOtherEntities'] = removeOtherEntities;
    json['findExistingEntityByName'] = findExistingEntityByName;
    return json;
  }

  @override
  String toString() {
    return 'EntityTypeVersionLoadConfig{${versionLoadConfigString('removeOtherEntities: $removeOtherEntities, findExistingEntityByName: $findExistingEntityByName')}}';
  }
}

enum VersionLoadRequestType { SINGLE_ENTITY, ENTITY_TYPE }

VersionLoadRequestType versionLoadRequestTypeFromString(String value) {
  return VersionLoadRequestType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension VersionLoadRequestTypeToString on VersionLoadRequestType {
  String toShortString() {
    return toString().split('.').last.toLowerCase();
  }
}

abstract class VersionLoadRequest {
  String versionId;

  VersionLoadRequest({required this.versionId});

  factory VersionLoadRequest.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('type')) {
      var versionLoadRequestType =
          versionLoadRequestTypeFromString(json['type']);
      switch (versionLoadRequestType) {
        case VersionLoadRequestType.SINGLE_ENTITY:
          return SingleEntityVersionLoadRequest.fromJson(json);
        case VersionLoadRequestType.ENTITY_TYPE:
          return EntityTypeVersionLoadRequest.fromJson(json);
      }
    } else {
      throw FormatException('Missing type!');
    }
  }

  VersionLoadRequest._fromJson(Map<String, dynamic> json)
      : versionId = json['versionId'];

  VersionLoadRequestType getType();

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['type'] = getType().toShortString();
    json['versionId'] = versionId;
    return json;
  }

  @override
  String toString() {
    return 'VersionLoadRequest{${versionLoadRequestString()}}';
  }

  String versionLoadRequestString([String? toStringBody]) {
    return 'type: ${getType()}, versionId: $versionId${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}

class SingleEntityVersionLoadRequest extends VersionLoadRequest {
  EntityId externalEntityId;
  VersionLoadConfig config;

  SingleEntityVersionLoadRequest(
      {required String versionId,
      required this.externalEntityId,
      required this.config})
      : super(versionId: versionId);

  @override
  VersionLoadRequestType getType() {
    return VersionLoadRequestType.SINGLE_ENTITY;
  }

  SingleEntityVersionLoadRequest.fromJson(Map<String, dynamic> json)
      : externalEntityId = EntityId.fromJson(json['externalEntityId']),
        config = VersionLoadConfig.fromJson(json['config']),
        super._fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['externalEntityId'] = externalEntityId.toJson();
    json['config'] = config.toJson();
    return json;
  }

  @override
  String toString() {
    return 'SingleEntityVersionLoadRequest{${versionLoadRequestString('externalEntityId: $externalEntityId, config: $config')}}';
  }
}

class EntityTypeVersionLoadRequest extends VersionLoadRequest {
  Map<EntityType, EntityTypeVersionLoadConfig> entityTypes;

  EntityTypeVersionLoadRequest(
      {required String versionId, required this.entityTypes})
      : super(versionId: versionId);

  @override
  VersionLoadRequestType getType() {
    return VersionLoadRequestType.ENTITY_TYPE;
  }

  EntityTypeVersionLoadRequest.fromJson(Map<String, dynamic> json)
      : entityTypes = (json['entityTypes'] as Map).map((key, value) => MapEntry(
            entityTypeFromString(key),
            EntityTypeVersionLoadConfig.fromJson(value))),
        super._fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityTypes'] = entityTypes
        .map((key, value) => MapEntry(key.toShortString(), value.toJson()));
    return json;
  }

  @override
  String toString() {
    return 'EntityTypeVersionLoadRequest{${versionLoadRequestString('entityTypes: $entityTypes')}}';
  }
}

Map<EntityType, EntityTypeVersionLoadConfig>
    createDefaultEntityTypesVersionLoad() {
  Map<EntityType, EntityTypeVersionLoadConfig> res = Map();
  for (var entityType in exportableEntityTypes) {
    res[entityType] = EntityTypeVersionLoadConfig(
        loadAttributes: true,
        loadRelations: true,
        loadCredentials: true,
        removeOtherEntities: false,
        findExistingEntityByName: true);
  }
  return res;
}

class BranchInfo {
  String name;
  bool isDefault;

  BranchInfo.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        isDefault = json['default'];

  @override
  String toString() {
    return 'BranchInfo{name: $name, isDefault: $isDefault}';
  }
}

class EntityVersion {
  int timestamp;
  String id;
  String name;
  String author;

  EntityVersion.fromJson(Map<String, dynamic> json)
      : timestamp = json['timestamp'],
        id = json['id'],
        name = json['name'],
        author = json['author'];

  @override
  String toString() {
    return 'EntityVersion{timestamp: $timestamp, id: $id, name: $name, author: $author}';
  }
}

class VersionCreationResult {
  EntityVersion? version;
  int? added;
  int? modified;
  int? removed;
  String? error;
  bool? done;

  VersionCreationResult.fromJson(Map<String, dynamic> json)
      : version = json['version'] != null
            ? EntityVersion.fromJson(json['version'])
            : null,
        added = json['added'],
        modified = json['modified'],
        removed = json['removed'],
        error = json['error'],
        done = json['done'];

  @override
  String toString() {
    return 'VersionCreationResult{version: $version, added: $added, modified: $modified, removed: $removed, error: $error, done: $done}';
  }
}

class EntityTypeLoadResult {
  EntityType? entityType;
  int? created;
  int? updated;
  int? deleted;

  EntityTypeLoadResult.fromJson(Map<String, dynamic> json)
      : entityType = json['entityType'] != null
            ? entityTypeFromString(json['entityType'])
            : null,
        created = json['created'],
        updated = json['updated'],
        deleted = json['deleted'];

  @override
  String toString() {
    return 'EntityTypeLoadResult{entityType: $entityType, created: $created, updated: $updated, deleted: $deleted}';
  }
}

enum EntityLoadErrorType {
  DEVICE_CREDENTIALS_CONFLICT,
  MISSING_REFERENCED_ENTITY,
  RUNTIME
}

EntityLoadErrorType entityLoadErrorTypeFromString(String value) {
  return EntityLoadErrorType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension EntityLoadErrorTypeToString on EntityLoadErrorType {
  String toShortString() {
    return toString().split('.').last.toLowerCase();
  }
}

class EntityLoadError {
  EntityLoadErrorType type;
  EntityId? source;
  EntityId? target;
  String? message;

  EntityLoadError.fromJson(Map<String, dynamic> json)
      : type = entityLoadErrorTypeFromString(json['type']),
        source =
            json['source'] != null ? EntityId.fromJson(json['source']) : null,
        target =
            json['target'] != null ? EntityId.fromJson(json['target']) : null,
        message = json['message'];

  @override
  String toString() {
    return 'EntityLoadError{type: $type, source: $source, target: $target, message: $message}';
  }
}

class VersionLoadResult {
  List<EntityTypeLoadResult>? result;
  EntityLoadError? error;
  bool? done;

  VersionLoadResult.fromJson(Map<String, dynamic> json)
      : result = json['result'] != null
            ? (json['result'] as List<dynamic>)
                .map((e) => EntityTypeLoadResult.fromJson(e))
                .toList()
            : null,
        error = json['error'] != null
            ? EntityLoadError.fromJson(json['error'])
            : null,
        done = json['done'];

  @override
  String toString() {
    return 'VersionLoadResult{result: $result, error: $error, done: $done}';
  }
}

class AttributeExportData {
  String key;
  int lastUpdateTs;
  bool? booleanValue;
  String? strValue;
  int? longValue;
  double? doubleValue;
  String? jsonValue;

  AttributeExportData.fromJson(Map<String, dynamic> json)
      : key = json['key'],
        lastUpdateTs = json['lastUpdateTs'],
        booleanValue = json['booleanValue'],
        strValue = json['strValue'],
        longValue = json['longValue'],
        doubleValue = json['doubleValue'],
        jsonValue = json['jsonValue'];

  @override
  String toString() {
    return 'AttributeExportData{key: $key, lastUpdateTs: $lastUpdateTs, booleanValue: $booleanValue, strValue: $strValue, longValue: $longValue, doubleValue: $doubleValue, jsonValue: $jsonValue}';
  }
}

class EntityExportData<E extends ExportableEntity<EntityId>> {
  E entity;
  EntityType entityType;
  List<EntityRelation>? relations;
  Map<String, List<AttributeExportData>>? attributes;

  factory EntityExportData.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('entityType')) {
      var entityType = entityTypeFromString(json['type']);
      switch (entityType) {
        case EntityType.DEVICE:
          return DeviceExportData.fromJson(json) as EntityExportData<E>;
        case EntityType.RULE_CHAIN:
          return RuleChainExportData.fromJson(json) as EntityExportData<E>;
        default:
          return EntityExportData._fromJson(entityType, json);
      }
    } else {
      throw FormatException('Missing type!');
    }
  }

  EntityExportData._fromJson(EntityType entityType, Map<String, dynamic> json)
      : entity =
            ExportableEntity.fromTypeAndJson(entityType, json['entity']) as E,
        entityType = entityType,
        relations = json['relations'] != null
            ? (json['relations'] as List<dynamic>)
                .map((e) => EntityRelation.fromJson(e))
                .toList()
            : null,
        attributes = json['attributes'] != null
            ? (json['attributes'] as Map).map((key, value) => MapEntry(
                key,
                (value as List)
                    .map((e) => AttributeExportData.fromJson(e))
                    .toList()))
            : null;

  @override
  String toString() {
    return 'EntityExportData{${entityExportDataString()}}';
  }

  String entityExportDataString([String? toStringBody]) {
    return 'entityType: $entityType, entity: $entity, relations: $relations, attributes: $attributes${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}

class DeviceExportData extends EntityExportData<Device> {
  DeviceCredentials? credentials;

  DeviceExportData.fromJson(Map<String, dynamic> json)
      : credentials = json['credentials'] != null
            ? DeviceCredentials.fromJson(json['credentials'])
            : null,
        super._fromJson(EntityType.DEVICE, json);

  @override
  String toString() {
    return 'DeviceExportData{${entityExportDataString('credentials: $credentials')}}';
  }
}

class RuleChainExportData extends EntityExportData<RuleChain> {
  RuleChainMetaData? metaData;

  RuleChainExportData.fromJson(Map<String, dynamic> json)
      : metaData = json['metaData'] != null
            ? RuleChainMetaData.fromJson(json['metaData'])
            : null,
        super._fromJson(EntityType.RULE_CHAIN, json);

  @override
  String toString() {
    return 'RuleChainExportData{${entityExportDataString('metaData: $metaData')}}';
  }
}

class EntityDataDiff {
  EntityExportData<dynamic> currentVersion;
  EntityExportData<dynamic> otherVersion;

  EntityDataDiff.fromJson(Map<String, dynamic> json)
      : currentVersion = EntityExportData.fromJson(json['currentVersion']),
        otherVersion = EntityExportData.fromJson(json['otherVersion']);

  @override
  String toString() {
    return 'EntityDataDiff{currentVersion: $currentVersion, otherVersion: $otherVersion}';
  }
}

class EntityDataInfo {
  bool hasRelations;
  bool hasAttributes;
  bool hasCredentials;

  EntityDataInfo.fromJson(Map<String, dynamic> json)
      : hasRelations = json['hasRelations'],
        hasAttributes = json['hasAttributes'],
        hasCredentials = json['hasCredentials'];

  @override
  String toString() {
    return 'EntityDataInfo{hasRelations: $hasRelations, hasAttributes: $hasAttributes, hasCredentials: $hasCredentials}';
  }
}
