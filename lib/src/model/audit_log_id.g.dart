// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_log_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuditLogId extends AuditLogId {
  @override
  final String id;

  factory _$AuditLogId([void Function(AuditLogIdBuilder)? updates]) =>
      (AuditLogIdBuilder()..update(updates))._build();

  _$AuditLogId._({required this.id}) : super._();
  @override
  AuditLogId rebuild(void Function(AuditLogIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuditLogIdBuilder toBuilder() => AuditLogIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuditLogId && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AuditLogId',
    )..add('id', id)).toString();
  }
}

class AuditLogIdBuilder implements Builder<AuditLogId, AuditLogIdBuilder> {
  _$AuditLogId? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AuditLogIdBuilder() {
    AuditLogId._defaults(this);
  }

  AuditLogIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuditLogId other) {
    _$v = other as _$AuditLogId;
  }

  @override
  void update(void Function(AuditLogIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuditLogId build() => _build();

  _$AuditLogId _build() {
    final _$result =
        _$v ??
        _$AuditLogId._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'AuditLogId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
