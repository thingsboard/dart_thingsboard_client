import '../model/page/page_data.dart';

import '../../thingsboard_client.dart';

PageData<Event> parseEventPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => Event.fromJson(json));
}

class EventService {
  final ThingsboardClient _tbClient;

  factory EventService(ThingsboardClient tbClient) {
    return EventService._internal(tbClient);
  }

  EventService._internal(this._tbClient);

  Future<PageData<Event>> getEvents(
      EntityId entityId, String tenantId, TimePageLink pageLink,
      {String? eventType, RequestConfig? requestConfig}) async {
    var url =
        '/api/events/${entityId.entityType.toShortString()}/${entityId.id}';
    if (eventType != null) {
      url += '/$eventType';
    }
    var queryParams = pageLink.toQueryParameters();
    queryParams['tenantId'] = tenantId;
    var response = await _tbClient.get<Map<String, dynamic>>(url,
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEventPageData, response.data!);
  }
}
