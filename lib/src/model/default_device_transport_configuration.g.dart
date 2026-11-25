// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_device_transport_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DefaultDeviceTransportConfiguration
    extends DefaultDeviceTransportConfiguration {
  @override
  final String type;

  factory _$DefaultDeviceTransportConfiguration([
    void Function(DefaultDeviceTransportConfigurationBuilder)? updates,
  ]) =>
      (DefaultDeviceTransportConfigurationBuilder()..update(updates))._build();

  _$DefaultDeviceTransportConfiguration._({required this.type}) : super._();
  @override
  DefaultDeviceTransportConfiguration rebuild(
    void Function(DefaultDeviceTransportConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DefaultDeviceTransportConfigurationBuilder toBuilder() =>
      DefaultDeviceTransportConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultDeviceTransportConfiguration && type == other.type;
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
      r'DefaultDeviceTransportConfiguration',
    )..add('type', type)).toString();
  }
}

class DefaultDeviceTransportConfigurationBuilder
    implements
        Builder<
          DefaultDeviceTransportConfiguration,
          DefaultDeviceTransportConfigurationBuilder
        >,
        DeviceTransportConfigurationBuilder {
  _$DefaultDeviceTransportConfiguration? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  DefaultDeviceTransportConfigurationBuilder() {
    DefaultDeviceTransportConfiguration._defaults(this);
  }

  DefaultDeviceTransportConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DefaultDeviceTransportConfiguration other) {
    _$v = other as _$DefaultDeviceTransportConfiguration;
  }

  @override
  void update(
    void Function(DefaultDeviceTransportConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  DefaultDeviceTransportConfiguration build() => _build();

  _$DefaultDeviceTransportConfiguration _build() {
    final _$result =
        _$v ??
        _$DefaultDeviceTransportConfiguration._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'DefaultDeviceTransportConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
