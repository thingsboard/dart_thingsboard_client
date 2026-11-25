// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_condition_value_long.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmConditionValueLong extends AlarmConditionValueLong {
  @override
  final int? staticValue;
  @override
  final String? dynamicValueArgument;

  factory _$AlarmConditionValueLong([
    void Function(AlarmConditionValueLongBuilder)? updates,
  ]) => (AlarmConditionValueLongBuilder()..update(updates))._build();

  _$AlarmConditionValueLong._({this.staticValue, this.dynamicValueArgument})
    : super._();
  @override
  AlarmConditionValueLong rebuild(
    void Function(AlarmConditionValueLongBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmConditionValueLongBuilder toBuilder() =>
      AlarmConditionValueLongBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmConditionValueLong &&
        staticValue == other.staticValue &&
        dynamicValueArgument == other.dynamicValueArgument;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, staticValue.hashCode);
    _$hash = $jc(_$hash, dynamicValueArgument.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmConditionValueLong')
          ..add('staticValue', staticValue)
          ..add('dynamicValueArgument', dynamicValueArgument))
        .toString();
  }
}

class AlarmConditionValueLongBuilder
    implements
        Builder<AlarmConditionValueLong, AlarmConditionValueLongBuilder> {
  _$AlarmConditionValueLong? _$v;

  int? _staticValue;
  int? get staticValue => _$this._staticValue;
  set staticValue(int? staticValue) => _$this._staticValue = staticValue;

  String? _dynamicValueArgument;
  String? get dynamicValueArgument => _$this._dynamicValueArgument;
  set dynamicValueArgument(String? dynamicValueArgument) =>
      _$this._dynamicValueArgument = dynamicValueArgument;

  AlarmConditionValueLongBuilder() {
    AlarmConditionValueLong._defaults(this);
  }

  AlarmConditionValueLongBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _staticValue = $v.staticValue;
      _dynamicValueArgument = $v.dynamicValueArgument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmConditionValueLong other) {
    _$v = other as _$AlarmConditionValueLong;
  }

  @override
  void update(void Function(AlarmConditionValueLongBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmConditionValueLong build() => _build();

  _$AlarmConditionValueLong _build() {
    final _$result =
        _$v ??
        _$AlarmConditionValueLong._(
          staticValue: staticValue,
          dynamicValueArgument: dynamicValueArgument,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
