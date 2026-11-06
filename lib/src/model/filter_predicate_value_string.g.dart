// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_predicate_value_string.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilterPredicateValueString extends FilterPredicateValueString {
  @override
  final String? defaultValue;
  @override
  final String? userValue;
  @override
  final DynamicValueString? dynamicValue;

  factory _$FilterPredicateValueString([
    void Function(FilterPredicateValueStringBuilder)? updates,
  ]) => (FilterPredicateValueStringBuilder()..update(updates))._build();

  _$FilterPredicateValueString._({
    this.defaultValue,
    this.userValue,
    this.dynamicValue,
  }) : super._();
  @override
  FilterPredicateValueString rebuild(
    void Function(FilterPredicateValueStringBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FilterPredicateValueStringBuilder toBuilder() =>
      FilterPredicateValueStringBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterPredicateValueString &&
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
    return (newBuiltValueToStringHelper(r'FilterPredicateValueString')
          ..add('defaultValue', defaultValue)
          ..add('userValue', userValue)
          ..add('dynamicValue', dynamicValue))
        .toString();
  }
}

class FilterPredicateValueStringBuilder
    implements
        Builder<FilterPredicateValueString, FilterPredicateValueStringBuilder> {
  _$FilterPredicateValueString? _$v;

  String? _defaultValue;
  String? get defaultValue => _$this._defaultValue;
  set defaultValue(String? defaultValue) => _$this._defaultValue = defaultValue;

  String? _userValue;
  String? get userValue => _$this._userValue;
  set userValue(String? userValue) => _$this._userValue = userValue;

  DynamicValueStringBuilder? _dynamicValue;
  DynamicValueStringBuilder get dynamicValue =>
      _$this._dynamicValue ??= DynamicValueStringBuilder();
  set dynamicValue(DynamicValueStringBuilder? dynamicValue) =>
      _$this._dynamicValue = dynamicValue;

  FilterPredicateValueStringBuilder() {
    FilterPredicateValueString._defaults(this);
  }

  FilterPredicateValueStringBuilder get _$this {
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
  void replace(FilterPredicateValueString other) {
    _$v = other as _$FilterPredicateValueString;
  }

  @override
  void update(void Function(FilterPredicateValueStringBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterPredicateValueString build() => _build();

  _$FilterPredicateValueString _build() {
    _$FilterPredicateValueString _$result;
    try {
      _$result =
          _$v ??
          _$FilterPredicateValueString._(
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
          r'FilterPredicateValueString',
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
