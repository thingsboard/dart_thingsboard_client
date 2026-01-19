import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter.dart';
import 'package:thingsboard_client/src/model/query/key_filter/key_filter.dart';

class EntityCountQuery {
  EntityFilter entityFilter;
  List<KeyFilter>? keyFilters;

  EntityCountQuery({required this.entityFilter, this.keyFilters});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['entityFilter'] = entityFilter.toJson();
    json['keyFilters'] =
        keyFilters != null ? keyFilters!.map((e) => e.toJson()).toList() : [];
    return json;
  }

  @override
  String toString() {
    return 'EntityCountQuery{${entityCountQueryString()}}';
  }

  String entityCountQueryString([String? toStringBody]) {
    return 'entityFilter: $entityFilter, keyFilters: $keyFilters${toStringBody != null ? ', $toStringBody' : ''}';
  }
}
