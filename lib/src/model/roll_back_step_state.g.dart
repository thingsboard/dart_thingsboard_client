// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roll_back_step_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RollBackStepState extends RollBackStepState {
  @override
  final StepFieldAgentAppEventId? failedEventId;
  @override
  final AgentAppStepType? type;

  factory _$RollBackStepState([
    void Function(RollBackStepStateBuilder)? updates,
  ]) => (RollBackStepStateBuilder()..update(updates))._build();

  _$RollBackStepState._({this.failedEventId, this.type}) : super._();
  @override
  RollBackStepState rebuild(void Function(RollBackStepStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RollBackStepStateBuilder toBuilder() =>
      RollBackStepStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RollBackStepState &&
        failedEventId == other.failedEventId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, failedEventId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RollBackStepState')
          ..add('failedEventId', failedEventId)
          ..add('type', type))
        .toString();
  }
}

class RollBackStepStateBuilder
    implements
        Builder<RollBackStepState, RollBackStepStateBuilder>,
        AgentAppStepStateBuilder {
  _$RollBackStepState? _$v;

  StepFieldAgentAppEventIdBuilder? _failedEventId;
  StepFieldAgentAppEventIdBuilder get failedEventId =>
      _$this._failedEventId ??= StepFieldAgentAppEventIdBuilder();
  set failedEventId(covariant StepFieldAgentAppEventIdBuilder? failedEventId) =>
      _$this._failedEventId = failedEventId;

  AgentAppStepType? _type;
  AgentAppStepType? get type => _$this._type;
  set type(covariant AgentAppStepType? type) => _$this._type = type;

  RollBackStepStateBuilder() {
    RollBackStepState._defaults(this);
  }

  RollBackStepStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failedEventId = $v.failedEventId?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RollBackStepState other) {
    _$v = other as _$RollBackStepState;
  }

  @override
  void update(void Function(RollBackStepStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RollBackStepState build() => _build();

  _$RollBackStepState _build() {
    _$RollBackStepState _$result;
    try {
      _$result =
          _$v ??
          _$RollBackStepState._(
            failedEventId: _failedEventId?.build(),
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failedEventId';
        _failedEventId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RollBackStepState',
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
