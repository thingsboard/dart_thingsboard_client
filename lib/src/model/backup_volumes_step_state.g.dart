// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_volumes_step_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupVolumesStepState extends BackupVolumesStepState {
  @override
  final StepFieldListString? backupVolumes;
  @override
  final AgentAppStepType? type;

  factory _$BackupVolumesStepState([
    void Function(BackupVolumesStepStateBuilder)? updates,
  ]) => (BackupVolumesStepStateBuilder()..update(updates))._build();

  _$BackupVolumesStepState._({this.backupVolumes, this.type}) : super._();
  @override
  BackupVolumesStepState rebuild(
    void Function(BackupVolumesStepStateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BackupVolumesStepStateBuilder toBuilder() =>
      BackupVolumesStepStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupVolumesStepState &&
        backupVolumes == other.backupVolumes &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, backupVolumes.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BackupVolumesStepState')
          ..add('backupVolumes', backupVolumes)
          ..add('type', type))
        .toString();
  }
}

class BackupVolumesStepStateBuilder
    implements
        Builder<BackupVolumesStepState, BackupVolumesStepStateBuilder>,
        AgentAppStepStateBuilder {
  _$BackupVolumesStepState? _$v;

  StepFieldListStringBuilder? _backupVolumes;
  StepFieldListStringBuilder get backupVolumes =>
      _$this._backupVolumes ??= StepFieldListStringBuilder();
  set backupVolumes(covariant StepFieldListStringBuilder? backupVolumes) =>
      _$this._backupVolumes = backupVolumes;

  AgentAppStepType? _type;
  AgentAppStepType? get type => _$this._type;
  set type(covariant AgentAppStepType? type) => _$this._type = type;

  BackupVolumesStepStateBuilder() {
    BackupVolumesStepState._defaults(this);
  }

  BackupVolumesStepStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backupVolumes = $v.backupVolumes?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BackupVolumesStepState other) {
    _$v = other as _$BackupVolumesStepState;
  }

  @override
  void update(void Function(BackupVolumesStepStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupVolumesStepState build() => _build();

  _$BackupVolumesStepState _build() {
    _$BackupVolumesStepState _$result;
    try {
      _$result =
          _$v ??
          _$BackupVolumesStepState._(
            backupVolumes: _backupVolumes?.build(),
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'backupVolumes';
        _backupVolumes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BackupVolumesStepState',
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
