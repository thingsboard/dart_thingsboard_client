// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../entity_key/entity_key.dart';
import '../page_link/alarm_data_page_link.dart';
import 'abstract_data_query.dart';

class AlarmDataQuery extends AbstractDataQuery<AlarmDataPageLink> {
  List<EntityKey>? alarmFields;

  AlarmDataQuery({
    required super.entityFilter,
    super.keyFilters,
    required super.pageLink,
    super.entityFields,
    super.latestValues,
    this.alarmFields,
  });

  AlarmDataQuery next() {
    return AlarmDataQuery(
      entityFilter: entityFilter,
      pageLink: pageLink.nextPageLink(),
      keyFilters: keyFilters,
      entityFields: entityFields,
      latestValues: latestValues,
      alarmFields: alarmFields,
    );
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
