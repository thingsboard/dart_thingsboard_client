// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_predicate_value_double.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilterPredicateValueDouble extends FilterPredicateValueDouble {
  @override
  final double? defaultValue;
  @override
  final double? userValue;
  @override
  final DynamicValueDouble? dynamicValue;

  factory _$FilterPredicateValueDouble([
    void Function(FilterPredicateValueDoubleBuilder)? updates,
  ]) => (FilterPredicateValueDoubleBuilder()..update(updates))._build();

  _$FilterPredicateValueDouble._({
    this.defaultValue,
    this.userValue,
    this.dynamicValue,
  }) : super._();
  @override
  FilterPredicateValueDouble rebuild(
    void Function(FilterPredicateValueDoubleBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FilterPredicateValueDoubleBuilder toBuilder() =>
      FilterPredicateValueDoubleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterPredicateValueDouble &&
        defaultValue == other.defaultValue &&
        userValue == other.userValue &&
        dynamicValue == other.dynamicValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jc(_$hash, userValue.hashCode);
    _$hash = $jc(_$hash, dynamicValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilterPredicateValueDouble')
          ..add('defaultValue', defaultValue)
          ..add('userValue', userValue)
          ..add('dynamicValue', dynamicValue))
        .toString();
  }
}

class FilterPredicateValueDoubleBuilder
    implements
        Builder<FilterPredicateValueDouble, FilterPredicateValueDoubleBuilder> {
  _$FilterPredicateValueDouble? _$v;

  double? _defaultValue;
  double? get defaultValue => _$this._defaultValue;
  set defaultValue(double? defaultValue) => _$this._defaultValue = defaultValue;

  double? _userValue;
  double? get userValue => _$this._userValue;
  set userValue(double? userValue) => _$this._userValue = userValue;

  DynamicValueDoubleBuilder? _dynamicValue;
  DynamicValueDoubleBuilder get dynamicValue =>
      _$this._dynamicValue ??= DynamicValueDoubleBuilder();
  set dynamicValue(DynamicValueDoubleBuilder? dynamicValue) =>
      _$this._dynamicValue = dynamicValue;

  FilterPredicateValueDoubleBuilder() {
    FilterPredicateValueDouble._defaults(this);
  }

  FilterPredicateValueDoubleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultValue = $v.defaultValue;
      _userValue = $v.userValue;
      _dynamicValue = $v.dynamicValue?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterPredicateValueDouble other) {
    _$v = other as _$FilterPredicateValueDouble;
  }

  @override
  void update(void Function(FilterPredicateValueDoubleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterPredicateValueDouble build() => _build();

  _$FilterPredicateValueDouble _build() {
    _$FilterPredicateValueDouble _$result;
    try {
      _$result =
          _$v ??
          _$FilterPredicateValueDouble._(
            defaultValue: defaultValue,
            userValue: userValue,
            dynamicValue: _dynamicValue?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dynamicValue';
        _dynamicValue?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FilterPredicateValueDouble',
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
