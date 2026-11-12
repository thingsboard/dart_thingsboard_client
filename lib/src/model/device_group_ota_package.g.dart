// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_group_ota_package.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceGroupOtaPackage extends DeviceGroupOtaPackage {
  @override
  final String? id;
  @override
  final EntityGroupId? groupId;
  @override
  final OtaPackageType? otaPackageType;
  @override
  final OtaPackageId? otaPackageId;
  @override
  final int? otaPackageUpdateTime;

  factory _$DeviceGroupOtaPackage([
    void Function(DeviceGroupOtaPackageBuilder)? updates,
  ]) => (DeviceGroupOtaPackageBuilder()..update(updates))._build();

  _$DeviceGroupOtaPackage._({
    this.id,
    this.groupId,
    this.otaPackageType,
    this.otaPackageId,
    this.otaPackageUpdateTime,
  }) : super._();
  @override
  DeviceGroupOtaPackage rebuild(
    void Function(DeviceGroupOtaPackageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeviceGroupOtaPackageBuilder toBuilder() =>
      DeviceGroupOtaPackageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceGroupOtaPackage &&
        id == other.id &&
        groupId == other.groupId &&
        otaPackageType == other.otaPackageType &&
        otaPackageId == other.otaPackageId &&
        otaPackageUpdateTime == other.otaPackageUpdateTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, otaPackageType.hashCode);
    _$hash = $jc(_$hash, otaPackageId.hashCode);
    _$hash = $jc(_$hash, otaPackageUpdateTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceGroupOtaPackage')
          ..add('id', id)
          ..add('groupId', groupId)
          ..add('otaPackageType', otaPackageType)
          ..add('otaPackageId', otaPackageId)
          ..add('otaPackageUpdateTime', otaPackageUpdateTime))
        .toString();
  }
}

class DeviceGroupOtaPackageBuilder
    implements Builder<DeviceGroupOtaPackage, DeviceGroupOtaPackageBuilder> {
  _$DeviceGroupOtaPackage? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  EntityGroupIdBuilder? _groupId;
  EntityGroupIdBuilder get groupId =>
      _$this._groupId ??= EntityGroupIdBuilder();
  set groupId(EntityGroupIdBuilder? groupId) => _$this._groupId = groupId;

  OtaPackageType? _otaPackageType;
  OtaPackageType? get otaPackageType => _$this._otaPackageType;
  set otaPackageType(OtaPackageType? otaPackageType) =>
      _$this._otaPackageType = otaPackageType;

  OtaPackageIdBuilder? _otaPackageId;
  OtaPackageIdBuilder get otaPackageId =>
      _$this._otaPackageId ??= OtaPackageIdBuilder();
  set otaPackageId(OtaPackageIdBuilder? otaPackageId) =>
      _$this._otaPackageId = otaPackageId;

  int? _otaPackageUpdateTime;
  int? get otaPackageUpdateTime => _$this._otaPackageUpdateTime;
  set otaPackageUpdateTime(int? otaPackageUpdateTime) =>
      _$this._otaPackageUpdateTime = otaPackageUpdateTime;

  DeviceGroupOtaPackageBuilder() {
    DeviceGroupOtaPackage._defaults(this);
  }

  DeviceGroupOtaPackageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _groupId = $v.groupId?.toBuilder();
      _otaPackageType = $v.otaPackageType;
      _otaPackageId = $v.otaPackageId?.toBuilder();
      _otaPackageUpdateTime = $v.otaPackageUpdateTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceGroupOtaPackage other) {
    _$v = other as _$DeviceGroupOtaPackage;
  }

  @override
  void update(void Function(DeviceGroupOtaPackageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceGroupOtaPackage build() => _build();

  _$DeviceGroupOtaPackage _build() {
    _$DeviceGroupOtaPackage _$result;
    try {
      _$result =
          _$v ??
          _$DeviceGroupOtaPackage._(
            id: id,
            groupId: _groupId?.build(),
            otaPackageType: otaPackageType,
            otaPackageId: _otaPackageId?.build(),
            otaPackageUpdateTime: otaPackageUpdateTime,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groupId';
        _groupId?.build();

        _$failedField = 'otaPackageId';
        _otaPackageId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DeviceGroupOtaPackage',
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
