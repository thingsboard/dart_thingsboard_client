// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'numeric_filter_predicate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NumericFilterPredicate extends NumericFilterPredicate {
  @override
  final NumericOperation? operation;
  @override
  final FilterPredicateValueDouble? value;
  @override
  final String type;

  factory _$NumericFilterPredicate([
    void Function(NumericFilterPredicateBuilder)? updates,
  ]) => (NumericFilterPredicateBuilder()..update(updates))._build();

  _$NumericFilterPredicate._({this.operation, this.value, required this.type})
    : super._();
  @override
  NumericFilterPredicate rebuild(
    void Function(NumericFilterPredicateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NumericFilterPredicateBuilder toBuilder() =>
      NumericFilterPredicateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NumericFilterPredicate &&
        operation == other.operation &&
        value == other.value &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NumericFilterPredicate')
          ..add('operation', operation)
          ..add('value', value)
          ..add('type', type))
        .toString();
  }
}

class NumericFilterPredicateBuilder
    implements
        Builder<NumericFilterPredicate, NumericFilterPredicateBuilder>,
        KeyFilterPredicateBuilder {
  _$NumericFilterPredicate? _$v;

  NumericOperation? _operation;
  NumericOperation? get operation => _$this._operation;
  set operation(covariant NumericOperation? operation) =>
      _$this._operation = operation;

  FilterPredicateValueDoubleBuilder? _value;
  FilterPredicateValueDoubleBuilder get value =>
      _$this._value ??= FilterPredicateValueDoubleBuilder();
  set value(covariant FilterPredicateValueDoubleBuilder? value) =>
      _$this._value = value;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  NumericFilterPredicateBuilder() {
    NumericFilterPredicate._defaults(this);
  }

  NumericFilterPredicateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operation = $v.operation;
      _value = $v.value?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant NumericFilterPredicate other) {
    _$v = other as _$NumericFilterPredicate;
  }

  @override
  void update(void Function(NumericFilterPredicateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NumericFilterPredicate build() => _build();

  _$NumericFilterPredicate _build() {
    _$NumericFilterPredicate _$result;
    try {
      _$result =
          _$v ??
          _$NumericFilterPredicate._(
            operation: operation,
            value: _value?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'NumericFilterPredicate',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'value';
        _value?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NumericFilterPredicate',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
