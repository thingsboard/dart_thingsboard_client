import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter_type.dart';

class EdgeTypeFilter extends EntityFilter {
  @Deprecated(
      "will be replaced by [edgeTypes]. This value will be appended to [edgeTypes] array")
  String? edgeType;
  String? edgeNameFilter;
  List<String> edgeTypes;

  EdgeTypeFilter(
      {this.edgeType, this.edgeNameFilter, required this.edgeTypes}) {
    if (edgeType != null) {
      edgeTypes.add(edgeType!);
    }
  }

  @override
  EntityFilterType getType() {
    return EntityFilterType.EDGE_TYPE;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['edgeTypes'] = edgeTypes;
    if (edgeNameFilter != null) {
      json['edgeNameFilter'] = edgeNameFilter;
    }
    return json;
  }

  @override
  String toString() {
    return 'EdgeTypeFilter{edgeType: $edgeType, edgeNameFilter: $edgeNameFilter}';
  }
}
