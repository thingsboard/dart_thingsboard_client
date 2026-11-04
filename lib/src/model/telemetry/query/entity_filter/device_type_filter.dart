// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'entity_filter.dart';
import 'entity_filter_type.dart';

class DeviceTypeFilter extends EntityFilter {
  @Deprecated(
      "will be replaced by [deviceTypes]. This value will be appended to [deviceTypes] array")
  String? deviceType;
  String? deviceNameFilter;
  List<String> deviceTypes;

  DeviceTypeFilter(
      {this.deviceType, required this.deviceTypes, this.deviceNameFilter}) {
    if (deviceType != null) {
      deviceTypes.add(deviceType!);
    }
  }

  @override
  EntityFilterType getType() {
    return EntityFilterType.DEVICE_TYPE;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['deviceTypes'] = deviceTypes;
    if (deviceNameFilter != null) {
      json['deviceNameFilter'] = deviceNameFilter;
    }
    return json;
  }

  @override
  String toString() {
    return 'DeviceTypeFilter{deviceType: $deviceType, deviceNameFilter: $deviceNameFilter}';
  }
}
