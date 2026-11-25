// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_administrators_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantAdministratorsFilter extends TenantAdministratorsFilter {
  @override
  final BuiltSet<String>? tenantProfilesIds;
  @override
  final BuiltSet<String>? tenantsIds;
  @override
  final String type;

  factory _$TenantAdministratorsFilter([
    void Function(TenantAdministratorsFilterBuilder)? updates,
  ]) => (TenantAdministratorsFilterBuilder()..update(updates))._build();

  _$TenantAdministratorsFilter._({
    this.tenantProfilesIds,
    this.tenantsIds,
    required this.type,
  }) : super._();
  @override
  TenantAdministratorsFilter rebuild(
    void Function(TenantAdministratorsFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TenantAdministratorsFilterBuilder toBuilder() =>
      TenantAdministratorsFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantAdministratorsFilter &&
        tenantProfilesIds == other.tenantProfilesIds &&
        tenantsIds == other.tenantsIds &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tenantProfilesIds.hashCode);
    _$hash = $jc(_$hash, tenantsIds.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TenantAdministratorsFilter')
          ..add('tenantProfilesIds', tenantProfilesIds)
          ..add('tenantsIds', tenantsIds)
          ..add('type', type))
        .toString();
  }
}

class TenantAdministratorsFilterBuilder
    implements
        Builder<TenantAdministratorsFilter, TenantAdministratorsFilterBuilder>,
        UsersFilterBuilder {
  _$TenantAdministratorsFilter? _$v;

  SetBuilder<String>? _tenantProfilesIds;
  SetBuilder<String> get tenantProfilesIds =>
      _$this._tenantProfilesIds ??= SetBuilder<String>();
  set tenantProfilesIds(covariant SetBuilder<String>? tenantProfilesIds) =>
      _$this._tenantProfilesIds = tenantProfilesIds;

  SetBuilder<String>? _tenantsIds;
  SetBuilder<String> get tenantsIds =>
      _$this._tenantsIds ??= SetBuilder<String>();
  set tenantsIds(covariant SetBuilder<String>? tenantsIds) =>
      _$this._tenantsIds = tenantsIds;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  TenantAdministratorsFilterBuilder() {
    TenantAdministratorsFilter._defaults(this);
  }

  TenantAdministratorsFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tenantProfilesIds = $v.tenantProfilesIds?.toBuilder();
      _tenantsIds = $v.tenantsIds?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TenantAdministratorsFilter other) {
    _$v = other as _$TenantAdministratorsFilter;
  }

  @override
  void update(void Function(TenantAdministratorsFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantAdministratorsFilter build() => _build();

  _$TenantAdministratorsFilter _build() {
    _$TenantAdministratorsFilter _$result;
    try {
      _$result =
          _$v ??
          _$TenantAdministratorsFilter._(
            tenantProfilesIds: _tenantProfilesIds?.build(),
            tenantsIds: _tenantsIds?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'TenantAdministratorsFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tenantProfilesIds';
        _tenantProfilesIds?.build();
        _$failedField = 'tenantsIds';
        _tenantsIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TenantAdministratorsFilter',
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
