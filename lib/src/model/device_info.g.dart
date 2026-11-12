// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceInfo extends DeviceInfo {
  @override
  final DeviceId? id;
  @override
  final int? createdTime;
  @override
  final JsonObject? additionalInfo;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? label;
  @override
  final DeviceProfileId? deviceProfileId;
  @override
  final DeviceData? deviceData;
  @override
  final OtaPackageId? firmwareId;
  @override
  final OtaPackageId? softwareId;
  @override
  final int? version;
  @override
  final String? ownerName;
  @override
  final BuiltList<EntityInfo>? groups;
  @override
  final bool? active;
  @override
  final EntityId? ownerId;

  factory _$DeviceInfo([void Function(DeviceInfoBuilder)? updates]) =>
      (DeviceInfoBuilder()..update(updates))._build();

  _$DeviceInfo._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    this.tenantId,
    this.customerId,
    this.name,
    this.type,
    this.label,
    this.deviceProfileId,
    this.deviceData,
    this.firmwareId,
    this.softwareId,
    this.version,
    this.ownerName,
    this.groups,
    this.active,
    this.ownerId,
  }) : super._();
  @override
  DeviceInfo rebuild(void Function(DeviceInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceInfoBuilder toBuilder() => DeviceInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        name == other.name &&
        type == other.type &&
        label == other.label &&
        deviceProfileId == other.deviceProfileId &&
        deviceData == other.deviceData &&
        firmwareId == other.firmwareId &&
        softwareId == other.softwareId &&
        version == other.version &&
        ownerName == other.ownerName &&
        groups == other.groups &&
        active == other.active &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, deviceProfileId.hashCode);
    _$hash = $jc(_$hash, deviceData.hashCode);
    _$hash = $jc(_$hash, firmwareId.hashCode);
    _$hash = $jc(_$hash, softwareId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, ownerName.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('name', name)
          ..add('type', type)
          ..add('label', label)
          ..add('deviceProfileId', deviceProfileId)
          ..add('deviceData', deviceData)
          ..add('firmwareId', firmwareId)
          ..add('softwareId', softwareId)
          ..add('version', version)
          ..add('ownerName', ownerName)
          ..add('groups', groups)
          ..add('active', active)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class DeviceInfoBuilder implements Builder<DeviceInfo, DeviceInfoBuilder> {
  _$DeviceInfo? _$v;

  DeviceIdBuilder? _id;
  DeviceIdBuilder get id => _$this._id ??= DeviceIdBuilder();
  set id(DeviceIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

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

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  DeviceProfileIdBuilder? _deviceProfileId;
  DeviceProfileIdBuilder get deviceProfileId =>
      _$this._deviceProfileId ??= DeviceProfileIdBuilder();
  set deviceProfileId(DeviceProfileIdBuilder? deviceProfileId) =>
      _$this._deviceProfileId = deviceProfileId;

  DeviceDataBuilder? _deviceData;
  DeviceDataBuilder get deviceData =>
      _$this._deviceData ??= DeviceDataBuilder();
  set deviceData(DeviceDataBuilder? deviceData) =>
      _$this._deviceData = deviceData;

  OtaPackageIdBuilder? _firmwareId;
  OtaPackageIdBuilder get firmwareId =>
      _$this._firmwareId ??= OtaPackageIdBuilder();
  set firmwareId(OtaPackageIdBuilder? firmwareId) =>
      _$this._firmwareId = firmwareId;

  OtaPackageIdBuilder? _softwareId;
  OtaPackageIdBuilder get softwareId =>
      _$this._softwareId ??= OtaPackageIdBuilder();
  set softwareId(OtaPackageIdBuilder? softwareId) =>
      _$this._softwareId = softwareId;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _ownerName;
  String? get ownerName => _$this._ownerName;
  set ownerName(String? ownerName) => _$this._ownerName = ownerName;

  ListBuilder<EntityInfo>? _groups;
  ListBuilder<EntityInfo> get groups =>
      _$this._groups ??= ListBuilder<EntityInfo>();
  set groups(ListBuilder<EntityInfo>? groups) => _$this._groups = groups;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  DeviceInfoBuilder() {
    DeviceInfo._defaults(this);
  }

  DeviceInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _additionalInfo = $v.additionalInfo;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _name = $v.name;
      _type = $v.type;
      _label = $v.label;
      _deviceProfileId = $v.deviceProfileId?.toBuilder();
      _deviceData = $v.deviceData?.toBuilder();
      _firmwareId = $v.firmwareId?.toBuilder();
      _softwareId = $v.softwareId?.toBuilder();
      _version = $v.version;
      _ownerName = $v.ownerName;
      _groups = $v.groups?.toBuilder();
      _active = $v.active;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceInfo other) {
    _$v = other as _$DeviceInfo;
  }

  @override
  void update(void Function(DeviceInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceInfo build() => _build();

  _$DeviceInfo _build() {
    _$DeviceInfo _$result;
    try {
      _$result =
          _$v ??
          _$DeviceInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            name: name,
            type: type,
            label: label,
            deviceProfileId: _deviceProfileId?.build(),
            deviceData: _deviceData?.build(),
            firmwareId: _firmwareId?.build(),
            softwareId: _softwareId?.build(),
            version: version,
            ownerName: ownerName,
            groups: _groups?.build(),
            active: active,
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

        _$failedField = 'deviceProfileId';
        _deviceProfileId?.build();
        _$failedField = 'deviceData';
        _deviceData?.build();
        _$failedField = 'firmwareId';
        _firmwareId?.build();
        _$failedField = 'softwareId';
        _softwareId?.build();

        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DeviceInfo',
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
