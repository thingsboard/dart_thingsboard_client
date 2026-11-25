// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dummy_task_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DummyTaskResult extends DummyTaskResult {
  @override
  final DummyTaskFailure? failure;
  @override
  final String? key;
  @override
  final bool? success;
  @override
  final bool? discarded;
  @override
  final int? finishTs;
  @override
  final String? error;
  @override
  final String jobType;

  factory _$DummyTaskResult([void Function(DummyTaskResultBuilder)? updates]) =>
      (DummyTaskResultBuilder()..update(updates))._build();

  _$DummyTaskResult._({
    this.failure,
    this.key,
    this.success,
    this.discarded,
    this.finishTs,
    this.error,
    required this.jobType,
  }) : super._();
  @override
  DummyTaskResult rebuild(void Function(DummyTaskResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DummyTaskResultBuilder toBuilder() => DummyTaskResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DummyTaskResult &&
        failure == other.failure &&
        key == other.key &&
        success == other.success &&
        discarded == other.discarded &&
        finishTs == other.finishTs &&
        error == other.error &&
        jobType == other.jobType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, failure.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, discarded.hashCode);
    _$hash = $jc(_$hash, finishTs.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, jobType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DummyTaskResult')
          ..add('failure', failure)
          ..add('key', key)
          ..add('success', success)
          ..add('discarded', discarded)
          ..add('finishTs', finishTs)
          ..add('error', error)
          ..add('jobType', jobType))
        .toString();
  }
}

class DummyTaskResultBuilder
    implements
        Builder<DummyTaskResult, DummyTaskResultBuilder>,
        TaskResultBuilder {
  _$DummyTaskResult? _$v;

  DummyTaskFailureBuilder? _failure;
  DummyTaskFailureBuilder get failure =>
      _$this._failure ??= DummyTaskFailureBuilder();
  set failure(covariant DummyTaskFailureBuilder? failure) =>
      _$this._failure = failure;

  String? _key;
  String? get key => _$this._key;
  set key(covariant String? key) => _$this._key = key;

  bool? _success;
  bool? get success => _$this._success;
  set success(covariant bool? success) => _$this._success = success;

  bool? _discarded;
  bool? get discarded => _$this._discarded;
  set discarded(covariant bool? discarded) => _$this._discarded = discarded;

  int? _finishTs;
  int? get finishTs => _$this._finishTs;
  set finishTs(covariant int? finishTs) => _$this._finishTs = finishTs;

  String? _error;
  String? get error => _$this._error;
  set error(covariant String? error) => _$this._error = error;

  String? _jobType;
  String? get jobType => _$this._jobType;
  set jobType(covariant String? jobType) => _$this._jobType = jobType;

  DummyTaskResultBuilder() {
    DummyTaskResult._defaults(this);
  }

  DummyTaskResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failure = $v.failure?.toBuilder();
      _key = $v.key;
      _success = $v.success;
      _discarded = $v.discarded;
      _finishTs = $v.finishTs;
      _error = $v.error;
      _jobType = $v.jobType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DummyTaskResult other) {
    _$v = other as _$DummyTaskResult;
  }

  @override
  void update(void Function(DummyTaskResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DummyTaskResult build() => _build();

  _$DummyTaskResult _build() {
    _$DummyTaskResult _$result;
    try {
      _$result =
          _$v ??
          _$DummyTaskResult._(
            failure: _failure?.build(),
            key: key,
            success: success,
            discarded: discarded,
            finishTs: finishTs,
            error: error,
            jobType: BuiltValueNullFieldError.checkNotNull(
              jobType,
              r'DummyTaskResult',
              'jobType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failure';
        _failure?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DummyTaskResult',
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
