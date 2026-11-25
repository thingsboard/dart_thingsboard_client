// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_event_step_states_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentAppEventStepStatesValue extends AgentAppEventStepStatesValue {
  @override
  final OneOf oneOf;

  factory _$AgentAppEventStepStatesValue([
    void Function(AgentAppEventStepStatesValueBuilder)? updates,
  ]) => (AgentAppEventStepStatesValueBuilder()..update(updates))._build();

  _$AgentAppEventStepStatesValue._({required this.oneOf}) : super._();
  @override
  AgentAppEventStepStatesValue rebuild(
    void Function(AgentAppEventStepStatesValueBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AgentAppEventStepStatesValueBuilder toBuilder() =>
      AgentAppEventStepStatesValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentAppEventStepStatesValue && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AgentAppEventStepStatesValue',
    )..add('oneOf', oneOf)).toString();
  }
}

class AgentAppEventStepStatesValueBuilder
    implements
        Builder<
          AgentAppEventStepStatesValue,
          AgentAppEventStepStatesValueBuilder
        > {
  _$AgentAppEventStepStatesValue? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  AgentAppEventStepStatesValueBuilder() {
    AgentAppEventStepStatesValue._defaults(this);
  }

  AgentAppEventStepStatesValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentAppEventStepStatesValue other) {
    _$v = other as _$AgentAppEventStepStatesValue;
  }

  @override
  void update(void Function(AgentAppEventStepStatesValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentAppEventStepStatesValue build() => _build();

  _$AgentAppEventStepStatesValue _build() {
    final _$result =
        _$v ??
        _$AgentAppEventStepStatesValue._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
            oneOf,
            r'AgentAppEventStepStatesValue',
            'oneOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
