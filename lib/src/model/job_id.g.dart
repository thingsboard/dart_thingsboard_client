// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JobId extends JobId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$JobId([void Function(JobIdBuilder)? updates]) =>
      (JobIdBuilder()..update(updates))._build();

  _$JobId._({required this.entityType, required this.id}) : super._();
  @override
  JobId rebuild(void Function(JobIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobIdBuilder toBuilder() => JobIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobId && entityType == other.entityType && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JobId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class JobIdBuilder implements Builder<JobId, JobIdBuilder>, EntityIdBuilder {
  _$JobId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  JobIdBuilder() {
    JobId._defaults(this);
  }

  JobIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant JobId other) {
    _$v = other as _$JobId;
  }

  @override
  void update(void Function(JobIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JobId build() => _build();

  _$JobId _build() {
    final _$result =
        _$v ??
        _$JobId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'JobId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'JobId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
