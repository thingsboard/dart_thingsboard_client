// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_profile_transport_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class DeviceProfileTransportConfigurationBuilder {
  void replace(DeviceProfileTransportConfiguration other);
  void update(
    void Function(DeviceProfileTransportConfigurationBuilder) updates,
  );
  String? get type;
  set type(String? type);
}

class _$$DeviceProfileTransportConfiguration
    extends $DeviceProfileTransportConfiguration {
  @override
  final String type;

  factory _$$DeviceProfileTransportConfiguration([
    void Function($DeviceProfileTransportConfigurationBuilder)? updates,
  ]) =>
      ($DeviceProfileTransportConfigurationBuilder()..update(updates))._build();

  _$$DeviceProfileTransportConfiguration._({required this.type}) : super._();
  @override
  $DeviceProfileTransportConfiguration rebuild(
    void Function($DeviceProfileTransportConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $DeviceProfileTransportConfigurationBuilder toBuilder() =>
      $DeviceProfileTransportConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $DeviceProfileTransportConfiguration && type == other.type;
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
      r'$DeviceProfileTransportConfiguration',
    )..add('type', type)).toString();
  }
}

class $DeviceProfileTransportConfigurationBuilder
    implements
        Builder<
          $DeviceProfileTransportConfiguration,
          $DeviceProfileTransportConfigurationBuilder
        >,
        DeviceProfileTransportConfigurationBuilder {
  _$$DeviceProfileTransportConfiguration? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $DeviceProfileTransportConfigurationBuilder() {
    $DeviceProfileTransportConfiguration._defaults(this);
  }

  $DeviceProfileTransportConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $DeviceProfileTransportConfiguration other) {
    _$v = other as _$$DeviceProfileTransportConfiguration;
  }

  @override
  void update(
    void Function($DeviceProfileTransportConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  $DeviceProfileTransportConfiguration build() => _build();

  _$$DeviceProfileTransportConfiguration _build() {
    final _$result =
        _$v ??
        _$$DeviceProfileTransportConfiguration._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$DeviceProfileTransportConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
