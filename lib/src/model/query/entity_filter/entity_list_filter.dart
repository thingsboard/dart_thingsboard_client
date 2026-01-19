import 'package:thingsboard_client/src/model/entity_type_models.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter_type.dart';

class EntityListFilter extends EntityFilter {
  EntityType entityType;
  List<String> entityList;

  EntityListFilter({required this.entityType, required this.entityList});

  @override
  EntityFilterType getType() {
    return EntityFilterType.ENTITY_LIST;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityType'] = entityType.toShortString();
    json['entityList'] = entityList;
    return json;
  }

  @override
  String toString() {
    return 'EntityListFilter{entityType: $entityType, entityList: $entityList}';
  }
}
