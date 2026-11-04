// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../entity_filter/entity_filter.dart';
import '../entity_key/entity_key.dart';
import '../key_filter/key_filter.dart';
import '../page_link/entity_data_page_link.dart';
import 'entity_count_query.dart';

abstract class AbstractDataQuery<T extends EntityDataPageLink>
    extends EntityCountQuery {
  T pageLink;
  List<EntityKey>? entityFields;
  List<EntityKey>? latestValues;

  AbstractDataQuery({
    required EntityFilter entityFilter,
    List<KeyFilter>? keyFilters,
    required this.pageLink,
    this.entityFields,
    this.latestValues,
  }) : super(entityFilter: entityFilter, keyFilters: keyFilters);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['pageLink'] = pageLink.toJson();
    json['entityFields'] = entityFields != null
        ? entityFields!.map((e) => e.toJson()).toList()
        : [];
    json['latestValues'] = latestValues != null
        ? latestValues!.map((e) => e.toJson()).toList()
        : [];
    return json;
  }

  @override
  String toString() {
    return 'AbstractDataQuery{${dataQueryString()}}';
  }

  String dataQueryString([String? toStringBody]) {
    return '${entityCountQueryString('pageLink: $pageLink, entityFields: $entityFields, latestValues: $latestValues${toStringBody != null ? ', $toStringBody' : ''}')}';
  }
}
