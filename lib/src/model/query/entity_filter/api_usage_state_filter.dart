import 'package:thingsboard_client/src/model/id/customer_id.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter_type.dart';

class ApiUsageStateFilter extends EntityFilter {
  CustomerId? customerId;

  ApiUsageStateFilter({this.customerId});

  @override
  EntityFilterType getType() {
    return EntityFilterType.API_USAGE_STATE;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (customerId != null) {
      json['customerId'] = customerId!.toJson();
    }
    return json;
  }

  @override
  String toString() {
    return 'ApiUsageStateFilter{customerId: $customerId}';
  }
}
