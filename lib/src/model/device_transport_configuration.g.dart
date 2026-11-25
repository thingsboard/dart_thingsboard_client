// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_transport_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class DeviceTransportConfigurationBuilder {
  void replace(DeviceTransportConfiguration other);
  void update(void Function(DeviceTransportConfigurationBuilder) updates);
  String? get type;
  set type(String? type);
}

class _$$DeviceTransportConfiguration extends $DeviceTransportConfiguration {
  @override
  final String type;

  factory _$$DeviceTransportConfiguration([
    void Function($DeviceTransportConfigurationBuilder)? updates,
  ]) => ($DeviceTransportConfigurationBuilder()..update(updates))._build();

  _$$DeviceTransportConfiguration._({required this.type}) : super._();
  @override
  $DeviceTransportConfiguration rebuild(
    void Function($DeviceTransportConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $DeviceTransportConfigurationBuilder toBuilder() =>
      $DeviceTransportConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $DeviceTransportConfiguration && type == other.type;
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
      r'$DeviceTransportConfiguration',
    )..add('type', type)).toString();
  }
}

class $DeviceTransportConfigurationBuilder
    implements
        Builder<
          $DeviceTransportConfiguration,
          $DeviceTransportConfigurationBuilder
        >,
        DeviceTransportConfigurationBuilder {
  _$$DeviceTransportConfiguration? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $DeviceTransportConfigurationBuilder() {
    $DeviceTransportConfiguration._defaults(this);
  }

  $DeviceTransportConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $DeviceTransportConfiguration other) {
    _$v = other as _$$DeviceTransportConfiguration;
  }

  @override
  void update(void Function($DeviceTransportConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $DeviceTransportConfiguration build() => _build();

  _$$DeviceTransportConfiguration _build() {
    final _$result =
        _$v ??
        _$$DeviceTransportConfiguration._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$DeviceTransportConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
