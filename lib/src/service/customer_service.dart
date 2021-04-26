import 'dart:convert';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

PageData<Customer> parseCustomerPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => Customer.fromJson(json));
}

class CustomerService {
  final ThingsboardClient _tbClient;

  factory CustomerService(ThingsboardClient tbClient) {
    return CustomerService._internal(tbClient);
  }

  CustomerService._internal(this._tbClient);

  Future<PageData<Customer>> getCustomers(PageLink pageLink,  {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>('/api/customers', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseCustomerPageData, response.data!);
  }

  Future<Customer> getCustomer(String customerId, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/customer/$customerId',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return Customer.fromJson(response.data!);
  }

  Future<Customer> saveCustomer(Customer customer, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/customer', data: jsonEncode(customer),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return Customer.fromJson(response.data!);
  }

  Future<void> deleteCustomer(String customerId, {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/customer/$customerId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

}
