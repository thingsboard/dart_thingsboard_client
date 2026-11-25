// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_field_agent_app_event_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StepFieldAgentAppEventId extends StepFieldAgentAppEventId {
  @override
  final AgentAppEventId? value;
  @override
  final bool? userChoice;

  factory _$StepFieldAgentAppEventId([
    void Function(StepFieldAgentAppEventIdBuilder)? updates,
  ]) => (StepFieldAgentAppEventIdBuilder()..update(updates))._build();

  _$StepFieldAgentAppEventId._({this.value, this.userChoice}) : super._();
  @override
  StepFieldAgentAppEventId rebuild(
    void Function(StepFieldAgentAppEventIdBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StepFieldAgentAppEventIdBuilder toBuilder() =>
      StepFieldAgentAppEventIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StepFieldAgentAppEventId &&
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
    return (newBuiltValueToStringHelper(r'StepFieldAgentAppEventId')
          ..add('value', value)
          ..add('userChoice', userChoice))
        .toString();
  }
}

class StepFieldAgentAppEventIdBuilder
    implements
        Builder<StepFieldAgentAppEventId, StepFieldAgentAppEventIdBuilder> {
  _$StepFieldAgentAppEventId? _$v;

  AgentAppEventIdBuilder? _value;
  AgentAppEventIdBuilder get value =>
      _$this._value ??= AgentAppEventIdBuilder();
  set value(AgentAppEventIdBuilder? value) => _$this._value = value;

  bool? _userChoice;
  bool? get userChoice => _$this._userChoice;
  set userChoice(bool? userChoice) => _$this._userChoice = userChoice;

  StepFieldAgentAppEventIdBuilder() {
    StepFieldAgentAppEventId._defaults(this);
  }

  StepFieldAgentAppEventIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value?.toBuilder();
      _userChoice = $v.userChoice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StepFieldAgentAppEventId other) {
    _$v = other as _$StepFieldAgentAppEventId;
  }

  @override
  void update(void Function(StepFieldAgentAppEventIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StepFieldAgentAppEventId build() => _build();

  _$StepFieldAgentAppEventId _build() {
    _$StepFieldAgentAppEventId _$result;
    try {
      _$result =
          _$v ??
          _$StepFieldAgentAppEventId._(
            value: _value?.build(),
            userChoice: userChoice,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'value';
        _value?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'StepFieldAgentAppEventId',
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
