import 'package:thingsboard_client/src/model/entity_type_models.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter_type.dart';

class EntityNameFilter extends EntityFilter {
  EntityType entityType;
  String entityNameFilter;

  EntityNameFilter({required this.entityType, required this.entityNameFilter});

  @override
  EntityFilterType getType() {
    return EntityFilterType.ENTITY_NAME;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityType'] = entityType.toShortString();
    json['entityNameFilter'] = entityNameFilter;
    return json;
  }

  @override
  String toString() {
    return 'EntityNameFilter{entityType: $entityType, entityNameFilter: $entityNameFilter}';
  }
}
