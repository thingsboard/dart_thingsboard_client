// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trendz_synchronization_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrendzSynchronizationResult extends TrendzSynchronizationResult {
  @override
  final String? version;
  @override
  final int? updatedTs;
  @override
  final TrendzSynchronizationResultType? type;
  @override
  final TrendzSynchronizationStatus? status;

  factory _$TrendzSynchronizationResult([
    void Function(TrendzSynchronizationResultBuilder)? updates,
  ]) => (TrendzSynchronizationResultBuilder()..update(updates))._build();

  _$TrendzSynchronizationResult._({
    this.version,
    this.updatedTs,
    this.type,
    this.status,
  }) : super._();
  @override
  TrendzSynchronizationResult rebuild(
    void Function(TrendzSynchronizationResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TrendzSynchronizationResultBuilder toBuilder() =>
      TrendzSynchronizationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendzSynchronizationResult &&
        version == other.version &&
        updatedTs == other.updatedTs &&
        type == other.type &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, updatedTs.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrendzSynchronizationResult')
          ..add('version', version)
          ..add('updatedTs', updatedTs)
          ..add('type', type)
          ..add('status', status))
        .toString();
  }
}

class TrendzSynchronizationResultBuilder
    implements
        Builder<
          TrendzSynchronizationResult,
          TrendzSynchronizationResultBuilder
        > {
  _$TrendzSynchronizationResult? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  int? _updatedTs;
  int? get updatedTs => _$this._updatedTs;
  set updatedTs(int? updatedTs) => _$this._updatedTs = updatedTs;

  TrendzSynchronizationResultType? _type;
  TrendzSynchronizationResultType? get type => _$this._type;
  set type(TrendzSynchronizationResultType? type) => _$this._type = type;

  TrendzSynchronizationStatus? _status;
  TrendzSynchronizationStatus? get status => _$this._status;
  set status(TrendzSynchronizationStatus? status) => _$this._status = status;

  TrendzSynchronizationResultBuilder() {
    TrendzSynchronizationResult._defaults(this);
  }

  TrendzSynchronizationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _updatedTs = $v.updatedTs;
      _type = $v.type;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendzSynchronizationResult other) {
    _$v = other as _$TrendzSynchronizationResult;
  }

  @override
  void update(void Function(TrendzSynchronizationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrendzSynchronizationResult build() => _build();

  _$TrendzSynchronizationResult _build() {
    final _$result =
        _$v ??
        _$TrendzSynchronizationResult._(
          version: version,
          updatedTs: updatedTs,
          type: type,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
