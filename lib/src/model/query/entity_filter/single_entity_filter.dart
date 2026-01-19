import 'package:thingsboard_client/src/model/id/entity_id.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter_type.dart';

class SingleEntityFilter extends EntityFilter {
  EntityId singleEntity;

  SingleEntityFilter({required this.singleEntity});

  @override
  EntityFilterType getType() {
    return EntityFilterType.SINGLE_ENTITY;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['singleEntity'] = singleEntity.toJson();
    return json;
  }

  @override
  String toString() {
    return 'SingleEntityFilter{singleEntity: $singleEntity}';
  }
}
