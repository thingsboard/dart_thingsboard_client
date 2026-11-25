// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportId extends ReportId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$ReportId([void Function(ReportIdBuilder)? updates]) =>
      (ReportIdBuilder()..update(updates))._build();

  _$ReportId._({required this.entityType, required this.id}) : super._();
  @override
  ReportId rebuild(void Function(ReportIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportIdBuilder toBuilder() => ReportIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportId &&
        entityType == other.entityType &&
        id == other.id;
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
    return (newBuiltValueToStringHelper(r'ReportId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class ReportIdBuilder
    implements Builder<ReportId, ReportIdBuilder>, EntityIdBuilder {
  _$ReportId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  ReportIdBuilder() {
    ReportId._defaults(this);
  }

  ReportIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ReportId other) {
    _$v = other as _$ReportId;
  }

  @override
  void update(void Function(ReportIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportId build() => _build();

  _$ReportId _build() {
    final _$result =
        _$v ??
        _$ReportId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'ReportId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'ReportId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
