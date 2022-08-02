import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

PageData<AuditLog> parseAuditLogPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => AuditLog.fromJson(json));
}

class AuditLogService {
  final ThingsboardClient _tbClient;

  factory AuditLogService(ThingsboardClient tbClient) {
    return AuditLogService._internal(tbClient);
  }

  AuditLogService._internal(this._tbClient);

  Future<PageData<AuditLog>> getAuditLogs(TimePageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>('/api/audit/logs',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAuditLogPageData, response.data!);
  }

  Future<PageData<AuditLog>> getAuditLogsByCustomerId(
      String customerId, TimePageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/audit/logs/customer/$customerId',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAuditLogPageData, response.data!);
  }

  Future<PageData<AuditLog>> getAuditLogsByUserId(
      String userId, TimePageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/audit/logs/user/$userId',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAuditLogPageData, response.data!);
  }

  Future<PageData<AuditLog>> getAuditLogsByEntityId(
      EntityId entityId, TimePageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/audit/logs/entity/${entityId.entityType.toShortString()}/${entityId.id}',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAuditLogPageData, response.data!);
  }
}
