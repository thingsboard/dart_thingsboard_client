import 'dart:convert';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

class EntityRelationService {
  final ThingsboardClient _tbClient;

  factory EntityRelationService(ThingsboardClient tbClient) {
    return EntityRelationService._internal(tbClient);
  }

  EntityRelationService._internal(this._tbClient);

  Future<EntityRelation> saveRelation(EntityRelation relation,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/relation',
        data: jsonEncode(relation),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return EntityRelation.fromJson(response.data!);
  }

  Future<void> deleteRelation(EntityId fromId, String relationType,
      RelationTypeGroup relationTypeGroup, EntityId toId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/relation',
        queryParameters: {
          'fromId': fromId.id,
          'fromType': fromId.entityType.toShortString(),
          'relationType': relationType,
          'relationTypeGroup': relationTypeGroup.toShortString(),
          'toId': toId.id,
          'toType': toId.entityType.toShortString()
        },
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<void> deleteRelations(EntityId entityId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/relations',
        queryParameters: {
          'entityId': entityId.id,
          'entityType': entityId.entityType.toShortString()
        },
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<EntityRelation?> getRelation(EntityId fromId, String relationType,
      RelationTypeGroup relationTypeGroup, EntityId toId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response =
            await _tbClient.get<Map<String, dynamic>>('/api/relation',
                queryParameters: {
                  'fromId': fromId.id,
                  'fromType': fromId.entityType.toShortString(),
                  'relationType': relationType,
                  'relationTypeGroup': relationTypeGroup.toShortString(),
                  'toId': toId.id,
                  'toType': toId.entityType.toShortString()
                },
                options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? EntityRelation.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<List<EntityRelation>> findByFrom(EntityId fromId,
      {String? relationType,
      RelationTypeGroup? relationTypeGroup,
      RequestConfig? requestConfig}) async {
    var queryParameters = {
      'fromId': fromId.id,
      'fromType': fromId.entityType.toShortString()
    };
    if (relationType != null) {
      queryParameters['relationType'] = relationType;
    }
    if (relationTypeGroup != null) {
      queryParameters['relationTypeGroup'] = relationTypeGroup.toShortString();
    }
    var response = await _tbClient.get<List<dynamic>>('/api/relations',
        queryParameters: queryParameters,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => EntityRelation.fromJson(e)).toList();
  }

  Future<List<EntityRelationInfo>> findInfoByFrom(EntityId fromId,
      {RelationTypeGroup? relationTypeGroup,
      RequestConfig? requestConfig}) async {
    var queryParameters = {
      'fromId': fromId.id,
      'fromType': fromId.entityType.toShortString()
    };
    if (relationTypeGroup != null) {
      queryParameters['relationTypeGroup'] = relationTypeGroup.toShortString();
    }
    var response = await _tbClient.get<List<dynamic>>('/api/relations/info',
        queryParameters: queryParameters,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => EntityRelationInfo.fromJson(e)).toList();
  }

  Future<List<EntityRelation>> findByTo(EntityId toId,
      {String? relationType,
      RelationTypeGroup? relationTypeGroup,
      RequestConfig? requestConfig}) async {
    var queryParameters = {
      'toId': toId.id,
      'toType': toId.entityType.toShortString()
    };
    if (relationType != null) {
      queryParameters['relationType'] = relationType;
    }
    if (relationTypeGroup != null) {
      queryParameters['relationTypeGroup'] = relationTypeGroup.toShortString();
    }
    var response = await _tbClient.get<List<dynamic>>('/api/relations',
        queryParameters: queryParameters,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => EntityRelation.fromJson(e)).toList();
  }

  Future<List<EntityRelationInfo>> findInfoByTo(EntityId toId,
      {RelationTypeGroup? relationTypeGroup,
      RequestConfig? requestConfig}) async {
    var queryParameters = {
      'toId': toId.id,
      'toType': toId.entityType.toShortString()
    };
    if (relationTypeGroup != null) {
      queryParameters['relationTypeGroup'] = relationTypeGroup.toShortString();
    }
    var response = await _tbClient.get<List<dynamic>>('/api/relations/info',
        queryParameters: queryParameters,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => EntityRelationInfo.fromJson(e)).toList();
  }

  Future<List<EntityRelation>> findByQuery(EntityRelationsQuery query,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<List<dynamic>>('/api/relations',
        data: jsonEncode(query),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => EntityRelation.fromJson(e)).toList();
  }

  Future<List<EntityRelationInfo>> findInfoByQuery(EntityRelationsQuery query,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<List<dynamic>>('/api/relations/info',
        data: jsonEncode(query),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => EntityRelationInfo.fromJson(e)).toList();
  }
}
