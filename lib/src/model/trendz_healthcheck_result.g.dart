// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trendz_healthcheck_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrendzHealthcheckResult extends TrendzHealthcheckResult {
  @override
  final String? version;
  @override
  final TrendzSynchronizationResultType? type;
  @override
  final TrendzSynchronizationStatus? status;
  @override
  final String? message;

  factory _$TrendzHealthcheckResult([
    void Function(TrendzHealthcheckResultBuilder)? updates,
  ]) => (TrendzHealthcheckResultBuilder()..update(updates))._build();

  _$TrendzHealthcheckResult._({
    this.version,
    this.type,
    this.status,
    this.message,
  }) : super._();
  @override
  TrendzHealthcheckResult rebuild(
    void Function(TrendzHealthcheckResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TrendzHealthcheckResultBuilder toBuilder() =>
      TrendzHealthcheckResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendzHealthcheckResult &&
        version == other.version &&
        type == other.type &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrendzHealthcheckResult')
          ..add('version', version)
          ..add('type', type)
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class TrendzHealthcheckResultBuilder
    implements
        Builder<TrendzHealthcheckResult, TrendzHealthcheckResultBuilder> {
  _$TrendzHealthcheckResult? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  TrendzSynchronizationResultType? _type;
  TrendzSynchronizationResultType? get type => _$this._type;
  set type(TrendzSynchronizationResultType? type) => _$this._type = type;

  TrendzSynchronizationStatus? _status;
  TrendzSynchronizationStatus? get status => _$this._status;
  set status(TrendzSynchronizationStatus? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  TrendzHealthcheckResultBuilder() {
    TrendzHealthcheckResult._defaults(this);
  }

  TrendzHealthcheckResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _type = $v.type;
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendzHealthcheckResult other) {
    _$v = other as _$TrendzHealthcheckResult;
  }

  @override
  void update(void Function(TrendzHealthcheckResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrendzHealthcheckResult build() => _build();

  _$TrendzHealthcheckResult _build() {
    final _$result =
        _$v ??
        _$TrendzHealthcheckResult._(
          version: version,
          type: type,
          status: status,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
