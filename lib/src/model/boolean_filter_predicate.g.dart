// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boolean_filter_predicate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BooleanFilterPredicate extends BooleanFilterPredicate {
  @override
  final BooleanOperation? operation;
  @override
  final FilterPredicateValueBoolean? value;
  @override
  final String type;

  factory _$BooleanFilterPredicate([
    void Function(BooleanFilterPredicateBuilder)? updates,
  ]) => (BooleanFilterPredicateBuilder()..update(updates))._build();

  _$BooleanFilterPredicate._({this.operation, this.value, required this.type})
    : super._();
  @override
  BooleanFilterPredicate rebuild(
    void Function(BooleanFilterPredicateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BooleanFilterPredicateBuilder toBuilder() =>
      BooleanFilterPredicateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BooleanFilterPredicate &&
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
    return (newBuiltValueToStringHelper(r'BooleanFilterPredicate')
          ..add('operation', operation)
          ..add('value', value)
          ..add('type', type))
        .toString();
  }
}

class BooleanFilterPredicateBuilder
    implements
        Builder<BooleanFilterPredicate, BooleanFilterPredicateBuilder>,
        KeyFilterPredicateBuilder {
  _$BooleanFilterPredicate? _$v;

  BooleanOperation? _operation;
  BooleanOperation? get operation => _$this._operation;
  set operation(covariant BooleanOperation? operation) =>
      _$this._operation = operation;

  FilterPredicateValueBooleanBuilder? _value;
  FilterPredicateValueBooleanBuilder get value =>
      _$this._value ??= FilterPredicateValueBooleanBuilder();
  set value(covariant FilterPredicateValueBooleanBuilder? value) =>
      _$this._value = value;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  BooleanFilterPredicateBuilder() {
    BooleanFilterPredicate._defaults(this);
  }

  BooleanFilterPredicateBuilder get _$this {
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
  void replace(covariant BooleanFilterPredicate other) {
    _$v = other as _$BooleanFilterPredicate;
  }

  @override
  void update(void Function(BooleanFilterPredicateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BooleanFilterPredicate build() => _build();

  _$BooleanFilterPredicate _build() {
    _$BooleanFilterPredicate _$result;
    try {
      _$result =
          _$v ??
          _$BooleanFilterPredicate._(
            operation: operation,
            value: _value?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'BooleanFilterPredicate',
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
          r'BooleanFilterPredicate',
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
