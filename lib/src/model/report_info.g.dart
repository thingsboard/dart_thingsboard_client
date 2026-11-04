// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportInfo extends ReportInfo {
  @override
  final ReportId? id;
  @override
  final int? createdTime;
  @override
  final TenantId tenantId;
  @override
  final CustomerId? customerId;
  @override
  final ReportTemplateId templateId;
  @override
  final TbReportFormat format;
  @override
  final String name;
  @override
  final UserId userId;
  @override
  final String? publicKey;
  @override
  final EntityInfo? templateInfo;
  @override
  final String? customerTitle;
  @override
  final String? userName;
  @override
  final EntityId? ownerId;
  @override
  final bool? public;

  factory _$ReportInfo([void Function(ReportInfoBuilder)? updates]) =>
      (ReportInfoBuilder()..update(updates))._build();

  _$ReportInfo._({
    this.id,
    this.createdTime,
    required this.tenantId,
    this.customerId,
    required this.templateId,
    required this.format,
    required this.name,
    required this.userId,
    this.publicKey,
    this.templateInfo,
    this.customerTitle,
    this.userName,
    this.ownerId,
    this.public,
  }) : super._();
  @override
  ReportInfo rebuild(void Function(ReportInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportInfoBuilder toBuilder() => ReportInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        templateId == other.templateId &&
        format == other.format &&
        name == other.name &&
        userId == other.userId &&
        publicKey == other.publicKey &&
        templateInfo == other.templateInfo &&
        customerTitle == other.customerTitle &&
        userName == other.userName &&
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
    _$hash = $jc(_$hash, templateInfo.hashCode);
    _$hash = $jc(_$hash, customerTitle.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, public.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('templateId', templateId)
          ..add('format', format)
          ..add('name', name)
          ..add('userId', userId)
          ..add('publicKey', publicKey)
          ..add('templateInfo', templateInfo)
          ..add('customerTitle', customerTitle)
          ..add('userName', userName)
          ..add('ownerId', ownerId)
          ..add('public', public))
        .toString();
  }
}

class ReportInfoBuilder implements Builder<ReportInfo, ReportInfoBuilder> {
  _$ReportInfo? _$v;

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

  EntityInfoBuilder? _templateInfo;
  EntityInfoBuilder get templateInfo =>
      _$this._templateInfo ??= EntityInfoBuilder();
  set templateInfo(EntityInfoBuilder? templateInfo) =>
      _$this._templateInfo = templateInfo;

  String? _customerTitle;
  String? get customerTitle => _$this._customerTitle;
  set customerTitle(String? customerTitle) =>
      _$this._customerTitle = customerTitle;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  bool? _public;
  bool? get public => _$this._public;
  set public(bool? public) => _$this._public = public;

  ReportInfoBuilder() {
    ReportInfo._defaults(this);
  }

  ReportInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _templateId = $v.templateId.toBuilder();
      _format = $v.format;
      _name = $v.name;
      _userId = $v.userId.toBuilder();
      _publicKey = $v.publicKey;
      _templateInfo = $v.templateInfo?.toBuilder();
      _customerTitle = $v.customerTitle;
      _userName = $v.userName;
      _ownerId = $v.ownerId;
      _public = $v.public;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportInfo other) {
    _$v = other as _$ReportInfo;
  }

  @override
  void update(void Function(ReportInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportInfo build() => _build();

  _$ReportInfo _build() {
    _$ReportInfo _$result;
    try {
      _$result =
          _$v ??
          _$ReportInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: tenantId.build(),
            customerId: _customerId?.build(),
            templateId: templateId.build(),
            format: BuiltValueNullFieldError.checkNotNull(
              format,
              r'ReportInfo',
              'format',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'ReportInfo',
              'name',
            ),
            userId: userId.build(),
            publicKey: publicKey,
            templateInfo: _templateInfo?.build(),
            customerTitle: customerTitle,
            userName: userName,
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
        templateId.build();

        _$failedField = 'userId';
        userId.build();

        _$failedField = 'templateInfo';
        _templateInfo?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReportInfo',
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
