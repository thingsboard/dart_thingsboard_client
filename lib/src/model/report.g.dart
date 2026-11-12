// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Report extends Report {
  @override
  final ReportId? id;
  @override
  final int? createdTime;
  @override
  final TenantId tenantId;
  @override
  final CustomerId? customerId;
  @override
  final ReportTemplateId? templateId;
  @override
  final TbReportFormat format;
  @override
  final String name;
  @override
  final UserId userId;
  @override
  final String? publicKey;
  @override
  final EntityId? ownerId;
  @override
  final bool? public;

  factory _$Report([void Function(ReportBuilder)? updates]) =>
      (ReportBuilder()..update(updates))._build();

  _$Report._({
    this.id,
    this.createdTime,
    required this.tenantId,
    this.customerId,
    this.templateId,
    required this.format,
    required this.name,
    required this.userId,
    this.publicKey,
    this.ownerId,
    this.public,
  }) : super._();
  @override
  Report rebuild(void Function(ReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportBuilder toBuilder() => ReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Report &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        templateId == other.templateId &&
        format == other.format &&
        name == other.name &&
        userId == other.userId &&
        publicKey == other.publicKey &&
        ownerId == other.ownerId &&
        public == other.public;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, templateId.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, publicKey.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, public.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Report')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('templateId', templateId)
          ..add('format', format)
          ..add('name', name)
          ..add('userId', userId)
          ..add('publicKey', publicKey)
          ..add('ownerId', ownerId)
          ..add('public', public))
        .toString();
  }
}

class ReportBuilder implements Builder<Report, ReportBuilder> {
  _$Report? _$v;

  ReportIdBuilder? _id;
  ReportIdBuilder get id => _$this._id ??= ReportIdBuilder();
  set id(ReportIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  ReportTemplateIdBuilder? _templateId;
  ReportTemplateIdBuilder get templateId =>
      _$this._templateId ??= ReportTemplateIdBuilder();
  set templateId(ReportTemplateIdBuilder? templateId) =>
      _$this._templateId = templateId;

  TbReportFormat? _format;
  TbReportFormat? get format => _$this._format;
  set format(TbReportFormat? format) => _$this._format = format;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UserIdBuilder? _userId;
  UserIdBuilder get userId => _$this._userId ??= UserIdBuilder();
  set userId(UserIdBuilder? userId) => _$this._userId = userId;

  String? _publicKey;
  String? get publicKey => _$this._publicKey;
  set publicKey(String? publicKey) => _$this._publicKey = publicKey;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  bool? _public;
  bool? get public => _$this._public;
  set public(bool? public) => _$this._public = public;

  ReportBuilder() {
    Report._defaults(this);
  }

  ReportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _templateId = $v.templateId?.toBuilder();
      _format = $v.format;
      _name = $v.name;
      _userId = $v.userId.toBuilder();
      _publicKey = $v.publicKey;
      _ownerId = $v.ownerId;
      _public = $v.public;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Report other) {
    _$v = other as _$Report;
  }

  @override
  void update(void Function(ReportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Report build() => _build();

  _$Report _build() {
    _$Report _$result;
    try {
      _$result =
          _$v ??
          _$Report._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: tenantId.build(),
            customerId: _customerId?.build(),
            templateId: _templateId?.build(),
            format: BuiltValueNullFieldError.checkNotNull(
              format,
              r'Report',
              'format',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'Report',
              'name',
            ),
            userId: userId.build(),
            publicKey: publicKey,
            ownerId: ownerId,
            public: public,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        tenantId.build();
        _$failedField = 'customerId';
        _customerId?.build();
        _$failedField = 'templateId';
        _templateId?.build();

        _$failedField = 'userId';
        userId.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Report',
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
