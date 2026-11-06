// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_condition_value_integer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmConditionValueInteger extends AlarmConditionValueInteger {
  @override
  final int? staticValue;
  @override
  final String? dynamicValueArgument;

  factory _$AlarmConditionValueInteger([
    void Function(AlarmConditionValueIntegerBuilder)? updates,
  ]) => (AlarmConditionValueIntegerBuilder()..update(updates))._build();

  _$AlarmConditionValueInteger._({this.staticValue, this.dynamicValueArgument})
    : super._();
  @override
  AlarmConditionValueInteger rebuild(
    void Function(AlarmConditionValueIntegerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmConditionValueIntegerBuilder toBuilder() =>
      AlarmConditionValueIntegerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmConditionValueInteger &&
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
    return (newBuiltValueToStringHelper(r'AlarmConditionValueInteger')
          ..add('staticValue', staticValue)
          ..add('dynamicValueArgument', dynamicValueArgument))
        .toString();
  }
}

class AlarmConditionValueIntegerBuilder
    implements
        Builder<AlarmConditionValueInteger, AlarmConditionValueIntegerBuilder> {
  _$AlarmConditionValueInteger? _$v;

  int? _staticValue;
  int? get staticValue => _$this._staticValue;
  set staticValue(int? staticValue) => _$this._staticValue = staticValue;

  String? _dynamicValueArgument;
  String? get dynamicValueArgument => _$this._dynamicValueArgument;
  set dynamicValueArgument(String? dynamicValueArgument) =>
      _$this._dynamicValueArgument = dynamicValueArgument;

  AlarmConditionValueIntegerBuilder() {
    AlarmConditionValueInteger._defaults(this);
  }

  AlarmConditionValueIntegerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _staticValue = $v.staticValue;
      _dynamicValueArgument = $v.dynamicValueArgument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmConditionValueInteger other) {
    _$v = other as _$AlarmConditionValueInteger;
  }

  @override
  void update(void Function(AlarmConditionValueIntegerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmConditionValueInteger build() => _build();

  _$AlarmConditionValueInteger _build() {
    final _$result =
        _$v ??
        _$AlarmConditionValueInteger._(
          staticValue: staticValue,
          dynamicValueArgument: dynamicValueArgument,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
