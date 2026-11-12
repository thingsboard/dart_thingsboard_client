// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_device_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DefaultDeviceConfiguration extends DefaultDeviceConfiguration {
  @override
  final DeviceProfileType type;

  factory _$DefaultDeviceConfiguration([
    void Function(DefaultDeviceConfigurationBuilder)? updates,
  ]) => (DefaultDeviceConfigurationBuilder()..update(updates))._build();

  _$DefaultDeviceConfiguration._({required this.type}) : super._();
  @override
  DefaultDeviceConfiguration rebuild(
    void Function(DefaultDeviceConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DefaultDeviceConfigurationBuilder toBuilder() =>
      DefaultDeviceConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultDeviceConfiguration && type == other.type;
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
      r'DefaultDeviceConfiguration',
    )..add('type', type)).toString();
  }
}

class DefaultDeviceConfigurationBuilder
    implements
        Builder<DefaultDeviceConfiguration, DefaultDeviceConfigurationBuilder>,
        DeviceConfigurationBuilder {
  _$DefaultDeviceConfiguration? _$v;

  DeviceProfileType? _type;
  DeviceProfileType? get type => _$this._type;
  set type(covariant DeviceProfileType? type) => _$this._type = type;

  DefaultDeviceConfigurationBuilder() {
    DefaultDeviceConfiguration._defaults(this);
  }

  DefaultDeviceConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DefaultDeviceConfiguration other) {
    _$v = other as _$DefaultDeviceConfiguration;
  }

  @override
  void update(void Function(DefaultDeviceConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DefaultDeviceConfiguration build() => _build();

  _$DefaultDeviceConfiguration _build() {
    final _$result =
        _$v ??
        _$DefaultDeviceConfiguration._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'DefaultDeviceConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
