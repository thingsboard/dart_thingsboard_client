import 'dart:convert';

import 'package:thingsboard_client/src/http/http_utils.dart';
import 'package:thingsboard_client/src/model/model.dart';

import '../thingsboard_client_base.dart';

PageData<RuleChain> parseRuleChainPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => RuleChain.fromJson(json));
}

class RuleChainService {
  final ThingsboardClient _tbClient;

  factory RuleChainService(ThingsboardClient tbClient) {
    return RuleChainService._internal(tbClient);
  }

  RuleChainService._internal(this._tbClient);

  Future<RuleChain?> getRuleChain(String ruleChainId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>('/api/ruleChain/$ruleChainId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? RuleChain.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<RuleChainMetaData?> getRuleChainMetaData(String ruleChainId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>('/api/ruleChain/$ruleChainId/metadata',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? RuleChainMetaData.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<RuleChain> saveRuleChain(RuleChain ruleChain, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/ruleChain', data: jsonEncode(ruleChain),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return RuleChain.fromJson(response.data!);
  }

  Future<void> deleteRuleChain(String ruleChainId, {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/ruleChain/$ruleChainId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<RuleChain> createDefaultRuleChain(String ruleChainName, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/ruleChain/device/default',
        data: jsonEncode({
          'name': ruleChainName
        }), options: defaultHttpOptionsFromConfig(requestConfig));
    return RuleChain.fromJson(response.data!);
  }

  Future<RuleChain?> setRootRuleChain(String ruleChainId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.post<Map<String, dynamic>>('/api/ruleChain/$ruleChainId/root',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? RuleChain.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<RuleChainMetaData> saveRuleChainMetaData(RuleChainMetaData ruleChainMetaData, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/ruleChain/metadata', data: jsonEncode(ruleChainMetaData),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return RuleChainMetaData.fromJson(response.data!);
  }

  Future<PageData<RuleChain>> getRuleChains(PageLink pageLink,  {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/ruleChains', queryParameters: pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseRuleChainPageData, response.data!);
  }

  Future<dynamic> getLatestRuleNodeDebugInput(String ruleNodeId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.get('/api/ruleNode/$ruleNodeId/debugIn',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data;
      },
      requestConfig: requestConfig,
    );
  }

  Future<dynamic> testScript(dynamic inputParams, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.post('/api/ruleChain/testScript',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data;
      },
      requestConfig: requestConfig,
    );
  }

  Future<RuleChainData> exportRuleChains(int limit, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/ruleChains/export', queryParameters: { 'limit': limit },
        options: defaultHttpOptionsFromConfig(requestConfig));
    return RuleChainData.fromJson(response.data!);
  }

  Future<void> importRuleChains(RuleChainData ruleChainData, bool overwrite, {RequestConfig? requestConfig}) async {
    await _tbClient.post('/api/ruleChains/import', queryParameters: { 'overwrite': overwrite }, data: jsonEncode(ruleChainData),
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

}
