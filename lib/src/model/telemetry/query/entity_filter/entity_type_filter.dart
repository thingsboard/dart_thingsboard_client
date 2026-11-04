// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../id/entity_type_models.dart';
import 'entity_filter.dart';
import 'entity_filter_type.dart';

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
