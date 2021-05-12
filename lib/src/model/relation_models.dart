import 'entity_type_models.dart';

enum EntitySearchDirection {
  FROM,
  TO
}

EntitySearchDirection entitySearchDirectionFromString(String value) {
  return EntitySearchDirection.values.firstWhere((e)=>e.toString().split('.')[1].toUpperCase()==value.toUpperCase());
}

extension EntitySearchDirectionToString on EntitySearchDirection {
  String toShortString() {
    return toString().split('.').last;
  }
}

class RelationEntityTypeFilter {

  String relationType;
  List<EntityType> entityTypes;

  RelationEntityTypeFilter(this.relationType, this.entityTypes);

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['relationType'] = relationType;
    json['entityTypes'] = entityTypes.map((e) => e.toShortString()).toList();
    return json;
  }

  @override
  String toString() {
    return 'RelationEntityTypeFilter{relationType: $relationType, entityTypes: $entityTypes}';
  }
}
