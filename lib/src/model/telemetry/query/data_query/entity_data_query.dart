// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../entity_filter/entity_filter.dart';
import '../entity_key/entity_key.dart';
import '../key_filter/key_filter.dart';
import '../page_link/entity_data_page_link.dart';
import 'abstract_data_query.dart';

class EntityDataQuery extends AbstractDataQuery<EntityDataPageLink> {
  EntityDataQuery({
    required EntityFilter entityFilter,
    List<KeyFilter>? keyFilters,
    required EntityDataPageLink pageLink,
    List<EntityKey>? entityFields,
    List<EntityKey>? latestValues,
  }) : super(
            entityFilter: entityFilter,
            keyFilters: keyFilters,
            pageLink: pageLink,
            entityFields: entityFields,
            latestValues: latestValues);

  EntityDataQuery next() {
    return EntityDataQuery(
        entityFilter: entityFilter,
        pageLink: pageLink.nextPageLink(),
        keyFilters: keyFilters,
        entityFields: entityFields,
        latestValues: latestValues);
  }

  @override
  String toString() {
    return 'EntityDataQuery{${dataQueryString()}}';
  }
}
