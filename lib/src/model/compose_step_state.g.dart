// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compose_step_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComposeStepState extends ComposeStepState {
  @override
  final StepFieldListString? serviceImageRegexPatterns;
  @override
  final StepFieldBoolean? pullImages;
  @override
  final AgentAppStepType? type;

  factory _$ComposeStepState([
    void Function(ComposeStepStateBuilder)? updates,
  ]) => (ComposeStepStateBuilder()..update(updates))._build();

  _$ComposeStepState._({
    this.serviceImageRegexPatterns,
    this.pullImages,
    this.type,
  }) : super._();
  @override
  ComposeStepState rebuild(void Function(ComposeStepStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComposeStepStateBuilder toBuilder() =>
      ComposeStepStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComposeStepState &&
        serviceImageRegexPatterns == other.serviceImageRegexPatterns &&
        pullImages == other.pullImages &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceImageRegexPatterns.hashCode);
    _$hash = $jc(_$hash, pullImages.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComposeStepState')
          ..add('serviceImageRegexPatterns', serviceImageRegexPatterns)
          ..add('pullImages', pullImages)
          ..add('type', type))
        .toString();
  }
}

class ComposeStepStateBuilder
    implements
        Builder<ComposeStepState, ComposeStepStateBuilder>,
        AgentAppStepStateBuilder {
  _$ComposeStepState? _$v;

  StepFieldListStringBuilder? _serviceImageRegexPatterns;
  StepFieldListStringBuilder get serviceImageRegexPatterns =>
      _$this._serviceImageRegexPatterns ??= StepFieldListStringBuilder();
  set serviceImageRegexPatterns(
    covariant StepFieldListStringBuilder? serviceImageRegexPatterns,
  ) => _$this._serviceImageRegexPatterns = serviceImageRegexPatterns;

  StepFieldBooleanBuilder? _pullImages;
  StepFieldBooleanBuilder get pullImages =>
      _$this._pullImages ??= StepFieldBooleanBuilder();
  set pullImages(covariant StepFieldBooleanBuilder? pullImages) =>
      _$this._pullImages = pullImages;

  AgentAppStepType? _type;
  AgentAppStepType? get type => _$this._type;
  set type(covariant AgentAppStepType? type) => _$this._type = type;

  ComposeStepStateBuilder() {
    ComposeStepState._defaults(this);
  }

  ComposeStepStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceImageRegexPatterns = $v.serviceImageRegexPatterns?.toBuilder();
      _pullImages = $v.pullImages?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ComposeStepState other) {
    _$v = other as _$ComposeStepState;
  }

  @override
  void update(void Function(ComposeStepStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComposeStepState build() => _build();

  _$ComposeStepState _build() {
    _$ComposeStepState _$result;
    try {
      _$result =
          _$v ??
          _$ComposeStepState._(
            serviceImageRegexPatterns: _serviceImageRegexPatterns?.build(),
            pullImages: _pullImages?.build(),
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serviceImageRegexPatterns';
        _serviceImageRegexPatterns?.build();
        _$failedField = 'pullImages';
        _pullImages?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ComposeStepState',
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
