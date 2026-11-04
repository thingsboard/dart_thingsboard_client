// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Failure extends Failure {
  @override
  final String? errorDetails;
  @override
  final String status;

  factory _$Failure([void Function(FailureBuilder)? updates]) =>
      (FailureBuilder()..update(updates))._build();

  _$Failure._({this.errorDetails, required this.status}) : super._();
  @override
  Failure rebuild(void Function(FailureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FailureBuilder toBuilder() => FailureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Failure &&
        errorDetails == other.errorDetails &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, errorDetails.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Failure')
          ..add('errorDetails', errorDetails)
          ..add('status', status))
        .toString();
  }
}

class FailureBuilder
    implements Builder<Failure, FailureBuilder>, TbChatResponseBuilder {
  _$Failure? _$v;

  String? _errorDetails;
  String? get errorDetails => _$this._errorDetails;
  set errorDetails(covariant String? errorDetails) =>
      _$this._errorDetails = errorDetails;

  String? _status;
  String? get status => _$this._status;
  set status(covariant String? status) => _$this._status = status;

  FailureBuilder() {
    Failure._defaults(this);
  }

  FailureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorDetails = $v.errorDetails;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Failure other) {
    _$v = other as _$Failure;
  }

  @override
  void update(void Function(FailureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Failure build() => _build();

  _$Failure _build() {
    final _$result =
        _$v ??
        _$Failure._(
          errorDetails: errorDetails,
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'Failure',
            'status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
