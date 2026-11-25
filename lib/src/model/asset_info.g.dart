// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssetInfo extends AssetInfo {
  @override
  final AssetId? id;
  @override
  final int? createdTime;
  @override
  final JsonObject? additionalInfo;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final String name;
  @override
  final String? type;
  @override
  final String? label;
  @override
  final AssetProfileId? assetProfileId;
  @override
  final int? version;
  @override
  final String? ownerName;
  @override
  final BuiltList<EntityInfo>? groups;
  @override
  final EntityId? ownerId;

  factory _$AssetInfo([void Function(AssetInfoBuilder)? updates]) =>
      (AssetInfoBuilder()..update(updates))._build();

  _$AssetInfo._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    this.tenantId,
    this.customerId,
    required this.name,
    this.type,
    this.label,
    this.assetProfileId,
    this.version,
    this.ownerName,
    this.groups,
    this.ownerId,
  }) : super._();
  @override
  AssetInfo rebuild(void Function(AssetInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetInfoBuilder toBuilder() => AssetInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        name == other.name &&
        type == other.type &&
        label == other.label &&
        assetProfileId == other.assetProfileId &&
        version == other.version &&
        ownerName == other.ownerName &&
        groups == other.groups &&
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
    _$hash = $jc(_$hash, assetProfileId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, ownerName.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssetInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('name', name)
          ..add('type', type)
          ..add('label', label)
          ..add('assetProfileId', assetProfileId)
          ..add('version', version)
          ..add('ownerName', ownerName)
          ..add('groups', groups)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class AssetInfoBuilder implements Builder<AssetInfo, AssetInfoBuilder> {
  _$AssetInfo? _$v;

  AssetIdBuilder? _id;
  AssetIdBuilder get id => _$this._id ??= AssetIdBuilder();
  set id(AssetIdBuilder? id) => _$this._id = id;

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

  AssetProfileIdBuilder? _assetProfileId;
  AssetProfileIdBuilder get assetProfileId =>
      _$this._assetProfileId ??= AssetProfileIdBuilder();
  set assetProfileId(AssetProfileIdBuilder? assetProfileId) =>
      _$this._assetProfileId = assetProfileId;

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

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  AssetInfoBuilder() {
    AssetInfo._defaults(this);
  }

  AssetInfoBuilder get _$this {
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
      _assetProfileId = $v.assetProfileId?.toBuilder();
      _version = $v.version;
      _ownerName = $v.ownerName;
      _groups = $v.groups?.toBuilder();
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetInfo other) {
    _$v = other as _$AssetInfo;
  }

  @override
  void update(void Function(AssetInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssetInfo build() => _build();

  _$AssetInfo _build() {
    _$AssetInfo _$result;
    try {
      _$result =
          _$v ??
          _$AssetInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'AssetInfo',
              'name',
            ),
            type: type,
            label: label,
            assetProfileId: _assetProfileId?.build(),
            version: version,
            ownerName: ownerName,
            groups: _groups?.build(),
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

        _$failedField = 'assetProfileId';
        _assetProfileId?.build();

        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AssetInfo',
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
