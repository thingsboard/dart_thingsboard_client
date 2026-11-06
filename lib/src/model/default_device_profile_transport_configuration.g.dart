// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_device_profile_transport_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DefaultDeviceProfileTransportConfiguration
    extends DefaultDeviceProfileTransportConfiguration {
  @override
  final String type;

  factory _$DefaultDeviceProfileTransportConfiguration([
    void Function(DefaultDeviceProfileTransportConfigurationBuilder)? updates,
  ]) => (DefaultDeviceProfileTransportConfigurationBuilder()..update(updates))
      ._build();

  _$DefaultDeviceProfileTransportConfiguration._({required this.type})
    : super._();
  @override
  DefaultDeviceProfileTransportConfiguration rebuild(
    void Function(DefaultDeviceProfileTransportConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DefaultDeviceProfileTransportConfigurationBuilder toBuilder() =>
      DefaultDeviceProfileTransportConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultDeviceProfileTransportConfiguration &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'DefaultDeviceProfileTransportConfiguration',
    )..add('type', type)).toString();
  }
}

class DefaultDeviceProfileTransportConfigurationBuilder
    implements
        Builder<
          DefaultDeviceProfileTransportConfiguration,
          DefaultDeviceProfileTransportConfigurationBuilder
        >,
        DeviceProfileTransportConfigurationBuilder {
  _$DefaultDeviceProfileTransportConfiguration? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  DefaultDeviceProfileTransportConfigurationBuilder() {
    DefaultDeviceProfileTransportConfiguration._defaults(this);
  }

  DefaultDeviceProfileTransportConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DefaultDeviceProfileTransportConfiguration other) {
    _$v = other as _$DefaultDeviceProfileTransportConfiguration;
  }

  @override
  void update(
    void Function(DefaultDeviceProfileTransportConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  DefaultDeviceProfileTransportConfiguration build() => _build();

  _$DefaultDeviceProfileTransportConfiguration _build() {
    final _$result =
        _$v ??
        _$DefaultDeviceProfileTransportConfiguration._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'DefaultDeviceProfileTransportConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
