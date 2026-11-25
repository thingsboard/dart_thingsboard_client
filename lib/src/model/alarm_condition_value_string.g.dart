// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_condition_value_string.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmConditionValueString extends AlarmConditionValueString {
  @override
  final String? staticValue;
  @override
  final String? dynamicValueArgument;

  factory _$AlarmConditionValueString([
    void Function(AlarmConditionValueStringBuilder)? updates,
  ]) => (AlarmConditionValueStringBuilder()..update(updates))._build();

  _$AlarmConditionValueString._({this.staticValue, this.dynamicValueArgument})
    : super._();
  @override
  AlarmConditionValueString rebuild(
    void Function(AlarmConditionValueStringBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmConditionValueStringBuilder toBuilder() =>
      AlarmConditionValueStringBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmConditionValueString &&
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
    return (newBuiltValueToStringHelper(r'AlarmConditionValueString')
          ..add('staticValue', staticValue)
          ..add('dynamicValueArgument', dynamicValueArgument))
        .toString();
  }
}

class AlarmConditionValueStringBuilder
    implements
        Builder<AlarmConditionValueString, AlarmConditionValueStringBuilder> {
  _$AlarmConditionValueString? _$v;

  String? _staticValue;
  String? get staticValue => _$this._staticValue;
  set staticValue(String? staticValue) => _$this._staticValue = staticValue;

  String? _dynamicValueArgument;
  String? get dynamicValueArgument => _$this._dynamicValueArgument;
  set dynamicValueArgument(String? dynamicValueArgument) =>
      _$this._dynamicValueArgument = dynamicValueArgument;

  AlarmConditionValueStringBuilder() {
    AlarmConditionValueString._defaults(this);
  }

  AlarmConditionValueStringBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _staticValue = $v.staticValue;
      _dynamicValueArgument = $v.dynamicValueArgument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmConditionValueString other) {
    _$v = other as _$AlarmConditionValueString;
  }

  @override
  void update(void Function(AlarmConditionValueStringBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmConditionValueString build() => _build();

  _$AlarmConditionValueString _build() {
    final _$result =
        _$v ??
        _$AlarmConditionValueString._(
          staticValue: staticValue,
          dynamicValueArgument: dynamicValueArgument,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
