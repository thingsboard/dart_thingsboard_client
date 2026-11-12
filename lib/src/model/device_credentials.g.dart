// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_credentials.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceCredentials extends DeviceCredentials {
  @override
  final DeviceCredentialsId id;
  @override
  final int? createdTime;
  @override
  final DeviceId deviceId;
  @override
  final DeviceCredentialsType? credentialsType;
  @override
  final String credentialsId;
  @override
  final String? credentialsValue;
  @override
  final int? version;

  factory _$DeviceCredentials([
    void Function(DeviceCredentialsBuilder)? updates,
  ]) => (DeviceCredentialsBuilder()..update(updates))._build();

  _$DeviceCredentials._({
    required this.id,
    this.createdTime,
    required this.deviceId,
    this.credentialsType,
    required this.credentialsId,
    this.credentialsValue,
    this.version,
  }) : super._();
  @override
  DeviceCredentials rebuild(void Function(DeviceCredentialsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceCredentialsBuilder toBuilder() =>
      DeviceCredentialsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceCredentials &&
        id == other.id &&
        createdTime == other.createdTime &&
        deviceId == other.deviceId &&
        credentialsType == other.credentialsType &&
        credentialsId == other.credentialsId &&
        credentialsValue == other.credentialsValue &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, credentialsType.hashCode);
    _$hash = $jc(_$hash, credentialsId.hashCode);
    _$hash = $jc(_$hash, credentialsValue.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceCredentials')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('deviceId', deviceId)
          ..add('credentialsType', credentialsType)
          ..add('credentialsId', credentialsId)
          ..add('credentialsValue', credentialsValue)
          ..add('version', version))
        .toString();
  }
}

class DeviceCredentialsBuilder
    implements Builder<DeviceCredentials, DeviceCredentialsBuilder> {
  _$DeviceCredentials? _$v;

  DeviceCredentialsIdBuilder? _id;
  DeviceCredentialsIdBuilder get id =>
      _$this._id ??= DeviceCredentialsIdBuilder();
  set id(DeviceCredentialsIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  DeviceIdBuilder? _deviceId;
  DeviceIdBuilder get deviceId => _$this._deviceId ??= DeviceIdBuilder();
  set deviceId(DeviceIdBuilder? deviceId) => _$this._deviceId = deviceId;

  DeviceCredentialsType? _credentialsType;
  DeviceCredentialsType? get credentialsType => _$this._credentialsType;
  set credentialsType(DeviceCredentialsType? credentialsType) =>
      _$this._credentialsType = credentialsType;

  String? _credentialsId;
  String? get credentialsId => _$this._credentialsId;
  set credentialsId(String? credentialsId) =>
      _$this._credentialsId = credentialsId;

  String? _credentialsValue;
  String? get credentialsValue => _$this._credentialsValue;
  set credentialsValue(String? credentialsValue) =>
      _$this._credentialsValue = credentialsValue;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  DeviceCredentialsBuilder() {
    DeviceCredentials._defaults(this);
  }

  DeviceCredentialsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id.toBuilder();
      _createdTime = $v.createdTime;
      _deviceId = $v.deviceId.toBuilder();
      _credentialsType = $v.credentialsType;
      _credentialsId = $v.credentialsId;
      _credentialsValue = $v.credentialsValue;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceCredentials other) {
    _$v = other as _$DeviceCredentials;
  }

  @override
  void update(void Function(DeviceCredentialsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceCredentials build() => _build();

  _$DeviceCredentials _build() {
    _$DeviceCredentials _$result;
    try {
      _$result =
          _$v ??
          _$DeviceCredentials._(
            id: id.build(),
            createdTime: createdTime,
            deviceId: deviceId.build(),
            credentialsType: credentialsType,
            credentialsId: BuiltValueNullFieldError.checkNotNull(
              credentialsId,
              r'DeviceCredentials',
              'credentialsId',
            ),
            credentialsValue: credentialsValue,
            version: version,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();

        _$failedField = 'deviceId';
        deviceId.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DeviceCredentials',
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
