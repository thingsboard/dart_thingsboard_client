// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cf_reprocessing_job_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CfReprocessingJobResult extends CfReprocessingJobResult {
  @override
  final int? successfulCount;
  @override
  final int? failedCount;
  @override
  final int? discardedCount;
  @override
  final int? totalCount;
  @override
  final BuiltList<TaskResult>? results;
  @override
  final String? generalError;
  @override
  final int? startTs;
  @override
  final int? finishTs;
  @override
  final int? cancellationTs;
  @override
  final String jobType;

  factory _$CfReprocessingJobResult([
    void Function(CfReprocessingJobResultBuilder)? updates,
  ]) => (CfReprocessingJobResultBuilder()..update(updates))._build();

  _$CfReprocessingJobResult._({
    this.successfulCount,
    this.failedCount,
    this.discardedCount,
    this.totalCount,
    this.results,
    this.generalError,
    this.startTs,
    this.finishTs,
    this.cancellationTs,
    required this.jobType,
  }) : super._();
  @override
  CfReprocessingJobResult rebuild(
    void Function(CfReprocessingJobResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CfReprocessingJobResultBuilder toBuilder() =>
      CfReprocessingJobResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CfReprocessingJobResult &&
        successfulCount == other.successfulCount &&
        failedCount == other.failedCount &&
        discardedCount == other.discardedCount &&
        totalCount == other.totalCount &&
        results == other.results &&
        generalError == other.generalError &&
        startTs == other.startTs &&
        finishTs == other.finishTs &&
        cancellationTs == other.cancellationTs &&
        jobType == other.jobType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, successfulCount.hashCode);
    _$hash = $jc(_$hash, failedCount.hashCode);
    _$hash = $jc(_$hash, discardedCount.hashCode);
    _$hash = $jc(_$hash, totalCount.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, generalError.hashCode);
    _$hash = $jc(_$hash, startTs.hashCode);
    _$hash = $jc(_$hash, finishTs.hashCode);
    _$hash = $jc(_$hash, cancellationTs.hashCode);
    _$hash = $jc(_$hash, jobType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CfReprocessingJobResult')
          ..add('successfulCount', successfulCount)
          ..add('failedCount', failedCount)
          ..add('discardedCount', discardedCount)
          ..add('totalCount', totalCount)
          ..add('results', results)
          ..add('generalError', generalError)
          ..add('startTs', startTs)
          ..add('finishTs', finishTs)
          ..add('cancellationTs', cancellationTs)
          ..add('jobType', jobType))
        .toString();
  }
}

class CfReprocessingJobResultBuilder
    implements
        Builder<CfReprocessingJobResult, CfReprocessingJobResultBuilder>,
        JobResultBuilder {
  _$CfReprocessingJobResult? _$v;

  int? _successfulCount;
  int? get successfulCount => _$this._successfulCount;
  set successfulCount(covariant int? successfulCount) =>
      _$this._successfulCount = successfulCount;

  int? _failedCount;
  int? get failedCount => _$this._failedCount;
  set failedCount(covariant int? failedCount) =>
      _$this._failedCount = failedCount;

  int? _discardedCount;
  int? get discardedCount => _$this._discardedCount;
  set discardedCount(covariant int? discardedCount) =>
      _$this._discardedCount = discardedCount;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(covariant int? totalCount) => _$this._totalCount = totalCount;

  ListBuilder<TaskResult>? _results;
  ListBuilder<TaskResult> get results =>
      _$this._results ??= ListBuilder<TaskResult>();
  set results(covariant ListBuilder<TaskResult>? results) =>
      _$this._results = results;

  String? _generalError;
  String? get generalError => _$this._generalError;
  set generalError(covariant String? generalError) =>
      _$this._generalError = generalError;

  int? _startTs;
  int? get startTs => _$this._startTs;
  set startTs(covariant int? startTs) => _$this._startTs = startTs;

  int? _finishTs;
  int? get finishTs => _$this._finishTs;
  set finishTs(covariant int? finishTs) => _$this._finishTs = finishTs;

  int? _cancellationTs;
  int? get cancellationTs => _$this._cancellationTs;
  set cancellationTs(covariant int? cancellationTs) =>
      _$this._cancellationTs = cancellationTs;

  String? _jobType;
  String? get jobType => _$this._jobType;
  set jobType(covariant String? jobType) => _$this._jobType = jobType;

  CfReprocessingJobResultBuilder() {
    CfReprocessingJobResult._defaults(this);
  }

  CfReprocessingJobResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _successfulCount = $v.successfulCount;
      _failedCount = $v.failedCount;
      _discardedCount = $v.discardedCount;
      _totalCount = $v.totalCount;
      _results = $v.results?.toBuilder();
      _generalError = $v.generalError;
      _startTs = $v.startTs;
      _finishTs = $v.finishTs;
      _cancellationTs = $v.cancellationTs;
      _jobType = $v.jobType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CfReprocessingJobResult other) {
    _$v = other as _$CfReprocessingJobResult;
  }

  @override
  void update(void Function(CfReprocessingJobResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CfReprocessingJobResult build() => _build();

  _$CfReprocessingJobResult _build() {
    _$CfReprocessingJobResult _$result;
    try {
      _$result =
          _$v ??
          _$CfReprocessingJobResult._(
            successfulCount: successfulCount,
            failedCount: failedCount,
            discardedCount: discardedCount,
            totalCount: totalCount,
            results: _results?.build(),
            generalError: generalError,
            startTs: startTs,
            finishTs: finishTs,
            cancellationTs: cancellationTs,
            jobType: BuiltValueNullFieldError.checkNotNull(
              jobType,
              r'CfReprocessingJobResult',
              'jobType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CfReprocessingJobResult',
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
