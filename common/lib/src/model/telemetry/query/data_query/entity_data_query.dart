// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../page_link/entity_data_page_link.dart';
import 'abstract_data_query.dart';

class EntityDataQuery extends AbstractDataQuery<EntityDataPageLink> {
  EntityDataQuery({
    required super.entityFilter,
    super.keyFilters,
    required super.pageLink,
    super.entityFields,
    super.latestValues,
  });

  EntityDataQuery next() {
    return EntityDataQuery(
      entityFilter: entityFilter,
      pageLink: pageLink.nextPageLink(),
      keyFilters: keyFilters,
      entityFields: entityFields,
      latestValues: latestValues,
    );
  }

  @override
  String toString() {
    return 'EntityDataQuery{${dataQueryString()}}';
  }
}
