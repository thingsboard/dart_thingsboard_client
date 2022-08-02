import 'dart:convert';
import '../thingsboard_client_base.dart';
import '../model/model.dart';
import '../http/http_utils.dart';

PageData<EntityVersion> parseEntityVersionPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => EntityVersion.fromJson(json));
}

class EntitiesVersionControlService {
  final ThingsboardClient _tbClient;

  factory EntitiesVersionControlService(ThingsboardClient tbClient) {
    return EntitiesVersionControlService._internal(tbClient);
  }

  EntitiesVersionControlService._internal(this._tbClient);

  Future<String> saveEntitiesVersion(VersionCreateRequest request,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<String>('/api/entities/vc/version',
        data: jsonEncode(request),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!;
  }

  Future<VersionCreationResult?> getVersionCreateRequestStatus(String requestId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/entities/vc/version/$requestId/status',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? VersionCreationResult.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PageData<EntityVersion>> listEntityVersions(
      PageLink pageLink, String branch, EntityId externalEntityId,
      {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['branch'] = branch;
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/entities/vc/version/${externalEntityId.entityType.toShortString()}/${externalEntityId.id}',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEntityVersionPageData, response.data!);
  }

  Future<PageData<EntityVersion>> listEntityTypeVersions(
      PageLink pageLink, String branch, EntityType entityType,
      {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['branch'] = branch;
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/entities/vc/version/${entityType.toShortString()}',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEntityVersionPageData, response.data!);
  }

  Future<PageData<EntityVersion>> listVersions(PageLink pageLink, String branch,
      {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['branch'] = branch;
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/entities/vc/version',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEntityVersionPageData, response.data!);
  }

  Future<EntityDataInfo?> getEntityDataInfo(
      EntityId externalEntityId, String versionId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/entities/vc/info/$versionId/${externalEntityId.entityType.toShortString()}/${externalEntityId.id}',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? EntityDataInfo.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<EntityDataDiff?> compareEntityDataToVersion(
      EntityId entityId, String versionId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/entities/vc/diff/${entityId.entityType.toShortString()}/${entityId.id}',
            queryParameters: {'versionId': versionId},
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? EntityDataDiff.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<String> loadEntitiesVersion(VersionLoadRequest request,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<String>('/api/entities/vc/entity',
        data: jsonEncode(request),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!;
  }

  Future<VersionLoadResult?> getVersionLoadRequestStatus(String requestId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/entities/vc/entity/$requestId/status',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? VersionLoadResult.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<List<BranchInfo>> listBranches({RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>(
        '/api/entities/vc/branches',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => BranchInfo.fromJson(e)).toList();
  }
}
