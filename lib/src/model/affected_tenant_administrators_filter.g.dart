// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affected_tenant_administrators_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AffectedTenantAdministratorsFilter
    extends AffectedTenantAdministratorsFilter {
  @override
  final String type;

  factory _$AffectedTenantAdministratorsFilter([
    void Function(AffectedTenantAdministratorsFilterBuilder)? updates,
  ]) => (AffectedTenantAdministratorsFilterBuilder()..update(updates))._build();

  _$AffectedTenantAdministratorsFilter._({required this.type}) : super._();
  @override
  AffectedTenantAdministratorsFilter rebuild(
    void Function(AffectedTenantAdministratorsFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AffectedTenantAdministratorsFilterBuilder toBuilder() =>
      AffectedTenantAdministratorsFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AffectedTenantAdministratorsFilter && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AffectedTenantAdministratorsFilter',
    )..add('type', type)).toString();
  }
}

class AffectedTenantAdministratorsFilterBuilder
    implements
        Builder<
          AffectedTenantAdministratorsFilter,
          AffectedTenantAdministratorsFilterBuilder
        >,
        UsersFilterBuilder {
  _$AffectedTenantAdministratorsFilter? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  AffectedTenantAdministratorsFilterBuilder() {
    AffectedTenantAdministratorsFilter._defaults(this);
  }

  AffectedTenantAdministratorsFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AffectedTenantAdministratorsFilter other) {
    _$v = other as _$AffectedTenantAdministratorsFilter;
  }

  @override
  void update(
    void Function(AffectedTenantAdministratorsFilterBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  AffectedTenantAdministratorsFilter build() => _build();

  _$AffectedTenantAdministratorsFilter _build() {
    final _$result =
        _$v ??
        _$AffectedTenantAdministratorsFilter._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'AffectedTenantAdministratorsFilter',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
