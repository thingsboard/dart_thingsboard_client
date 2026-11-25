// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityView extends EntityView {
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
  final EntityId? ownerId;

  factory _$EntityView([void Function(EntityViewBuilder)? updates]) =>
      (EntityViewBuilder()..update(updates))._build();

  _$EntityView._({
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
    this.ownerId,
  }) : super._();
  @override
  EntityView rebuild(void Function(EntityViewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityViewBuilder toBuilder() => EntityViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityView &&
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
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityView')
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
          ..add('ownerId', ownerId))
        .toString();
  }
}

class EntityViewBuilder implements Builder<EntityView, EntityViewBuilder> {
  _$EntityView? _$v;

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

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  EntityViewBuilder() {
    EntityView._defaults(this);
  }

  EntityViewBuilder get _$this {
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
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityView other) {
    _$v = other as _$EntityView;
  }

  @override
  void update(void Function(EntityViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityView build() => _build();

  _$EntityView _build() {
    _$EntityView _$result;
    try {
      _$result =
          _$v ??
          _$EntityView._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            entityId: BuiltValueNullFieldError.checkNotNull(
              entityId,
              r'EntityView',
              'entityId',
            ),
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'EntityView',
              'name',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EntityView',
              'type',
            ),
            keys: _keys?.build(),
            startTimeMs: startTimeMs,
            endTimeMs: endTimeMs,
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

        _$failedField = 'keys';
        _keys?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityView',
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
