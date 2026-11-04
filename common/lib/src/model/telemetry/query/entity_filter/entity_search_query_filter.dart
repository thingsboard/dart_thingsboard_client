// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../id/entity_id.dart';
import 'entity_filter.dart';

enum EntitySearchDirection { FROM, TO }

EntitySearchDirection entitySearchDirectionFromString(String value) {
  return EntitySearchDirection.values.firstWhere(
    (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase(),
  );
}

extension EntitySearchDirectionToString on EntitySearchDirection {
  String toShortString() {
    return toString().split('.').last;
  }
}

abstract class EntitySearchQueryFilter extends EntityFilter {
  EntityId rootEntity;
  String? relationType;
  EntitySearchDirection direction;
  int maxLevel;
  bool fetchLastLevelOnly;
  bool rootStateEntity;
  EntityId? defaultStateEntity;

  EntitySearchQueryFilter({
    required this.rootEntity,
    this.relationType,
    this.direction = EntitySearchDirection.FROM,
    this.maxLevel = 1,
    this.fetchLastLevelOnly = false,
    this.rootStateEntity = false,
    this.defaultStateEntity,
  });

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (defaultStateEntity != null) {
      json['defaultStateEntity'] = defaultStateEntity!.toJson();
    }
    json['rootStateEntity'] = rootStateEntity;
    json['rootEntity'] = rootEntity.toJson();
    json['direction'] = direction.toShortString();
    json['maxLevel'] = maxLevel;
    json['fetchLastLevelOnly'] = fetchLastLevelOnly;
    if (relationType != null) {
      json['relationType'] = relationType;
    }
    return json;
  }

  @override
  String toString() {
    return 'EntitySearchQueryFilter{${entitySearchQueryFilterString()}}';
  }

  String entitySearchQueryFilterString([String? toStringBody]) {
    return 'rootEntity: $rootEntity, defaultStateEntity: $defaultStateEntity, relationType: $relationType, rootStateEntity: $rootStateEntity, direction: $direction, maxLevel: $maxLevel, fetchLastLevelOnly: $fetchLastLevelOnly${toStringBody != null ? ', $toStringBody' : ''}';
  }
}
