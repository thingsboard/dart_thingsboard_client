// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class TsValue {
  int ts;
  String? value;

  TsValue({required this.ts, this.value});

  TsValue.fromJson(Map<String, dynamic> json)
      : ts = json['ts'],
        value = json['value'];

  TsValue.fromJsonList(List<dynamic> json)
      : ts = json[0],
        value = json[1];

  @override
  String toString() {
    return 'TsValue{ts: $ts, value: $value}';
  }
}

class ComparisonTsValue {
  final TsValue current;
  final TsValue? previous;

  ComparisonTsValue({required this.current, this.previous});

  ComparisonTsValue.fromJson(Map<String, dynamic> json)
      : current = TsValue.fromJson(json['current']),
        previous = json['previous'] != null
            ? TsValue.fromJson(json['previous'])
            : null;

  @override
  String toString() {
    return 'ComparisonTsValue{current: $current, previous: $previous}';
  }
}
