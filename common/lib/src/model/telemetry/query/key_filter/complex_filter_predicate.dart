// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'key_filter_predicate.dart';

enum ComplexOperation { AND, OR }

ComplexOperation complexOperationFromString(String value) {
  return ComplexOperation.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension ComplexOperationToString on ComplexOperation {
  String toShortString() {
    return toString().split('.').last;
  }
}

class ComplexFilterPredicate extends KeyFilterPredicate {
  ComplexOperation operation;
  List<KeyFilterPredicate> predicates;

  ComplexFilterPredicate({required this.operation, required this.predicates});

  @override
  FilterPredicateType getType() {
    return FilterPredicateType.COMPLEX;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['operation'] = operation.toShortString();
    json['predicates'] = predicates.map((e) => e.toJson()).toList();
    return json;
  }

  @override
  String toString() {
    return 'ComplexFilterPredicate{operation: $operation, predicates: $predicates}';
  }
}
