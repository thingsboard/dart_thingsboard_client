// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_view_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityViewInfo extends EntityViewInfo {
  @override
  final EntityViewId? id;
  @override
  final int? createdTime;
  @override
  final JsonObject? additionalInfo;
  @override
  final EntityId entityId;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final String name;
  @override
  final String type;
  @override
  final TelemetryEntityView? keys;
  @override
  final int? startTimeMs;
  @override
  final int? endTimeMs;
  @override
  final int? version;
  @override
  final String? ownerName;
  @override
  final BuiltList<EntityInfo>? groups;
  @override
  final EntityId? ownerId;

  factory _$EntityViewInfo([void Function(EntityViewInfoBuilder)? updates]) =>
      (EntityViewInfoBuilder()..update(updates))._build();

  _$EntityViewInfo._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    required this.entityId,
    this.tenantId,
    this.customerId,
    required this.name,
    required this.type,
    this.keys,
    this.startTimeMs,
    this.endTimeMs,
    this.version,
    this.ownerName,
    this.groups,
    this.ownerId,
  }) : super._();
  @override
  EntityViewInfo rebuild(void Function(EntityViewInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityViewInfoBuilder toBuilder() => EntityViewInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityViewInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        entityId == other.entityId &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        name == other.name &&
        type == other.type &&
        keys == other.keys &&
        startTimeMs == other.startTimeMs &&
        endTimeMs == other.endTimeMs &&
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
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, keys.hashCode);
    _$hash = $jc(_$hash, startTimeMs.hashCode);
    _$hash = $jc(_$hash, endTimeMs.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, ownerName.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityViewInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('entityId', entityId)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('name', name)
          ..add('type', type)
          ..add('keys', keys)
          ..add('startTimeMs', startTimeMs)
          ..add('endTimeMs', endTimeMs)
          ..add('version', version)
          ..add('ownerName', ownerName)
          ..add('groups', groups)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class EntityViewInfoBuilder
    implements Builder<EntityViewInfo, EntityViewInfoBuilder> {
  _$EntityViewInfo? _$v;

  EntityViewIdBuilder? _id;
  EntityViewIdBuilder get id => _$this._id ??= EntityViewIdBuilder();
  set id(EntityViewIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  EntityId? _entityId;
  EntityId? get entityId => _$this._entityId;
  set entityId(EntityId? entityId) => _$this._entityId = entityId;

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

  TelemetryEntityViewBuilder? _keys;
  TelemetryEntityViewBuilder get keys =>
      _$this._keys ??= TelemetryEntityViewBuilder();
  set keys(TelemetryEntityViewBuilder? keys) => _$this._keys = keys;

  int? _startTimeMs;
  int? get startTimeMs => _$this._startTimeMs;
  set startTimeMs(int? startTimeMs) => _$this._startTimeMs = startTimeMs;

  int? _endTimeMs;
  int? get endTimeMs => _$this._endTimeMs;
  set endTimeMs(int? endTimeMs) => _$this._endTimeMs = endTimeMs;

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

  EntityViewInfoBuilder() {
    EntityViewInfo._defaults(this);
  }

  EntityViewInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _additionalInfo = $v.additionalInfo;
      _entityId = $v.entityId;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _name = $v.name;
      _type = $v.type;
      _keys = $v.keys?.toBuilder();
      _startTimeMs = $v.startTimeMs;
      _endTimeMs = $v.endTimeMs;
      _version = $v.version;
      _ownerName = $v.ownerName;
      _groups = $v.groups?.toBuilder();
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityViewInfo other) {
    _$v = other as _$EntityViewInfo;
  }

  @override
  void update(void Function(EntityViewInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityViewInfo build() => _build();

  _$EntityViewInfo _build() {
    _$EntityViewInfo _$result;
    try {
      _$result =
          _$v ??
          _$EntityViewInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            entityId: BuiltValueNullFieldError.checkNotNull(
              entityId,
              r'EntityViewInfo',
              'entityId',
            ),
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'EntityViewInfo',
              'name',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EntityViewInfo',
              'type',
            ),
            keys: _keys?.build(),
            startTimeMs: startTimeMs,
            endTimeMs: endTimeMs,
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

        _$failedField = 'keys';
        _keys?.build();

        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityViewInfo',
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
