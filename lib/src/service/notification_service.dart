import 'package:thingsboard_client/thingsboard_client.dart';

PageData<Notification> parseNotificationPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => Notification.fromJson(json));
}

class NotificationService {
  const NotificationService._internal(this._tbClient);

  factory NotificationService(ThingsboardClient tbClient) {
    return NotificationService._internal(tbClient);
  }

  final ThingsboardClient _tbClient;

  Future<PageData<Notification>> getNotifications(
    NotificationQuery query, {
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
    NotificationQuery query, {
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
    NotificationQuery query, {
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
    NotificationQuery query, {
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
