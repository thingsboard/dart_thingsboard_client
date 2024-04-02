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

  Future<int> markAllNotificationsAsRead(
    String deliveryMethod, {
    RequestConfig? requestConfig,
  }) async {
    final response = await _tbClient.put<Map<String, dynamic>>(
      '/api/notifications/read',
      queryParameters: {'deliveryMethod': deliveryMethod},
      options: defaultHttpOptionsFromConfig(requestConfig),
    );

    return response.statusCode!;
  }

  Future<int> deleteNotification(
    String id, {
    RequestConfig? requestConfig,
  }) async {
    final response = await _tbClient.delete(
      '/api/notification/$id',
      options: defaultHttpOptionsFromConfig(requestConfig),
    );

    return response.statusCode!;
  }

  Future<int> markNotificationAsRead(
    String id, {
    RequestConfig? requestConfig,
  }) async {
    final response = await _tbClient.put(
      '/api/notification/$id/read',
      options: defaultHttpOptionsFromConfig(requestConfig),
    );

    return response.statusCode!;
  }

  Future<int> getUnreadNotificationsCount(
    String deliveryMethod, {
    RequestConfig? requestConfig,
  }) async {
    final response = await _tbClient.get<int>(
      '/api/notifications/unread/count',
      queryParameters: {'deliveryMethod': deliveryMethod},
      options: defaultHttpOptionsFromConfig(requestConfig),
    );

    return response.data!;
  }

  Future<PushNotification> getNotificationById(
    String id, {
    required String deliveryMethod,
    RequestConfig? requestConfig,
  }) async {
    final response = await _tbClient.get<Map<String, dynamic>>(
      'api/notification/request/$id',
      queryParameters: {'deliveryMethod': deliveryMethod},
      options: defaultHttpOptionsFromConfig(requestConfig),
    );

    return PushNotification.fromJson(response.data!);
  }
}
