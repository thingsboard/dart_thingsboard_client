// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_field_string.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StepFieldString extends StepFieldString {
  @override
  final String? value;
  @override
  final bool? userChoice;

  factory _$StepFieldString([void Function(StepFieldStringBuilder)? updates]) =>
      (StepFieldStringBuilder()..update(updates))._build();

  _$StepFieldString._({this.value, this.userChoice}) : super._();
  @override
  StepFieldString rebuild(void Function(StepFieldStringBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StepFieldStringBuilder toBuilder() => StepFieldStringBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StepFieldString &&
        value == other.value &&
        userChoice == other.userChoice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, userChoice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StepFieldString')
          ..add('value', value)
          ..add('userChoice', userChoice))
        .toString();
  }
}

class StepFieldStringBuilder
    implements Builder<StepFieldString, StepFieldStringBuilder> {
  _$StepFieldString? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  bool? _userChoice;
  bool? get userChoice => _$this._userChoice;
  set userChoice(bool? userChoice) => _$this._userChoice = userChoice;

  StepFieldStringBuilder() {
    StepFieldString._defaults(this);
  }

  StepFieldStringBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _userChoice = $v.userChoice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StepFieldString other) {
    _$v = other as _$StepFieldString;
  }

  @override
  void update(void Function(StepFieldStringBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StepFieldString build() => _build();

  _$StepFieldString _build() {
    final _$result =
        _$v ?? _$StepFieldString._(value: value, userChoice: userChoice);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
