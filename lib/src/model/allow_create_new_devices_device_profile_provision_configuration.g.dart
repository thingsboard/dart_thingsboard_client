// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allow_create_new_devices_device_profile_provision_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllowCreateNewDevicesDeviceProfileProvisionConfiguration
    extends AllowCreateNewDevicesDeviceProfileProvisionConfiguration {
  @override
  final String? provisionDeviceSecret;
  @override
  final String type;

  factory _$AllowCreateNewDevicesDeviceProfileProvisionConfiguration([
    void Function(
      AllowCreateNewDevicesDeviceProfileProvisionConfigurationBuilder,
    )?
    updates,
  ]) =>
      (AllowCreateNewDevicesDeviceProfileProvisionConfigurationBuilder()
            ..update(updates))
          ._build();

  _$AllowCreateNewDevicesDeviceProfileProvisionConfiguration._({
    this.provisionDeviceSecret,
    required this.type,
  }) : super._();
  @override
  AllowCreateNewDevicesDeviceProfileProvisionConfiguration rebuild(
    void Function(
      AllowCreateNewDevicesDeviceProfileProvisionConfigurationBuilder,
    )
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AllowCreateNewDevicesDeviceProfileProvisionConfigurationBuilder toBuilder() =>
      AllowCreateNewDevicesDeviceProfileProvisionConfigurationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllowCreateNewDevicesDeviceProfileProvisionConfiguration &&
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
            r'AllowCreateNewDevicesDeviceProfileProvisionConfiguration',
          )
          ..add('provisionDeviceSecret', provisionDeviceSecret)
          ..add('type', type))
        .toString();
  }
}

class AllowCreateNewDevicesDeviceProfileProvisionConfigurationBuilder
    implements
        Builder<
          AllowCreateNewDevicesDeviceProfileProvisionConfiguration,
          AllowCreateNewDevicesDeviceProfileProvisionConfigurationBuilder
        >,
        DeviceProfileProvisionConfigurationBuilder {
  _$AllowCreateNewDevicesDeviceProfileProvisionConfiguration? _$v;

  String? _provisionDeviceSecret;
  String? get provisionDeviceSecret => _$this._provisionDeviceSecret;
  set provisionDeviceSecret(covariant String? provisionDeviceSecret) =>
      _$this._provisionDeviceSecret = provisionDeviceSecret;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  AllowCreateNewDevicesDeviceProfileProvisionConfigurationBuilder() {
    AllowCreateNewDevicesDeviceProfileProvisionConfiguration._defaults(this);
  }

  AllowCreateNewDevicesDeviceProfileProvisionConfigurationBuilder get _$this {
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
    covariant AllowCreateNewDevicesDeviceProfileProvisionConfiguration other,
  ) {
    _$v = other as _$AllowCreateNewDevicesDeviceProfileProvisionConfiguration;
  }

  @override
  void update(
    void Function(
      AllowCreateNewDevicesDeviceProfileProvisionConfigurationBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  AllowCreateNewDevicesDeviceProfileProvisionConfiguration build() => _build();

  _$AllowCreateNewDevicesDeviceProfileProvisionConfiguration _build() {
    final _$result =
        _$v ??
        _$AllowCreateNewDevicesDeviceProfileProvisionConfiguration._(
          provisionDeviceSecret: provisionDeviceSecret,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'AllowCreateNewDevicesDeviceProfileProvisionConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
