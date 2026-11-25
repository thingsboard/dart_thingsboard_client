// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_field_integer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StepFieldInteger extends StepFieldInteger {
  @override
  final int? value;
  @override
  final bool? userChoice;

  factory _$StepFieldInteger([
    void Function(StepFieldIntegerBuilder)? updates,
  ]) => (StepFieldIntegerBuilder()..update(updates))._build();

  _$StepFieldInteger._({this.value, this.userChoice}) : super._();
  @override
  StepFieldInteger rebuild(void Function(StepFieldIntegerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StepFieldIntegerBuilder toBuilder() =>
      StepFieldIntegerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StepFieldInteger &&
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
    return (newBuiltValueToStringHelper(r'StepFieldInteger')
          ..add('value', value)
          ..add('userChoice', userChoice))
        .toString();
  }
}

class StepFieldIntegerBuilder
    implements Builder<StepFieldInteger, StepFieldIntegerBuilder> {
  _$StepFieldInteger? _$v;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  bool? _userChoice;
  bool? get userChoice => _$this._userChoice;
  set userChoice(bool? userChoice) => _$this._userChoice = userChoice;

  StepFieldIntegerBuilder() {
    StepFieldInteger._defaults(this);
  }

  StepFieldIntegerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _userChoice = $v.userChoice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StepFieldInteger other) {
    _$v = other as _$StepFieldInteger;
  }

  @override
  void update(void Function(StepFieldIntegerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StepFieldInteger build() => _build();

  _$StepFieldInteger _build() {
    final _$result =
        _$v ?? _$StepFieldInteger._(value: value, userChoice: userChoice);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
