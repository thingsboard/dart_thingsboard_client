import 'package:thingsboard_client/src/model/query/data_query/abstract_data_query.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter.dart';
import 'package:thingsboard_client/src/model/query/entity_key/entity_key.dart';
import 'package:thingsboard_client/src/model/query/key_filter/key_filter.dart';
import 'package:thingsboard_client/src/model/query/page_link/entity_data_page_link.dart';

class EntityDataQuery extends AbstractDataQuery<EntityDataPageLink> {
  EntityDataQuery(
      {required EntityFilter entityFilter,
      List<KeyFilter>? keyFilters,
      required EntityDataPageLink pageLink,
      List<EntityKey>? entityFields,
      List<EntityKey>? latestValues})
      : super(
            entityFilter: entityFilter,
            keyFilters: keyFilters,
            pageLink: pageLink,
            entityFields: entityFields,
            latestValues: latestValues);

  EntityDataQuery next() {
    return EntityDataQuery(
        entityFilter: entityFilter,
        pageLink: pageLink.nextPageLink(),
        keyFilters: keyFilters,
        entityFields: entityFields,
        latestValues: latestValues);
  }

  @override
  String toString() {
    return 'EntityDataQuery{${dataQueryString()}}';
  }
}
