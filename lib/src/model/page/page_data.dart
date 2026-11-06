// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

typedef FromJsonFunction<T> = T Function(dynamic json);

class PageData<T> {
  List<T> data;
  int totalPages;
  int totalElements;
  bool hasNext;

  PageData(this.data, this.totalPages, this.totalElements, this.hasNext);

  PageData.fromJson(Map<String, dynamic> json, FromJsonFunction<T> fromJson)
    : data = _dataFromJson(json['data'], fromJson),
      totalPages = json['totalPages'],
      totalElements = json['totalElements'],
      hasNext = json['hasNext'];

  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'totalPages': totalPages,
      'totalElements': totalElements,
      'hasNext': hasNext,
    };
  }

  @override
  String toString() {
    return 'PageData{data: $data, totalPages: $totalPages, totalElements: $totalElements, hasNext: $hasNext}';
  }
}

PageData<T> emptyPageData<T>() => PageData<T>([], 0, 0, false);

List<T> _dataFromJson<T>(List<dynamic> jsonData, FromJsonFunction<T> fromJson) {
  return jsonData.map((e) => fromJson(e)).toList();
}
