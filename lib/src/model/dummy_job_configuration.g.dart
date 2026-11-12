// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dummy_job_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DummyJobConfiguration extends DummyJobConfiguration {
  @override
  final int? retries;
  @override
  final String? generalError;
  @override
  final int? permanentlyFailedTasksCount;
  @override
  final int? submittedTasksBeforeGeneralError;
  @override
  final int? taskProcessingTimeMs;
  @override
  final int? failedTasksCount;
  @override
  final int? taskProcessingTimeoutMs;
  @override
  final int? successfulTasksCount;
  @override
  final BuiltList<String>? errors;
  @override
  final String tasksKey;
  @override
  final BuiltList<TaskResult>? toReprocess;
  @override
  final String type;

  factory _$DummyJobConfiguration([
    void Function(DummyJobConfigurationBuilder)? updates,
  ]) => (DummyJobConfigurationBuilder()..update(updates))._build();

  _$DummyJobConfiguration._({
    this.retries,
    this.generalError,
    this.permanentlyFailedTasksCount,
    this.submittedTasksBeforeGeneralError,
    this.taskProcessingTimeMs,
    this.failedTasksCount,
    this.taskProcessingTimeoutMs,
    this.successfulTasksCount,
    this.errors,
    required this.tasksKey,
    this.toReprocess,
    required this.type,
  }) : super._();
  @override
  DummyJobConfiguration rebuild(
    void Function(DummyJobConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DummyJobConfigurationBuilder toBuilder() =>
      DummyJobConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DummyJobConfiguration &&
        retries == other.retries &&
        generalError == other.generalError &&
        permanentlyFailedTasksCount == other.permanentlyFailedTasksCount &&
        submittedTasksBeforeGeneralError ==
            other.submittedTasksBeforeGeneralError &&
        taskProcessingTimeMs == other.taskProcessingTimeMs &&
        failedTasksCount == other.failedTasksCount &&
        taskProcessingTimeoutMs == other.taskProcessingTimeoutMs &&
        successfulTasksCount == other.successfulTasksCount &&
        errors == other.errors &&
        tasksKey == other.tasksKey &&
        toReprocess == other.toReprocess &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, retries.hashCode);
    _$hash = $jc(_$hash, generalError.hashCode);
    _$hash = $jc(_$hash, permanentlyFailedTasksCount.hashCode);
    _$hash = $jc(_$hash, submittedTasksBeforeGeneralError.hashCode);
    _$hash = $jc(_$hash, taskProcessingTimeMs.hashCode);
    _$hash = $jc(_$hash, failedTasksCount.hashCode);
    _$hash = $jc(_$hash, taskProcessingTimeoutMs.hashCode);
    _$hash = $jc(_$hash, successfulTasksCount.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, tasksKey.hashCode);
    _$hash = $jc(_$hash, toReprocess.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DummyJobConfiguration')
          ..add('retries', retries)
          ..add('generalError', generalError)
          ..add('permanentlyFailedTasksCount', permanentlyFailedTasksCount)
          ..add(
            'submittedTasksBeforeGeneralError',
            submittedTasksBeforeGeneralError,
          )
          ..add('taskProcessingTimeMs', taskProcessingTimeMs)
          ..add('failedTasksCount', failedTasksCount)
          ..add('taskProcessingTimeoutMs', taskProcessingTimeoutMs)
          ..add('successfulTasksCount', successfulTasksCount)
          ..add('errors', errors)
          ..add('tasksKey', tasksKey)
          ..add('toReprocess', toReprocess)
          ..add('type', type))
        .toString();
  }
}

class DummyJobConfigurationBuilder
    implements
        Builder<DummyJobConfiguration, DummyJobConfigurationBuilder>,
        JobConfigurationBuilder {
  _$DummyJobConfiguration? _$v;

  int? _retries;
  int? get retries => _$this._retries;
  set retries(covariant int? retries) => _$this._retries = retries;

  String? _generalError;
  String? get generalError => _$this._generalError;
  set generalError(covariant String? generalError) =>
      _$this._generalError = generalError;

  int? _permanentlyFailedTasksCount;
  int? get permanentlyFailedTasksCount => _$this._permanentlyFailedTasksCount;
  set permanentlyFailedTasksCount(covariant int? permanentlyFailedTasksCount) =>
      _$this._permanentlyFailedTasksCount = permanentlyFailedTasksCount;

  int? _submittedTasksBeforeGeneralError;
  int? get submittedTasksBeforeGeneralError =>
      _$this._submittedTasksBeforeGeneralError;
  set submittedTasksBeforeGeneralError(
    covariant int? submittedTasksBeforeGeneralError,
  ) => _$this._submittedTasksBeforeGeneralError =
      submittedTasksBeforeGeneralError;

  int? _taskProcessingTimeMs;
  int? get taskProcessingTimeMs => _$this._taskProcessingTimeMs;
  set taskProcessingTimeMs(covariant int? taskProcessingTimeMs) =>
      _$this._taskProcessingTimeMs = taskProcessingTimeMs;

  int? _failedTasksCount;
  int? get failedTasksCount => _$this._failedTasksCount;
  set failedTasksCount(covariant int? failedTasksCount) =>
      _$this._failedTasksCount = failedTasksCount;

  int? _taskProcessingTimeoutMs;
  int? get taskProcessingTimeoutMs => _$this._taskProcessingTimeoutMs;
  set taskProcessingTimeoutMs(covariant int? taskProcessingTimeoutMs) =>
      _$this._taskProcessingTimeoutMs = taskProcessingTimeoutMs;

  int? _successfulTasksCount;
  int? get successfulTasksCount => _$this._successfulTasksCount;
  set successfulTasksCount(covariant int? successfulTasksCount) =>
      _$this._successfulTasksCount = successfulTasksCount;

  ListBuilder<String>? _errors;
  ListBuilder<String> get errors => _$this._errors ??= ListBuilder<String>();
  set errors(covariant ListBuilder<String>? errors) => _$this._errors = errors;

  String? _tasksKey;
  String? get tasksKey => _$this._tasksKey;
  set tasksKey(covariant String? tasksKey) => _$this._tasksKey = tasksKey;

  ListBuilder<TaskResult>? _toReprocess;
  ListBuilder<TaskResult> get toReprocess =>
      _$this._toReprocess ??= ListBuilder<TaskResult>();
  set toReprocess(covariant ListBuilder<TaskResult>? toReprocess) =>
      _$this._toReprocess = toReprocess;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  DummyJobConfigurationBuilder() {
    DummyJobConfiguration._defaults(this);
  }

  DummyJobConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _retries = $v.retries;
      _generalError = $v.generalError;
      _permanentlyFailedTasksCount = $v.permanentlyFailedTasksCount;
      _submittedTasksBeforeGeneralError = $v.submittedTasksBeforeGeneralError;
      _taskProcessingTimeMs = $v.taskProcessingTimeMs;
      _failedTasksCount = $v.failedTasksCount;
      _taskProcessingTimeoutMs = $v.taskProcessingTimeoutMs;
      _successfulTasksCount = $v.successfulTasksCount;
      _errors = $v.errors?.toBuilder();
      _tasksKey = $v.tasksKey;
      _toReprocess = $v.toReprocess?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DummyJobConfiguration other) {
    _$v = other as _$DummyJobConfiguration;
  }

  @override
  void update(void Function(DummyJobConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DummyJobConfiguration build() => _build();

  _$DummyJobConfiguration _build() {
    _$DummyJobConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$DummyJobConfiguration._(
            retries: retries,
            generalError: generalError,
            permanentlyFailedTasksCount: permanentlyFailedTasksCount,
            submittedTasksBeforeGeneralError: submittedTasksBeforeGeneralError,
            taskProcessingTimeMs: taskProcessingTimeMs,
            failedTasksCount: failedTasksCount,
            taskProcessingTimeoutMs: taskProcessingTimeoutMs,
            successfulTasksCount: successfulTasksCount,
            errors: _errors?.build(),
            tasksKey: BuiltValueNullFieldError.checkNotNull(
              tasksKey,
              r'DummyJobConfiguration',
              'tasksKey',
            ),
            toReprocess: _toReprocess?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'DummyJobConfiguration',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();

        _$failedField = 'toReprocess';
        _toReprocess?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DummyJobConfiguration',
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
