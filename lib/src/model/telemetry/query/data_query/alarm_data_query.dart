// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../entity_filter/entity_filter.dart';
import '../entity_key/entity_key.dart';
import '../key_filter/key_filter.dart';
import '../page_link/alarm_data_page_link.dart';
import 'abstract_data_query.dart';

class AlarmDataQuery extends AbstractDataQuery<AlarmDataPageLink> {
  List<EntityKey>? alarmFields;

  AlarmDataQuery({
    required EntityFilter entityFilter,
    List<KeyFilter>? keyFilters,
    required AlarmDataPageLink pageLink,
    List<EntityKey>? entityFields,
    List<EntityKey>? latestValues,
    this.alarmFields,
  }) : super(
            entityFilter: entityFilter,
            keyFilters: keyFilters,
            pageLink: pageLink,
            entityFields: entityFields,
            latestValues: latestValues);

  AlarmDataQuery next() {
    return AlarmDataQuery(
        entityFilter: entityFilter,
        pageLink: pageLink.nextPageLink(),
        keyFilters: keyFilters,
        entityFields: entityFields,
        latestValues: latestValues,
        alarmFields: alarmFields);
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (alarmFields != null) {
      json['alarmFields'] = alarmFields!.map((e) => e.toJson()).toList();
    }
    return json;
  }

  @override
  String toString() {
    return 'AlarmDataQuery{${dataQueryString('alarmFields: $alarmFields')}}';
  }
}
