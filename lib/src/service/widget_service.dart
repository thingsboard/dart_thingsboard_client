import 'dart:convert';

import '../model/page/page_link.dart';
import '../http/http_utils.dart';
import '../model/page/page_data.dart';
import '../model/widgets_bundle_model.dart';
import '../model/widget_models.dart';
import '../thingsboard_client_base.dart';

PageData<WidgetsBundle> parseWidgetsBundlePageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => WidgetsBundle.fromJson(json));
}

List<WidgetsBundle> parseWidgetsBundleList(List<dynamic> json) {
  return json.map((e) => WidgetsBundle.fromJson(e)).toList();
}

List<WidgetType> parseWidgetTypeList(List<dynamic> json) {
  return json.map((e) => WidgetType.fromJson(e)).toList();
}

List<WidgetTypeDetails> parseWidgetTypeDetailsList(List<dynamic> json) {
  return json.map((e) => WidgetTypeDetails.fromJson(e)).toList();
}

List<WidgetTypeInfo> parseWidgetTypeInfosList(List<dynamic> json) {
  return json.map((e) => WidgetTypeInfo.fromJson(e)).toList();
}

class WidgetService {
  final ThingsboardClient _tbClient;

  factory WidgetService(ThingsboardClient tbClient) {
    return WidgetService._internal(tbClient);
  }

  WidgetService._internal(this._tbClient);

  Future<WidgetsBundle?> getWidgetsBundle(String widgetsBundleId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/widgetsBundle/$widgetsBundleId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? WidgetsBundle.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<WidgetsBundle> saveWidgetsBundle(WidgetsBundle widgetsBundle,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/widgetsBundle',
        data: jsonEncode(widgetsBundle),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return WidgetsBundle.fromJson(response.data!);
  }

  Future<void> deleteWidgetsBundle(String widgetsBundleId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/widgetsBundle/$widgetsBundleId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<PageData<WidgetsBundle>> getWidgetsBundles(PageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/widgetsBundles',
        queryParameters: pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseWidgetsBundlePageData, response.data!);
  }

  Future<List<WidgetsBundle>> getWidgetsBundlesList(
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>('/api/widgetsBundles',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseWidgetsBundleList, response.data!);
  }

  Future<WidgetTypeDetails?> getWidgetTypeById(String widgetTypeId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/widgetType/$widgetTypeId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? WidgetTypeDetails.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<WidgetTypeDetails> saveWidgetType(WidgetTypeDetails widgetTypeDetails,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/widgetType',
        data: jsonEncode(widgetTypeDetails),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return WidgetTypeDetails.fromJson(response.data!);
  }

  Future<void> deleteWidgetType(String widgetTypeId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/widgetType/$widgetTypeId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<List<WidgetType>> getBundleWidgetTypes(
      bool isSystem, String bundleAlias,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>('/api/widgetTypes',
        queryParameters: {
          'isSystem': isSystem.toString(),
          'bundleAlias': bundleAlias
        },
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseWidgetTypeList, response.data!);
  }

  Future<List<WidgetTypeDetails>> getBundleWidgetTypesDetails(
      bool isSystem, String bundleAlias,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>('/api/widgetTypesDetails',
        queryParameters: {
          'isSystem': isSystem.toString(),
          'bundleAlias': bundleAlias
        },
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseWidgetTypeDetailsList, response.data!);
  }

  Future<List<WidgetTypeInfo>> getBundleWidgetTypesInfos(
      bool isSystem, String bundleAlias,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>('/api/widgetTypesInfos',
        queryParameters: {
          'isSystem': isSystem.toString(),
          'bundleAlias': bundleAlias
        },
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseWidgetTypeInfosList, response.data!);
  }

  Future<WidgetType?> getWidgetType(
      bool isSystem, String bundleAlias, String alias,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/widgetType',
            queryParameters: {
              'isSystem': isSystem.toString(),
              'bundleAlias': bundleAlias,
              'alias': alias
            },
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? WidgetType.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }
}
