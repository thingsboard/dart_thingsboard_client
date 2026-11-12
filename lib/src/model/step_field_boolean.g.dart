// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_field_boolean.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StepFieldBoolean extends StepFieldBoolean {
  @override
  final bool? value;
  @override
  final bool? userChoice;

  factory _$StepFieldBoolean([
    void Function(StepFieldBooleanBuilder)? updates,
  ]) => (StepFieldBooleanBuilder()..update(updates))._build();

  _$StepFieldBoolean._({this.value, this.userChoice}) : super._();
  @override
  StepFieldBoolean rebuild(void Function(StepFieldBooleanBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StepFieldBooleanBuilder toBuilder() =>
      StepFieldBooleanBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StepFieldBoolean &&
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
    return (newBuiltValueToStringHelper(r'StepFieldBoolean')
          ..add('value', value)
          ..add('userChoice', userChoice))
        .toString();
  }
}

class StepFieldBooleanBuilder
    implements Builder<StepFieldBoolean, StepFieldBooleanBuilder> {
  _$StepFieldBoolean? _$v;

  bool? _value;
  bool? get value => _$this._value;
  set value(bool? value) => _$this._value = value;

  bool? _userChoice;
  bool? get userChoice => _$this._userChoice;
  set userChoice(bool? userChoice) => _$this._userChoice = userChoice;

  StepFieldBooleanBuilder() {
    StepFieldBoolean._defaults(this);
  }

  StepFieldBooleanBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _userChoice = $v.userChoice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StepFieldBoolean other) {
    _$v = other as _$StepFieldBoolean;
  }

  @override
  void update(void Function(StepFieldBooleanBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StepFieldBoolean build() => _build();

  _$StepFieldBoolean _build() {
    final _$result =
        _$v ?? _$StepFieldBoolean._(value: value, userChoice: userChoice);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
