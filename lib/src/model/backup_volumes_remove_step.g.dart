// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_volumes_remove_step.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupVolumesRemoveStep extends BackupVolumesRemoveStep {
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

  factory _$BackupVolumesRemoveStep([
    void Function(BackupVolumesRemoveStepBuilder)? updates,
  ]) => (BackupVolumesRemoveStepBuilder()..update(updates))._build();

  _$BackupVolumesRemoveStep._({
    this.id,
    this.nextId,
    this.title,
    this.templateOnly,
    this.condition,
    this.stateful,
    this.type,
  }) : super._();
  @override
  BackupVolumesRemoveStep rebuild(
    void Function(BackupVolumesRemoveStepBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BackupVolumesRemoveStepBuilder toBuilder() =>
      BackupVolumesRemoveStepBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupVolumesRemoveStep &&
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
    return (newBuiltValueToStringHelper(r'BackupVolumesRemoveStep')
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

class BackupVolumesRemoveStepBuilder
    implements
        Builder<BackupVolumesRemoveStep, BackupVolumesRemoveStepBuilder>,
        AgentAppStepBuilder {
  _$BackupVolumesRemoveStep? _$v;

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

  BackupVolumesRemoveStepBuilder() {
    BackupVolumesRemoveStep._defaults(this);
  }

  BackupVolumesRemoveStepBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(covariant BackupVolumesRemoveStep other) {
    _$v = other as _$BackupVolumesRemoveStep;
  }

  @override
  void update(void Function(BackupVolumesRemoveStepBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupVolumesRemoveStep build() => _build();

  _$BackupVolumesRemoveStep _build() {
    final _$result =
        _$v ??
        _$BackupVolumesRemoveStep._(
          id: id,
          nextId: nextId,
          title: title,
          templateOnly: templateOnly,
          condition: condition,
          stateful: stateful,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
