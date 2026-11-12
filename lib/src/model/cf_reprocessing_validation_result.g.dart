// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cf_reprocessing_validation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CfReprocessingValidationResult extends CfReprocessingValidationResult {
  @override
  final bool? isValid;
  @override
  final String? message;
  @override
  final JobStatus? lastJobStatus;

  factory _$CfReprocessingValidationResult([
    void Function(CfReprocessingValidationResultBuilder)? updates,
  ]) => (CfReprocessingValidationResultBuilder()..update(updates))._build();

  _$CfReprocessingValidationResult._({
    this.isValid,
    this.message,
    this.lastJobStatus,
  }) : super._();
  @override
  CfReprocessingValidationResult rebuild(
    void Function(CfReprocessingValidationResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CfReprocessingValidationResultBuilder toBuilder() =>
      CfReprocessingValidationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CfReprocessingValidationResult &&
        isValid == other.isValid &&
        message == other.message &&
        lastJobStatus == other.lastJobStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isValid.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, lastJobStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CfReprocessingValidationResult')
          ..add('isValid', isValid)
          ..add('message', message)
          ..add('lastJobStatus', lastJobStatus))
        .toString();
  }
}

class CfReprocessingValidationResultBuilder
    implements
        Builder<
          CfReprocessingValidationResult,
          CfReprocessingValidationResultBuilder
        > {
  _$CfReprocessingValidationResult? _$v;

  bool? _isValid;
  bool? get isValid => _$this._isValid;
  set isValid(bool? isValid) => _$this._isValid = isValid;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  JobStatus? _lastJobStatus;
  JobStatus? get lastJobStatus => _$this._lastJobStatus;
  set lastJobStatus(JobStatus? lastJobStatus) =>
      _$this._lastJobStatus = lastJobStatus;

  CfReprocessingValidationResultBuilder() {
    CfReprocessingValidationResult._defaults(this);
  }

  CfReprocessingValidationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isValid = $v.isValid;
      _message = $v.message;
      _lastJobStatus = $v.lastJobStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CfReprocessingValidationResult other) {
    _$v = other as _$CfReprocessingValidationResult;
  }

  @override
  void update(void Function(CfReprocessingValidationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CfReprocessingValidationResult build() => _build();

  _$CfReprocessingValidationResult _build() {
    final _$result =
        _$v ??
        _$CfReprocessingValidationResult._(
          isValid: isValid,
          message: message,
          lastJobStatus: lastJobStatus,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
