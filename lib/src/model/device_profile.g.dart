// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceProfile extends DeviceProfile {
  @override
  final DeviceProfileId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final DeviceProfileType? type;
  @override
  final DeviceTransportType? transportType;
  @override
  final DeviceProfileProvisionType? provisionType;
  @override
  final RuleChainId? defaultRuleChainId;
  @override
  final DashboardId? defaultDashboardId;
  @override
  final String? defaultQueueName;
  @override
  final DeviceProfileData? profileData;
  @override
  final String? provisionDeviceKey;
  @override
  final OtaPackageId? firmwareId;
  @override
  final OtaPackageId? softwareId;
  @override
  final RuleChainId? defaultEdgeRuleChainId;
  @override
  final int? version;
  @override
  final bool? default_;

  factory _$DeviceProfile([void Function(DeviceProfileBuilder)? updates]) =>
      (DeviceProfileBuilder()..update(updates))._build();

  _$DeviceProfile._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.name,
    this.description,
    this.image,
    this.type,
    this.transportType,
    this.provisionType,
    this.defaultRuleChainId,
    this.defaultDashboardId,
    this.defaultQueueName,
    this.profileData,
    this.provisionDeviceKey,
    this.firmwareId,
    this.softwareId,
    this.defaultEdgeRuleChainId,
    this.version,
    this.default_,
  }) : super._();
  @override
  DeviceProfile rebuild(void Function(DeviceProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceProfileBuilder toBuilder() => DeviceProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceProfile &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        type == other.type &&
        transportType == other.transportType &&
        provisionType == other.provisionType &&
        defaultRuleChainId == other.defaultRuleChainId &&
        defaultDashboardId == other.defaultDashboardId &&
        defaultQueueName == other.defaultQueueName &&
        profileData == other.profileData &&
        provisionDeviceKey == other.provisionDeviceKey &&
        firmwareId == other.firmwareId &&
        softwareId == other.softwareId &&
        defaultEdgeRuleChainId == other.defaultEdgeRuleChainId &&
        version == other.version &&
        default_ == other.default_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, transportType.hashCode);
    _$hash = $jc(_$hash, provisionType.hashCode);
    _$hash = $jc(_$hash, defaultRuleChainId.hashCode);
    _$hash = $jc(_$hash, defaultDashboardId.hashCode);
    _$hash = $jc(_$hash, defaultQueueName.hashCode);
    _$hash = $jc(_$hash, profileData.hashCode);
    _$hash = $jc(_$hash, provisionDeviceKey.hashCode);
    _$hash = $jc(_$hash, firmwareId.hashCode);
    _$hash = $jc(_$hash, softwareId.hashCode);
    _$hash = $jc(_$hash, defaultEdgeRuleChainId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceProfile')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('description', description)
          ..add('image', image)
          ..add('type', type)
          ..add('transportType', transportType)
          ..add('provisionType', provisionType)
          ..add('defaultRuleChainId', defaultRuleChainId)
          ..add('defaultDashboardId', defaultDashboardId)
          ..add('defaultQueueName', defaultQueueName)
          ..add('profileData', profileData)
          ..add('provisionDeviceKey', provisionDeviceKey)
          ..add('firmwareId', firmwareId)
          ..add('softwareId', softwareId)
          ..add('defaultEdgeRuleChainId', defaultEdgeRuleChainId)
          ..add('version', version)
          ..add('default_', default_))
        .toString();
  }
}

class DeviceProfileBuilder
    implements Builder<DeviceProfile, DeviceProfileBuilder> {
  _$DeviceProfile? _$v;

  DeviceProfileIdBuilder? _id;
  DeviceProfileIdBuilder get id => _$this._id ??= DeviceProfileIdBuilder();
  set id(DeviceProfileIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DeviceProfileType? _type;
  DeviceProfileType? get type => _$this._type;
  set type(DeviceProfileType? type) => _$this._type = type;

  DeviceTransportType? _transportType;
  DeviceTransportType? get transportType => _$this._transportType;
  set transportType(DeviceTransportType? transportType) =>
      _$this._transportType = transportType;

  DeviceProfileProvisionType? _provisionType;
  DeviceProfileProvisionType? get provisionType => _$this._provisionType;
  set provisionType(DeviceProfileProvisionType? provisionType) =>
      _$this._provisionType = provisionType;

  RuleChainIdBuilder? _defaultRuleChainId;
  RuleChainIdBuilder get defaultRuleChainId =>
      _$this._defaultRuleChainId ??= RuleChainIdBuilder();
  set defaultRuleChainId(RuleChainIdBuilder? defaultRuleChainId) =>
      _$this._defaultRuleChainId = defaultRuleChainId;

  DashboardIdBuilder? _defaultDashboardId;
  DashboardIdBuilder get defaultDashboardId =>
      _$this._defaultDashboardId ??= DashboardIdBuilder();
  set defaultDashboardId(DashboardIdBuilder? defaultDashboardId) =>
      _$this._defaultDashboardId = defaultDashboardId;

  String? _defaultQueueName;
  String? get defaultQueueName => _$this._defaultQueueName;
  set defaultQueueName(String? defaultQueueName) =>
      _$this._defaultQueueName = defaultQueueName;

  DeviceProfileDataBuilder? _profileData;
  DeviceProfileDataBuilder get profileData =>
      _$this._profileData ??= DeviceProfileDataBuilder();
  set profileData(DeviceProfileDataBuilder? profileData) =>
      _$this._profileData = profileData;

  String? _provisionDeviceKey;
  String? get provisionDeviceKey => _$this._provisionDeviceKey;
  set provisionDeviceKey(String? provisionDeviceKey) =>
      _$this._provisionDeviceKey = provisionDeviceKey;

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

  RuleChainIdBuilder? _defaultEdgeRuleChainId;
  RuleChainIdBuilder get defaultEdgeRuleChainId =>
      _$this._defaultEdgeRuleChainId ??= RuleChainIdBuilder();
  set defaultEdgeRuleChainId(RuleChainIdBuilder? defaultEdgeRuleChainId) =>
      _$this._defaultEdgeRuleChainId = defaultEdgeRuleChainId;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  bool? _default_;
  bool? get default_ => _$this._default_;
  set default_(bool? default_) => _$this._default_ = default_;

  DeviceProfileBuilder() {
    DeviceProfile._defaults(this);
  }

  DeviceProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _name = $v.name;
      _description = $v.description;
      _image = $v.image;
      _type = $v.type;
      _transportType = $v.transportType;
      _provisionType = $v.provisionType;
      _defaultRuleChainId = $v.defaultRuleChainId?.toBuilder();
      _defaultDashboardId = $v.defaultDashboardId?.toBuilder();
      _defaultQueueName = $v.defaultQueueName;
      _profileData = $v.profileData?.toBuilder();
      _provisionDeviceKey = $v.provisionDeviceKey;
      _firmwareId = $v.firmwareId?.toBuilder();
      _softwareId = $v.softwareId?.toBuilder();
      _defaultEdgeRuleChainId = $v.defaultEdgeRuleChainId?.toBuilder();
      _version = $v.version;
      _default_ = $v.default_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceProfile other) {
    _$v = other as _$DeviceProfile;
  }

  @override
  void update(void Function(DeviceProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceProfile build() => _build();

  _$DeviceProfile _build() {
    _$DeviceProfile _$result;
    try {
      _$result =
          _$v ??
          _$DeviceProfile._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            name: name,
            description: description,
            image: image,
            type: type,
            transportType: transportType,
            provisionType: provisionType,
            defaultRuleChainId: _defaultRuleChainId?.build(),
            defaultDashboardId: _defaultDashboardId?.build(),
            defaultQueueName: defaultQueueName,
            profileData: _profileData?.build(),
            provisionDeviceKey: provisionDeviceKey,
            firmwareId: _firmwareId?.build(),
            softwareId: _softwareId?.build(),
            defaultEdgeRuleChainId: _defaultEdgeRuleChainId?.build(),
            version: version,
            default_: default_,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'defaultRuleChainId';
        _defaultRuleChainId?.build();
        _$failedField = 'defaultDashboardId';
        _defaultDashboardId?.build();

        _$failedField = 'profileData';
        _profileData?.build();

        _$failedField = 'firmwareId';
        _firmwareId?.build();
        _$failedField = 'softwareId';
        _softwareId?.build();
        _$failedField = 'defaultEdgeRuleChainId';
        _defaultEdgeRuleChainId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DeviceProfile',
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
