// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DomainInfo extends DomainInfo {
  @override
  final DomainId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final String name;
  @override
  final bool? oauth2Enabled;
  @override
  final bool? propagateToEdge;
  @override
  final BuiltList<OAuth2ClientInfo>? oauth2ClientInfos;
  @override
  final EntityId? ownerId;

  factory _$DomainInfo([void Function(DomainInfoBuilder)? updates]) =>
      (DomainInfoBuilder()..update(updates))._build();

  _$DomainInfo._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.customerId,
    required this.name,
    this.oauth2Enabled,
    this.propagateToEdge,
    this.oauth2ClientInfos,
    this.ownerId,
  }) : super._();
  @override
  DomainInfo rebuild(void Function(DomainInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DomainInfoBuilder toBuilder() => DomainInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DomainInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        name == other.name &&
        oauth2Enabled == other.oauth2Enabled &&
        propagateToEdge == other.propagateToEdge &&
        oauth2ClientInfos == other.oauth2ClientInfos &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, oauth2Enabled.hashCode);
    _$hash = $jc(_$hash, propagateToEdge.hashCode);
    _$hash = $jc(_$hash, oauth2ClientInfos.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DomainInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('name', name)
          ..add('oauth2Enabled', oauth2Enabled)
          ..add('propagateToEdge', propagateToEdge)
          ..add('oauth2ClientInfos', oauth2ClientInfos)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class DomainInfoBuilder implements Builder<DomainInfo, DomainInfoBuilder> {
  _$DomainInfo? _$v;

  DomainIdBuilder? _id;
  DomainIdBuilder get id => _$this._id ??= DomainIdBuilder();
  set id(DomainIdBuilder? id) => _$this._id = id;

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

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _oauth2Enabled;
  bool? get oauth2Enabled => _$this._oauth2Enabled;
  set oauth2Enabled(bool? oauth2Enabled) =>
      _$this._oauth2Enabled = oauth2Enabled;

  bool? _propagateToEdge;
  bool? get propagateToEdge => _$this._propagateToEdge;
  set propagateToEdge(bool? propagateToEdge) =>
      _$this._propagateToEdge = propagateToEdge;

  ListBuilder<OAuth2ClientInfo>? _oauth2ClientInfos;
  ListBuilder<OAuth2ClientInfo> get oauth2ClientInfos =>
      _$this._oauth2ClientInfos ??= ListBuilder<OAuth2ClientInfo>();
  set oauth2ClientInfos(ListBuilder<OAuth2ClientInfo>? oauth2ClientInfos) =>
      _$this._oauth2ClientInfos = oauth2ClientInfos;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  DomainInfoBuilder() {
    DomainInfo._defaults(this);
  }

  DomainInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _name = $v.name;
      _oauth2Enabled = $v.oauth2Enabled;
      _propagateToEdge = $v.propagateToEdge;
      _oauth2ClientInfos = $v.oauth2ClientInfos?.toBuilder();
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DomainInfo other) {
    _$v = other as _$DomainInfo;
  }

  @override
  void update(void Function(DomainInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DomainInfo build() => _build();

  _$DomainInfo _build() {
    _$DomainInfo _$result;
    try {
      _$result =
          _$v ??
          _$DomainInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'DomainInfo',
              'name',
            ),
            oauth2Enabled: oauth2Enabled,
            propagateToEdge: propagateToEdge,
            oauth2ClientInfos: _oauth2ClientInfos?.build(),
            ownerId: ownerId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'customerId';
        _customerId?.build();

        _$failedField = 'oauth2ClientInfos';
        _oauth2ClientInfos?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DomainInfo',
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
