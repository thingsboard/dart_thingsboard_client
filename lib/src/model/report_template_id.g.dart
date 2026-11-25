// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_template_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportTemplateId extends ReportTemplateId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$ReportTemplateId([
    void Function(ReportTemplateIdBuilder)? updates,
  ]) => (ReportTemplateIdBuilder()..update(updates))._build();

  _$ReportTemplateId._({required this.entityType, required this.id})
    : super._();
  @override
  ReportTemplateId rebuild(void Function(ReportTemplateIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportTemplateIdBuilder toBuilder() =>
      ReportTemplateIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportTemplateId &&
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
    return (newBuiltValueToStringHelper(r'ReportTemplateId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class ReportTemplateIdBuilder
    implements
        Builder<ReportTemplateId, ReportTemplateIdBuilder>,
        EntityIdBuilder {
  _$ReportTemplateId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  ReportTemplateIdBuilder() {
    ReportTemplateId._defaults(this);
  }

  ReportTemplateIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ReportTemplateId other) {
    _$v = other as _$ReportTemplateId;
  }

  @override
  void update(void Function(ReportTemplateIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportTemplateId build() => _build();

  _$ReportTemplateId _build() {
    final _$result =
        _$v ??
        _$ReportTemplateId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'ReportTemplateId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'ReportTemplateId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
