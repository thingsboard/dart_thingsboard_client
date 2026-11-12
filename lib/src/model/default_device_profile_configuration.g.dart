// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_device_profile_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DefaultDeviceProfileConfiguration
    extends DefaultDeviceProfileConfiguration {
  @override
  final String type;

  factory _$DefaultDeviceProfileConfiguration([
    void Function(DefaultDeviceProfileConfigurationBuilder)? updates,
  ]) => (DefaultDeviceProfileConfigurationBuilder()..update(updates))._build();

  _$DefaultDeviceProfileConfiguration._({required this.type}) : super._();
  @override
  DefaultDeviceProfileConfiguration rebuild(
    void Function(DefaultDeviceProfileConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DefaultDeviceProfileConfigurationBuilder toBuilder() =>
      DefaultDeviceProfileConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultDeviceProfileConfiguration && type == other.type;
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
      r'DefaultDeviceProfileConfiguration',
    )..add('type', type)).toString();
  }
}

class DefaultDeviceProfileConfigurationBuilder
    implements
        Builder<
          DefaultDeviceProfileConfiguration,
          DefaultDeviceProfileConfigurationBuilder
        >,
        DeviceProfileConfigurationBuilder {
  _$DefaultDeviceProfileConfiguration? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  DefaultDeviceProfileConfigurationBuilder() {
    DefaultDeviceProfileConfiguration._defaults(this);
  }

  DefaultDeviceProfileConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DefaultDeviceProfileConfiguration other) {
    _$v = other as _$DefaultDeviceProfileConfiguration;
  }

  @override
  void update(
    void Function(DefaultDeviceProfileConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  DefaultDeviceProfileConfiguration build() => _build();

  _$DefaultDeviceProfileConfiguration _build() {
    final _$result =
        _$v ??
        _$DefaultDeviceProfileConfiguration._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'DefaultDeviceProfileConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
