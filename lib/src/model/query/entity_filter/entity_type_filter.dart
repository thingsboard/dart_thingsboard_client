import 'package:thingsboard_client/src/model/entity_type_models.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter_type.dart';

class EntityTypeFilter extends EntityFilter {
  EntityType entityType;

  EntityTypeFilter({required this.entityType});

  @override
  EntityFilterType getType() {
    return EntityFilterType.ENTITY_TYPE;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityType'] = entityType.toShortString();
    return json;
  }

  @override
  String toString() {
    return 'EntityTypeFilter{entityType: $entityType}';
  }
}
