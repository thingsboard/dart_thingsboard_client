// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_field_list_string.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StepFieldListString extends StepFieldListString {
  @override
  final bool? userChoice;
  @override
  final BuiltList<String>? value;

  factory _$StepFieldListString([
    void Function(StepFieldListStringBuilder)? updates,
  ]) => (StepFieldListStringBuilder()..update(updates))._build();

  _$StepFieldListString._({this.userChoice, this.value}) : super._();
  @override
  StepFieldListString rebuild(
    void Function(StepFieldListStringBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StepFieldListStringBuilder toBuilder() =>
      StepFieldListStringBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StepFieldListString &&
        userChoice == other.userChoice &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userChoice.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StepFieldListString')
          ..add('userChoice', userChoice)
          ..add('value', value))
        .toString();
  }
}

class StepFieldListStringBuilder
    implements Builder<StepFieldListString, StepFieldListStringBuilder> {
  _$StepFieldListString? _$v;

  bool? _userChoice;
  bool? get userChoice => _$this._userChoice;
  set userChoice(bool? userChoice) => _$this._userChoice = userChoice;

  ListBuilder<String>? _value;
  ListBuilder<String> get value => _$this._value ??= ListBuilder<String>();
  set value(ListBuilder<String>? value) => _$this._value = value;

  StepFieldListStringBuilder() {
    StepFieldListString._defaults(this);
  }

  StepFieldListStringBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userChoice = $v.userChoice;
      _value = $v.value?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StepFieldListString other) {
    _$v = other as _$StepFieldListString;
  }

  @override
  void update(void Function(StepFieldListStringBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StepFieldListString build() => _build();

  _$StepFieldListString _build() {
    _$StepFieldListString _$result;
    try {
      _$result =
          _$v ??
          _$StepFieldListString._(
            userChoice: userChoice,
            value: _value?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'value';
        _value?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'StepFieldListString',
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
