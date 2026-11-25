// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disabled_device_profile_provision_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisabledDeviceProfileProvisionConfiguration
    extends DisabledDeviceProfileProvisionConfiguration {
  @override
  final String? provisionDeviceSecret;
  @override
  final String type;

  factory _$DisabledDeviceProfileProvisionConfiguration([
    void Function(DisabledDeviceProfileProvisionConfigurationBuilder)? updates,
  ]) => (DisabledDeviceProfileProvisionConfigurationBuilder()..update(updates))
      ._build();

  _$DisabledDeviceProfileProvisionConfiguration._({
    this.provisionDeviceSecret,
    required this.type,
  }) : super._();
  @override
  DisabledDeviceProfileProvisionConfiguration rebuild(
    void Function(DisabledDeviceProfileProvisionConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DisabledDeviceProfileProvisionConfigurationBuilder toBuilder() =>
      DisabledDeviceProfileProvisionConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisabledDeviceProfileProvisionConfiguration &&
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
            r'DisabledDeviceProfileProvisionConfiguration',
          )
          ..add('provisionDeviceSecret', provisionDeviceSecret)
          ..add('type', type))
        .toString();
  }
}

class DisabledDeviceProfileProvisionConfigurationBuilder
    implements
        Builder<
          DisabledDeviceProfileProvisionConfiguration,
          DisabledDeviceProfileProvisionConfigurationBuilder
        >,
        DeviceProfileProvisionConfigurationBuilder {
  _$DisabledDeviceProfileProvisionConfiguration? _$v;

  String? _provisionDeviceSecret;
  String? get provisionDeviceSecret => _$this._provisionDeviceSecret;
  set provisionDeviceSecret(covariant String? provisionDeviceSecret) =>
      _$this._provisionDeviceSecret = provisionDeviceSecret;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  DisabledDeviceProfileProvisionConfigurationBuilder() {
    DisabledDeviceProfileProvisionConfiguration._defaults(this);
  }

  DisabledDeviceProfileProvisionConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _provisionDeviceSecret = $v.provisionDeviceSecret;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DisabledDeviceProfileProvisionConfiguration other) {
    _$v = other as _$DisabledDeviceProfileProvisionConfiguration;
  }

  @override
  void update(
    void Function(DisabledDeviceProfileProvisionConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  DisabledDeviceProfileProvisionConfiguration build() => _build();

  _$DisabledDeviceProfileProvisionConfiguration _build() {
    final _$result =
        _$v ??
        _$DisabledDeviceProfileProvisionConfiguration._(
          provisionDeviceSecret: provisionDeviceSecret,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'DisabledDeviceProfileProvisionConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
