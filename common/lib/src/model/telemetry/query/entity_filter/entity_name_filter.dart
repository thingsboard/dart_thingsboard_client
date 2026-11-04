// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../id/entity_type_models.dart';
import 'entity_filter.dart';
import 'entity_filter_type.dart';

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
