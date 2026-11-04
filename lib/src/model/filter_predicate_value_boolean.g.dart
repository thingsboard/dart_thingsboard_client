// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_predicate_value_boolean.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilterPredicateValueBoolean extends FilterPredicateValueBoolean {
  @override
  final bool? defaultValue;
  @override
  final bool? userValue;
  @override
  final DynamicValueBoolean? dynamicValue;

  factory _$FilterPredicateValueBoolean([
    void Function(FilterPredicateValueBooleanBuilder)? updates,
  ]) => (FilterPredicateValueBooleanBuilder()..update(updates))._build();

  _$FilterPredicateValueBoolean._({
    this.defaultValue,
    this.userValue,
    this.dynamicValue,
  }) : super._();
  @override
  FilterPredicateValueBoolean rebuild(
    void Function(FilterPredicateValueBooleanBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FilterPredicateValueBooleanBuilder toBuilder() =>
      FilterPredicateValueBooleanBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterPredicateValueBoolean &&
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
    return (newBuiltValueToStringHelper(r'FilterPredicateValueBoolean')
          ..add('defaultValue', defaultValue)
          ..add('userValue', userValue)
          ..add('dynamicValue', dynamicValue))
        .toString();
  }
}

class FilterPredicateValueBooleanBuilder
    implements
        Builder<
          FilterPredicateValueBoolean,
          FilterPredicateValueBooleanBuilder
        > {
  _$FilterPredicateValueBoolean? _$v;

  bool? _defaultValue;
  bool? get defaultValue => _$this._defaultValue;
  set defaultValue(bool? defaultValue) => _$this._defaultValue = defaultValue;

  bool? _userValue;
  bool? get userValue => _$this._userValue;
  set userValue(bool? userValue) => _$this._userValue = userValue;

  DynamicValueBooleanBuilder? _dynamicValue;
  DynamicValueBooleanBuilder get dynamicValue =>
      _$this._dynamicValue ??= DynamicValueBooleanBuilder();
  set dynamicValue(DynamicValueBooleanBuilder? dynamicValue) =>
      _$this._dynamicValue = dynamicValue;

  FilterPredicateValueBooleanBuilder() {
    FilterPredicateValueBoolean._defaults(this);
  }

  FilterPredicateValueBooleanBuilder get _$this {
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
  void replace(FilterPredicateValueBoolean other) {
    _$v = other as _$FilterPredicateValueBoolean;
  }

  @override
  void update(void Function(FilterPredicateValueBooleanBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterPredicateValueBoolean build() => _build();

  _$FilterPredicateValueBoolean _build() {
    _$FilterPredicateValueBoolean _$result;
    try {
      _$result =
          _$v ??
          _$FilterPredicateValueBoolean._(
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
          r'FilterPredicateValueBoolean',
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
