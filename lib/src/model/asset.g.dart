// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Asset extends Asset {
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
  final EntityId? ownerId;

  factory _$Asset([void Function(AssetBuilder)? updates]) =>
      (AssetBuilder()..update(updates))._build();

  _$Asset._({
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
    this.ownerId,
  }) : super._();
  @override
  Asset rebuild(void Function(AssetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetBuilder toBuilder() => AssetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Asset &&
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
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Asset')
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
          ..add('ownerId', ownerId))
        .toString();
  }
}

class AssetBuilder implements Builder<Asset, AssetBuilder> {
  _$Asset? _$v;

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

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  AssetBuilder() {
    Asset._defaults(this);
  }

  AssetBuilder get _$this {
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
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Asset other) {
    _$v = other as _$Asset;
  }

  @override
  void update(void Function(AssetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Asset build() => _build();

  _$Asset _build() {
    _$Asset _$result;
    try {
      _$result =
          _$v ??
          _$Asset._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Asset', 'name'),
            type: type,
            label: label,
            assetProfileId: _assetProfileId?.build(),
            version: version,
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
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Asset', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
