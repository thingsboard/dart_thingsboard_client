import 'package:thingsboard_client/thingsboard_client.dart';

PageData<PushNotification> parseNotificationPageData(
    Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => PushNotification.fromJson(json));
}

class NotificationsService {
  const NotificationsService._internal(this._tbClient);

  factory NotificationsService(ThingsboardClient tbClient) {
    return NotificationsService._internal(tbClient);
  }

  final ThingsboardClient _tbClient;

  Future<PageData<PushNotification>> getNotifications(
    PushNotificationQuery query, {
    RequestConfig? requestConfig,
  }) async {
    final queryParams = query.toQueryParameters();
    final response = await _tbClient.get<Map<String, dynamic>>(
      '/api/notifications',
      queryParameters: queryParams,
      options: defaultHttpOptionsFromConfig(requestConfig),
    );

    return _tbClient.compute(parseNotificationPageData, response.data!);
  }

  Future<void> markAllNotificationsAsRead(
    PushNotificationQuery query, {
    RequestConfig? requestConfig,
  }) async {
    final queryParams = query.toQueryParameters();
    _tbClient.put<Map<String, dynamic>>(
      '/api/notifications/read',
      queryParameters: queryParams,
      options: defaultHttpOptionsFromConfig(requestConfig),
    );
  }

  Future<void> deleteNotification(
    String id,
    PushNotificationQuery query, {
    RequestConfig? requestConfig,
  }) async {
    final queryParams = query.toQueryParameters();
    _tbClient.delete(
      '/api/notification/$id',
      queryParameters: queryParams,
      options: defaultHttpOptionsFromConfig(requestConfig),
    );
  }

  Future<void> markNotificationAsRead(
    String id,
    PushNotificationQuery query, {
    RequestConfig? requestConfig,
  }) async {
    final queryParams = query.toQueryParameters();
    _tbClient.put(
      '/api/notification/$id/read',
      queryParameters: queryParams,
      options: defaultHttpOptionsFromConfig(requestConfig),
    );
  }
}
