// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compose_down_step_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComposeDownStepState extends ComposeDownStepState {
  @override
  final StepFieldBoolean? removeVolumes;
  @override
  final StepFieldListString? serviceImageRegexPatterns;
  @override
  final AgentAppStepType? type;

  factory _$ComposeDownStepState([
    void Function(ComposeDownStepStateBuilder)? updates,
  ]) => (ComposeDownStepStateBuilder()..update(updates))._build();

  _$ComposeDownStepState._({
    this.removeVolumes,
    this.serviceImageRegexPatterns,
    this.type,
  }) : super._();
  @override
  ComposeDownStepState rebuild(
    void Function(ComposeDownStepStateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ComposeDownStepStateBuilder toBuilder() =>
      ComposeDownStepStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComposeDownStepState &&
        removeVolumes == other.removeVolumes &&
        serviceImageRegexPatterns == other.serviceImageRegexPatterns &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, removeVolumes.hashCode);
    _$hash = $jc(_$hash, serviceImageRegexPatterns.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComposeDownStepState')
          ..add('removeVolumes', removeVolumes)
          ..add('serviceImageRegexPatterns', serviceImageRegexPatterns)
          ..add('type', type))
        .toString();
  }
}

class ComposeDownStepStateBuilder
    implements
        Builder<ComposeDownStepState, ComposeDownStepStateBuilder>,
        AgentAppStepStateBuilder {
  _$ComposeDownStepState? _$v;

  StepFieldBooleanBuilder? _removeVolumes;
  StepFieldBooleanBuilder get removeVolumes =>
      _$this._removeVolumes ??= StepFieldBooleanBuilder();
  set removeVolumes(covariant StepFieldBooleanBuilder? removeVolumes) =>
      _$this._removeVolumes = removeVolumes;

  StepFieldListStringBuilder? _serviceImageRegexPatterns;
  StepFieldListStringBuilder get serviceImageRegexPatterns =>
      _$this._serviceImageRegexPatterns ??= StepFieldListStringBuilder();
  set serviceImageRegexPatterns(
    covariant StepFieldListStringBuilder? serviceImageRegexPatterns,
  ) => _$this._serviceImageRegexPatterns = serviceImageRegexPatterns;

  AgentAppStepType? _type;
  AgentAppStepType? get type => _$this._type;
  set type(covariant AgentAppStepType? type) => _$this._type = type;

  ComposeDownStepStateBuilder() {
    ComposeDownStepState._defaults(this);
  }

  ComposeDownStepStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _removeVolumes = $v.removeVolumes?.toBuilder();
      _serviceImageRegexPatterns = $v.serviceImageRegexPatterns?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ComposeDownStepState other) {
    _$v = other as _$ComposeDownStepState;
  }

  @override
  void update(void Function(ComposeDownStepStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComposeDownStepState build() => _build();

  _$ComposeDownStepState _build() {
    _$ComposeDownStepState _$result;
    try {
      _$result =
          _$v ??
          _$ComposeDownStepState._(
            removeVolumes: _removeVolumes?.build(),
            serviceImageRegexPatterns: _serviceImageRegexPatterns?.build(),
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'removeVolumes';
        _removeVolumes?.build();
        _$failedField = 'serviceImageRegexPatterns';
        _serviceImageRegexPatterns?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ComposeDownStepState',
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
