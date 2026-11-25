// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_condition_value_double.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmConditionValueDouble extends AlarmConditionValueDouble {
  @override
  final double? staticValue;
  @override
  final String? dynamicValueArgument;

  factory _$AlarmConditionValueDouble([
    void Function(AlarmConditionValueDoubleBuilder)? updates,
  ]) => (AlarmConditionValueDoubleBuilder()..update(updates))._build();

  _$AlarmConditionValueDouble._({this.staticValue, this.dynamicValueArgument})
    : super._();
  @override
  AlarmConditionValueDouble rebuild(
    void Function(AlarmConditionValueDoubleBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmConditionValueDoubleBuilder toBuilder() =>
      AlarmConditionValueDoubleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmConditionValueDouble &&
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
    return (newBuiltValueToStringHelper(r'AlarmConditionValueDouble')
          ..add('staticValue', staticValue)
          ..add('dynamicValueArgument', dynamicValueArgument))
        .toString();
  }
}

class AlarmConditionValueDoubleBuilder
    implements
        Builder<AlarmConditionValueDouble, AlarmConditionValueDoubleBuilder> {
  _$AlarmConditionValueDouble? _$v;

  double? _staticValue;
  double? get staticValue => _$this._staticValue;
  set staticValue(double? staticValue) => _$this._staticValue = staticValue;

  String? _dynamicValueArgument;
  String? get dynamicValueArgument => _$this._dynamicValueArgument;
  set dynamicValueArgument(String? dynamicValueArgument) =>
      _$this._dynamicValueArgument = dynamicValueArgument;

  AlarmConditionValueDoubleBuilder() {
    AlarmConditionValueDouble._defaults(this);
  }

  AlarmConditionValueDoubleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _staticValue = $v.staticValue;
      _dynamicValueArgument = $v.dynamicValueArgument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmConditionValueDouble other) {
    _$v = other as _$AlarmConditionValueDouble;
  }

  @override
  void update(void Function(AlarmConditionValueDoubleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmConditionValueDouble build() => _build();

  _$AlarmConditionValueDouble _build() {
    final _$result =
        _$v ??
        _$AlarmConditionValueDouble._(
          staticValue: staticValue,
          dynamicValueArgument: dynamicValueArgument,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
