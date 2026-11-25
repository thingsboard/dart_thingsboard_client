// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class DeviceConfigurationBuilder {
  void replace(DeviceConfiguration other);
  void update(void Function(DeviceConfigurationBuilder) updates);
  DeviceProfileType? get type;
  set type(DeviceProfileType? type);
}

class _$$DeviceConfiguration extends $DeviceConfiguration {
  @override
  final DeviceProfileType type;

  factory _$$DeviceConfiguration([
    void Function($DeviceConfigurationBuilder)? updates,
  ]) => ($DeviceConfigurationBuilder()..update(updates))._build();

  _$$DeviceConfiguration._({required this.type}) : super._();
  @override
  $DeviceConfiguration rebuild(
    void Function($DeviceConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $DeviceConfigurationBuilder toBuilder() =>
      $DeviceConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $DeviceConfiguration && type == other.type;
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
      r'$DeviceConfiguration',
    )..add('type', type)).toString();
  }
}

class $DeviceConfigurationBuilder
    implements
        Builder<$DeviceConfiguration, $DeviceConfigurationBuilder>,
        DeviceConfigurationBuilder {
  _$$DeviceConfiguration? _$v;

  DeviceProfileType? _type;
  DeviceProfileType? get type => _$this._type;
  set type(covariant DeviceProfileType? type) => _$this._type = type;

  $DeviceConfigurationBuilder() {
    $DeviceConfiguration._defaults(this);
  }

  $DeviceConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $DeviceConfiguration other) {
    _$v = other as _$$DeviceConfiguration;
  }

  @override
  void update(void Function($DeviceConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $DeviceConfiguration build() => _build();

  _$$DeviceConfiguration _build() {
    final _$result =
        _$v ??
        _$$DeviceConfiguration._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$DeviceConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
