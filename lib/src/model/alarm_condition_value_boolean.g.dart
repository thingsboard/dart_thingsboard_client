// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_condition_value_boolean.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmConditionValueBoolean extends AlarmConditionValueBoolean {
  @override
  final bool? staticValue;
  @override
  final String? dynamicValueArgument;

  factory _$AlarmConditionValueBoolean([
    void Function(AlarmConditionValueBooleanBuilder)? updates,
  ]) => (AlarmConditionValueBooleanBuilder()..update(updates))._build();

  _$AlarmConditionValueBoolean._({this.staticValue, this.dynamicValueArgument})
    : super._();
  @override
  AlarmConditionValueBoolean rebuild(
    void Function(AlarmConditionValueBooleanBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmConditionValueBooleanBuilder toBuilder() =>
      AlarmConditionValueBooleanBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmConditionValueBoolean &&
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
    return (newBuiltValueToStringHelper(r'AlarmConditionValueBoolean')
          ..add('staticValue', staticValue)
          ..add('dynamicValueArgument', dynamicValueArgument))
        .toString();
  }
}

class AlarmConditionValueBooleanBuilder
    implements
        Builder<AlarmConditionValueBoolean, AlarmConditionValueBooleanBuilder> {
  _$AlarmConditionValueBoolean? _$v;

  bool? _staticValue;
  bool? get staticValue => _$this._staticValue;
  set staticValue(bool? staticValue) => _$this._staticValue = staticValue;

  String? _dynamicValueArgument;
  String? get dynamicValueArgument => _$this._dynamicValueArgument;
  set dynamicValueArgument(String? dynamicValueArgument) =>
      _$this._dynamicValueArgument = dynamicValueArgument;

  AlarmConditionValueBooleanBuilder() {
    AlarmConditionValueBoolean._defaults(this);
  }

  AlarmConditionValueBooleanBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _staticValue = $v.staticValue;
      _dynamicValueArgument = $v.dynamicValueArgument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmConditionValueBoolean other) {
    _$v = other as _$AlarmConditionValueBoolean;
  }

  @override
  void update(void Function(AlarmConditionValueBooleanBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmConditionValueBoolean build() => _build();

  _$AlarmConditionValueBoolean _build() {
    final _$result =
        _$v ??
        _$AlarmConditionValueBoolean._(
          staticValue: staticValue,
          dynamicValueArgument: dynamicValueArgument,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
