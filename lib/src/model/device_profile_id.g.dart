// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_profile_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceProfileId extends DeviceProfileId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$DeviceProfileId([void Function(DeviceProfileIdBuilder)? updates]) =>
      (DeviceProfileIdBuilder()..update(updates))._build();

  _$DeviceProfileId._({required this.entityType, required this.id}) : super._();
  @override
  DeviceProfileId rebuild(void Function(DeviceProfileIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceProfileIdBuilder toBuilder() => DeviceProfileIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceProfileId &&
        entityType == other.entityType &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceProfileId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class DeviceProfileIdBuilder
    implements
        Builder<DeviceProfileId, DeviceProfileIdBuilder>,
        EntityIdBuilder {
  _$DeviceProfileId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  DeviceProfileIdBuilder() {
    DeviceProfileId._defaults(this);
  }

  DeviceProfileIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DeviceProfileId other) {
    _$v = other as _$DeviceProfileId;
  }

  @override
  void update(void Function(DeviceProfileIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceProfileId build() => _build();

  _$DeviceProfileId _build() {
    final _$result =
        _$v ??
        _$DeviceProfileId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'DeviceProfileId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'DeviceProfileId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
