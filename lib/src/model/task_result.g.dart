// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class TaskResultBuilder {
  void replace(TaskResult other);
  void update(void Function(TaskResultBuilder) updates);
  String? get key;
  set key(String? key);

  bool? get success;
  set success(bool? success);

  bool? get discarded;
  set discarded(bool? discarded);

  int? get finishTs;
  set finishTs(int? finishTs);

  String? get error;
  set error(String? error);

  String? get jobType;
  set jobType(String? jobType);
}

class _$$TaskResult extends $TaskResult {
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

  factory _$$TaskResult([void Function($TaskResultBuilder)? updates]) =>
      ($TaskResultBuilder()..update(updates))._build();

  _$$TaskResult._({
    this.key,
    this.success,
    this.discarded,
    this.finishTs,
    this.error,
    required this.jobType,
  }) : super._();
  @override
  $TaskResult rebuild(void Function($TaskResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $TaskResultBuilder toBuilder() => $TaskResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $TaskResult &&
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
    return (newBuiltValueToStringHelper(r'$TaskResult')
          ..add('key', key)
          ..add('success', success)
          ..add('discarded', discarded)
          ..add('finishTs', finishTs)
          ..add('error', error)
          ..add('jobType', jobType))
        .toString();
  }
}

class $TaskResultBuilder
    implements Builder<$TaskResult, $TaskResultBuilder>, TaskResultBuilder {
  _$$TaskResult? _$v;

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

  $TaskResultBuilder() {
    $TaskResult._defaults(this);
  }

  $TaskResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(covariant $TaskResult other) {
    _$v = other as _$$TaskResult;
  }

  @override
  void update(void Function($TaskResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $TaskResult build() => _build();

  _$$TaskResult _build() {
    final _$result =
        _$v ??
        _$$TaskResult._(
          key: key,
          success: success,
          discarded: discarded,
          finishTs: finishTs,
          error: error,
          jobType: BuiltValueNullFieldError.checkNotNull(
            jobType,
            r'$TaskResult',
            'jobType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
