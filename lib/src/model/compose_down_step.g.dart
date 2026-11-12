// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compose_down_step.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComposeDownStep extends ComposeDownStep {
  @override
  final ComposeDownStepState? state;
  @override
  final String? id;
  @override
  final String? nextId;
  @override
  final String? title;
  @override
  final bool? templateOnly;
  @override
  final String? condition;
  @override
  final bool? stateful;
  @override
  final AgentAppStepType? type;

  factory _$ComposeDownStep([void Function(ComposeDownStepBuilder)? updates]) =>
      (ComposeDownStepBuilder()..update(updates))._build();

  _$ComposeDownStep._({
    this.state,
    this.id,
    this.nextId,
    this.title,
    this.templateOnly,
    this.condition,
    this.stateful,
    this.type,
  }) : super._();
  @override
  ComposeDownStep rebuild(void Function(ComposeDownStepBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComposeDownStepBuilder toBuilder() => ComposeDownStepBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComposeDownStep &&
        state == other.state &&
        id == other.id &&
        nextId == other.nextId &&
        title == other.title &&
        templateOnly == other.templateOnly &&
        condition == other.condition &&
        stateful == other.stateful &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, nextId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, templateOnly.hashCode);
    _$hash = $jc(_$hash, condition.hashCode);
    _$hash = $jc(_$hash, stateful.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComposeDownStep')
          ..add('state', state)
          ..add('id', id)
          ..add('nextId', nextId)
          ..add('title', title)
          ..add('templateOnly', templateOnly)
          ..add('condition', condition)
          ..add('stateful', stateful)
          ..add('type', type))
        .toString();
  }
}

class ComposeDownStepBuilder
    implements
        Builder<ComposeDownStep, ComposeDownStepBuilder>,
        AgentAppStepBuilder {
  _$ComposeDownStep? _$v;

  ComposeDownStepStateBuilder? _state;
  ComposeDownStepStateBuilder get state =>
      _$this._state ??= ComposeDownStepStateBuilder();
  set state(covariant ComposeDownStepStateBuilder? state) =>
      _$this._state = state;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _nextId;
  String? get nextId => _$this._nextId;
  set nextId(covariant String? nextId) => _$this._nextId = nextId;

  String? _title;
  String? get title => _$this._title;
  set title(covariant String? title) => _$this._title = title;

  bool? _templateOnly;
  bool? get templateOnly => _$this._templateOnly;
  set templateOnly(covariant bool? templateOnly) =>
      _$this._templateOnly = templateOnly;

  String? _condition;
  String? get condition => _$this._condition;
  set condition(covariant String? condition) => _$this._condition = condition;

  bool? _stateful;
  bool? get stateful => _$this._stateful;
  set stateful(covariant bool? stateful) => _$this._stateful = stateful;

  AgentAppStepType? _type;
  AgentAppStepType? get type => _$this._type;
  set type(covariant AgentAppStepType? type) => _$this._type = type;

  ComposeDownStepBuilder() {
    ComposeDownStep._defaults(this);
  }

  ComposeDownStepBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state?.toBuilder();
      _id = $v.id;
      _nextId = $v.nextId;
      _title = $v.title;
      _templateOnly = $v.templateOnly;
      _condition = $v.condition;
      _stateful = $v.stateful;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ComposeDownStep other) {
    _$v = other as _$ComposeDownStep;
  }

  @override
  void update(void Function(ComposeDownStepBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComposeDownStep build() => _build();

  _$ComposeDownStep _build() {
    _$ComposeDownStep _$result;
    try {
      _$result =
          _$v ??
          _$ComposeDownStep._(
            state: _state?.build(),
            id: id,
            nextId: nextId,
            title: title,
            templateOnly: templateOnly,
            condition: condition,
            stateful: stateful,
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'state';
        _state?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ComposeDownStep',
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
