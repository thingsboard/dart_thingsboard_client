// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../id/entity_id.dart';
import 'entity_filter.dart';
import 'entity_filter_type.dart';

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
