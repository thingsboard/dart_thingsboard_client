// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_step_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class AgentAppStepStateBuilder {
  void replace(AgentAppStepState other);
  void update(void Function(AgentAppStepStateBuilder) updates);
  AgentAppStepType? get type;
  set type(AgentAppStepType? type);
}

class _$$AgentAppStepState extends $AgentAppStepState {
  @override
  final AgentAppStepType? type;

  factory _$$AgentAppStepState([
    void Function($AgentAppStepStateBuilder)? updates,
  ]) => ($AgentAppStepStateBuilder()..update(updates))._build();

  _$$AgentAppStepState._({this.type}) : super._();
  @override
  $AgentAppStepState rebuild(
    void Function($AgentAppStepStateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $AgentAppStepStateBuilder toBuilder() =>
      $AgentAppStepStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $AgentAppStepState && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'$AgentAppStepState',
    )..add('type', type)).toString();
  }
}

class $AgentAppStepStateBuilder
    implements
        Builder<$AgentAppStepState, $AgentAppStepStateBuilder>,
        AgentAppStepStateBuilder {
  _$$AgentAppStepState? _$v;

  AgentAppStepType? _type;
  AgentAppStepType? get type => _$this._type;
  set type(covariant AgentAppStepType? type) => _$this._type = type;

  $AgentAppStepStateBuilder() {
    $AgentAppStepState._defaults(this);
  }

  $AgentAppStepStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $AgentAppStepState other) {
    _$v = other as _$$AgentAppStepState;
  }

  @override
  void update(void Function($AgentAppStepStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $AgentAppStepState build() => _build();

  _$$AgentAppStepState _build() {
    final _$result = _$v ?? _$$AgentAppStepState._(type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
