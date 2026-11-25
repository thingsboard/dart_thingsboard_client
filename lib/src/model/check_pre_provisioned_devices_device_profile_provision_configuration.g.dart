// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_pre_provisioned_devices_device_profile_provision_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration
    extends CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration {
  @override
  final String? provisionDeviceSecret;
  @override
  final String type;

  factory _$CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration([
    void Function(
      CheckPreProvisionedDevicesDeviceProfileProvisionConfigurationBuilder,
    )?
    updates,
  ]) =>
      (CheckPreProvisionedDevicesDeviceProfileProvisionConfigurationBuilder()
            ..update(updates))
          ._build();

  _$CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration._({
    this.provisionDeviceSecret,
    required this.type,
  }) : super._();
  @override
  CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration rebuild(
    void Function(
      CheckPreProvisionedDevicesDeviceProfileProvisionConfigurationBuilder,
    )
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CheckPreProvisionedDevicesDeviceProfileProvisionConfigurationBuilder
  toBuilder() =>
      CheckPreProvisionedDevicesDeviceProfileProvisionConfigurationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration &&
        provisionDeviceSecret == other.provisionDeviceSecret &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, provisionDeviceSecret.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration',
          )
          ..add('provisionDeviceSecret', provisionDeviceSecret)
          ..add('type', type))
        .toString();
  }
}

class CheckPreProvisionedDevicesDeviceProfileProvisionConfigurationBuilder
    implements
        Builder<
          CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration,
          CheckPreProvisionedDevicesDeviceProfileProvisionConfigurationBuilder
        >,
        DeviceProfileProvisionConfigurationBuilder {
  _$CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration? _$v;

  String? _provisionDeviceSecret;
  String? get provisionDeviceSecret => _$this._provisionDeviceSecret;
  set provisionDeviceSecret(covariant String? provisionDeviceSecret) =>
      _$this._provisionDeviceSecret = provisionDeviceSecret;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  CheckPreProvisionedDevicesDeviceProfileProvisionConfigurationBuilder() {
    CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration._defaults(
      this,
    );
  }

  CheckPreProvisionedDevicesDeviceProfileProvisionConfigurationBuilder
  get _$this {
    final $v = _$v;
    if ($v != null) {
      _provisionDeviceSecret = $v.provisionDeviceSecret;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
    covariant CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration
    other,
  ) {
    _$v =
        other
            as _$CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration;
  }

  @override
  void update(
    void Function(
      CheckPreProvisionedDevicesDeviceProfileProvisionConfigurationBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration build() =>
      _build();

  _$CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration _build() {
    final _$result =
        _$v ??
        _$CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration._(
          provisionDeviceSecret: provisionDeviceSecret,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
