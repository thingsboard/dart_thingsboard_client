// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../id/entity_type_models.dart';
import 'entity_filter.dart';
import 'entity_filter_type.dart';

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
