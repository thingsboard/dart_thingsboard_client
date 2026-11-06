// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_profile_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceProfileInfo extends DeviceProfileInfo {
  @override
  final DeviceProfileId? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final DashboardId? defaultDashboardId;
  @override
  final DeviceProfileType? type;
  @override
  final DeviceTransportType? transportType;
  @override
  final TenantId? tenantId;

  factory _$DeviceProfileInfo([
    void Function(DeviceProfileInfoBuilder)? updates,
  ]) => (DeviceProfileInfoBuilder()..update(updates))._build();

  _$DeviceProfileInfo._({
    this.id,
    this.name,
    this.image,
    this.defaultDashboardId,
    this.type,
    this.transportType,
    this.tenantId,
  }) : super._();
  @override
  DeviceProfileInfo rebuild(void Function(DeviceProfileInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceProfileInfoBuilder toBuilder() =>
      DeviceProfileInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceProfileInfo &&
        id == other.id &&
        name == other.name &&
        image == other.image &&
        defaultDashboardId == other.defaultDashboardId &&
        type == other.type &&
        transportType == other.transportType &&
        tenantId == other.tenantId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, defaultDashboardId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, transportType.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceProfileInfo')
          ..add('id', id)
          ..add('name', name)
          ..add('image', image)
          ..add('defaultDashboardId', defaultDashboardId)
          ..add('type', type)
          ..add('transportType', transportType)
          ..add('tenantId', tenantId))
        .toString();
  }
}

class DeviceProfileInfoBuilder
    implements Builder<DeviceProfileInfo, DeviceProfileInfoBuilder> {
  _$DeviceProfileInfo? _$v;

  DeviceProfileIdBuilder? _id;
  DeviceProfileIdBuilder get id => _$this._id ??= DeviceProfileIdBuilder();
  set id(DeviceProfileIdBuilder? id) => _$this._id = id;

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

  DeviceProfileType? _type;
  DeviceProfileType? get type => _$this._type;
  set type(DeviceProfileType? type) => _$this._type = type;

  DeviceTransportType? _transportType;
  DeviceTransportType? get transportType => _$this._transportType;
  set transportType(DeviceTransportType? transportType) =>
      _$this._transportType = transportType;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  DeviceProfileInfoBuilder() {
    DeviceProfileInfo._defaults(this);
  }

  DeviceProfileInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _name = $v.name;
      _image = $v.image;
      _defaultDashboardId = $v.defaultDashboardId?.toBuilder();
      _type = $v.type;
      _transportType = $v.transportType;
      _tenantId = $v.tenantId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceProfileInfo other) {
    _$v = other as _$DeviceProfileInfo;
  }

  @override
  void update(void Function(DeviceProfileInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceProfileInfo build() => _build();

  _$DeviceProfileInfo _build() {
    _$DeviceProfileInfo _$result;
    try {
      _$result =
          _$v ??
          _$DeviceProfileInfo._(
            id: _id?.build(),
            name: name,
            image: image,
            defaultDashboardId: _defaultDashboardId?.build(),
            type: type,
            transportType: transportType,
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
          r'DeviceProfileInfo',
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
