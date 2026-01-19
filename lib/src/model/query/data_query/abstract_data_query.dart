import 'package:thingsboard_client/src/model/query/data_query/entity_count_query.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter.dart';
import 'package:thingsboard_client/src/model/query/entity_key/entity_key.dart';
import 'package:thingsboard_client/src/model/query/key_filter/key_filter.dart';
import 'package:thingsboard_client/src/model/query/page_link/entity_data_page_link.dart';

abstract class AbstractDataQuery<T extends EntityDataPageLink> extends EntityCountQuery {
  T pageLink;
  List<EntityKey>? entityFields;
  List<EntityKey>? latestValues;

  AbstractDataQuery(
      {required EntityFilter entityFilter,
      List<KeyFilter>? keyFilters,
      required this.pageLink,
      this.entityFields,
      this.latestValues})
      : super(entityFilter: entityFilter, keyFilters: keyFilters);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['pageLink'] = pageLink.toJson();
    json['entityFields'] = entityFields != null
        ? entityFields!.map((e) => e.toJson()).toList()
        : [];
    json['latestValues'] = latestValues != null
        ? latestValues!.map((e) => e.toJson()).toList()
        : [];
    return json;
  }

  @override
  String toString() {
    return 'AbstractDataQuery{${dataQueryString()}}';
  }

  String dataQueryString([String? toStringBody]) {
    return '${entityCountQueryString('pageLink: $pageLink, entityFields: $entityFields, latestValues: $latestValues${toStringBody != null ? ', $toStringBody' : ''}')}';
  }
}
