// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_template_start_steps_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentAppTemplateStartStepsInner
    extends AgentAppTemplateStartStepsInner {
  @override
  final OneOf oneOf;

  factory _$AgentAppTemplateStartStepsInner([
    void Function(AgentAppTemplateStartStepsInnerBuilder)? updates,
  ]) => (AgentAppTemplateStartStepsInnerBuilder()..update(updates))._build();

  _$AgentAppTemplateStartStepsInner._({required this.oneOf}) : super._();
  @override
  AgentAppTemplateStartStepsInner rebuild(
    void Function(AgentAppTemplateStartStepsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AgentAppTemplateStartStepsInnerBuilder toBuilder() =>
      AgentAppTemplateStartStepsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentAppTemplateStartStepsInner && oneOf == other.oneOf;
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
      r'AgentAppTemplateStartStepsInner',
    )..add('oneOf', oneOf)).toString();
  }
}

class AgentAppTemplateStartStepsInnerBuilder
    implements
        Builder<
          AgentAppTemplateStartStepsInner,
          AgentAppTemplateStartStepsInnerBuilder
        > {
  _$AgentAppTemplateStartStepsInner? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  AgentAppTemplateStartStepsInnerBuilder() {
    AgentAppTemplateStartStepsInner._defaults(this);
  }

  AgentAppTemplateStartStepsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentAppTemplateStartStepsInner other) {
    _$v = other as _$AgentAppTemplateStartStepsInner;
  }

  @override
  void update(void Function(AgentAppTemplateStartStepsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentAppTemplateStartStepsInner build() => _build();

  _$AgentAppTemplateStartStepsInner _build() {
    final _$result =
        _$v ??
        _$AgentAppTemplateStartStepsInner._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
            oneOf,
            r'AgentAppTemplateStartStepsInner',
            'oneOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
