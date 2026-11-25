// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Domain extends Domain {
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
  final EntityId? ownerId;

  factory _$Domain([void Function(DomainBuilder)? updates]) =>
      (DomainBuilder()..update(updates))._build();

  _$Domain._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.customerId,
    required this.name,
    this.oauth2Enabled,
    this.propagateToEdge,
    this.ownerId,
  }) : super._();
  @override
  Domain rebuild(void Function(DomainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DomainBuilder toBuilder() => DomainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Domain &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        name == other.name &&
        oauth2Enabled == other.oauth2Enabled &&
        propagateToEdge == other.propagateToEdge &&
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
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Domain')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('name', name)
          ..add('oauth2Enabled', oauth2Enabled)
          ..add('propagateToEdge', propagateToEdge)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class DomainBuilder implements Builder<Domain, DomainBuilder> {
  _$Domain? _$v;

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

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  DomainBuilder() {
    Domain._defaults(this);
  }

  DomainBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _name = $v.name;
      _oauth2Enabled = $v.oauth2Enabled;
      _propagateToEdge = $v.propagateToEdge;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Domain other) {
    _$v = other as _$Domain;
  }

  @override
  void update(void Function(DomainBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Domain build() => _build();

  _$Domain _build() {
    _$Domain _$result;
    try {
      _$result =
          _$v ??
          _$Domain._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'Domain',
              'name',
            ),
            oauth2Enabled: oauth2Enabled,
            propagateToEdge: propagateToEdge,
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Domain',
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
