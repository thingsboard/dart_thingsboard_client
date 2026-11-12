// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_task_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportTaskResult extends ReportTaskResult {
  @override
  final Report? report;
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

  factory _$ReportTaskResult([
    void Function(ReportTaskResultBuilder)? updates,
  ]) => (ReportTaskResultBuilder()..update(updates))._build();

  _$ReportTaskResult._({
    this.report,
    this.key,
    this.success,
    this.discarded,
    this.finishTs,
    this.error,
    required this.jobType,
  }) : super._();
  @override
  ReportTaskResult rebuild(void Function(ReportTaskResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportTaskResultBuilder toBuilder() =>
      ReportTaskResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportTaskResult &&
        report == other.report &&
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
    _$hash = $jc(_$hash, report.hashCode);
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
    return (newBuiltValueToStringHelper(r'ReportTaskResult')
          ..add('report', report)
          ..add('key', key)
          ..add('success', success)
          ..add('discarded', discarded)
          ..add('finishTs', finishTs)
          ..add('error', error)
          ..add('jobType', jobType))
        .toString();
  }
}

class ReportTaskResultBuilder
    implements
        Builder<ReportTaskResult, ReportTaskResultBuilder>,
        TaskResultBuilder {
  _$ReportTaskResult? _$v;

  ReportBuilder? _report;
  ReportBuilder get report => _$this._report ??= ReportBuilder();
  set report(covariant ReportBuilder? report) => _$this._report = report;

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

  ReportTaskResultBuilder() {
    ReportTaskResult._defaults(this);
  }

  ReportTaskResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _report = $v.report?.toBuilder();
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
  void replace(covariant ReportTaskResult other) {
    _$v = other as _$ReportTaskResult;
  }

  @override
  void update(void Function(ReportTaskResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportTaskResult build() => _build();

  _$ReportTaskResult _build() {
    _$ReportTaskResult _$result;
    try {
      _$result =
          _$v ??
          _$ReportTaskResult._(
            report: _report?.build(),
            key: key,
            success: success,
            discarded: discarded,
            finishTs: finishTs,
            error: error,
            jobType: BuiltValueNullFieldError.checkNotNull(
              jobType,
              r'ReportTaskResult',
              'jobType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'report';
        _report?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReportTaskResult',
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
