// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_profile_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssetProfileInfo extends AssetProfileInfo {
  @override
  final AssetProfileId? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final DashboardId? defaultDashboardId;
  @override
  final TenantId? tenantId;

  factory _$AssetProfileInfo([
    void Function(AssetProfileInfoBuilder)? updates,
  ]) => (AssetProfileInfoBuilder()..update(updates))._build();

  _$AssetProfileInfo._({
    this.id,
    this.name,
    this.image,
    this.defaultDashboardId,
    this.tenantId,
  }) : super._();
  @override
  AssetProfileInfo rebuild(void Function(AssetProfileInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetProfileInfoBuilder toBuilder() =>
      AssetProfileInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetProfileInfo &&
        id == other.id &&
        name == other.name &&
        image == other.image &&
        defaultDashboardId == other.defaultDashboardId &&
        tenantId == other.tenantId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, defaultDashboardId.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssetProfileInfo')
          ..add('id', id)
          ..add('name', name)
          ..add('image', image)
          ..add('defaultDashboardId', defaultDashboardId)
          ..add('tenantId', tenantId))
        .toString();
  }
}

class AssetProfileInfoBuilder
    implements Builder<AssetProfileInfo, AssetProfileInfoBuilder> {
  _$AssetProfileInfo? _$v;

  AssetProfileIdBuilder? _id;
  AssetProfileIdBuilder get id => _$this._id ??= AssetProfileIdBuilder();
  set id(AssetProfileIdBuilder? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DashboardIdBuilder? _defaultDashboardId;
  DashboardIdBuilder get defaultDashboardId =>
      _$this._defaultDashboardId ??= DashboardIdBuilder();
  set defaultDashboardId(DashboardIdBuilder? defaultDashboardId) =>
      _$this._defaultDashboardId = defaultDashboardId;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  AssetProfileInfoBuilder() {
    AssetProfileInfo._defaults(this);
  }

  AssetProfileInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _name = $v.name;
      _image = $v.image;
      _defaultDashboardId = $v.defaultDashboardId?.toBuilder();
      _tenantId = $v.tenantId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetProfileInfo other) {
    _$v = other as _$AssetProfileInfo;
  }

  @override
  void update(void Function(AssetProfileInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssetProfileInfo build() => _build();

  _$AssetProfileInfo _build() {
    _$AssetProfileInfo _$result;
    try {
      _$result =
          _$v ??
          _$AssetProfileInfo._(
            id: _id?.build(),
            name: name,
            image: image,
            defaultDashboardId: _defaultDashboardId?.build(),
            tenantId: _tenantId?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'defaultDashboardId';
        _defaultDashboardId?.build();
        _$failedField = 'tenantId';
        _tenantId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AssetProfileInfo',
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
