// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_profile_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class DeviceProfileConfigurationBuilder {
  void replace(DeviceProfileConfiguration other);
  void update(void Function(DeviceProfileConfigurationBuilder) updates);
  String? get type;
  set type(String? type);
}

class _$$DeviceProfileConfiguration extends $DeviceProfileConfiguration {
  @override
  final String type;

  factory _$$DeviceProfileConfiguration([
    void Function($DeviceProfileConfigurationBuilder)? updates,
  ]) => ($DeviceProfileConfigurationBuilder()..update(updates))._build();

  _$$DeviceProfileConfiguration._({required this.type}) : super._();
  @override
  $DeviceProfileConfiguration rebuild(
    void Function($DeviceProfileConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $DeviceProfileConfigurationBuilder toBuilder() =>
      $DeviceProfileConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $DeviceProfileConfiguration && type == other.type;
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
      r'$DeviceProfileConfiguration',
    )..add('type', type)).toString();
  }
}

class $DeviceProfileConfigurationBuilder
    implements
        Builder<
          $DeviceProfileConfiguration,
          $DeviceProfileConfigurationBuilder
        >,
        DeviceProfileConfigurationBuilder {
  _$$DeviceProfileConfiguration? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $DeviceProfileConfigurationBuilder() {
    $DeviceProfileConfiguration._defaults(this);
  }

  $DeviceProfileConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $DeviceProfileConfiguration other) {
    _$v = other as _$$DeviceProfileConfiguration;
  }

  @override
  void update(void Function($DeviceProfileConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $DeviceProfileConfiguration build() => _build();

  _$$DeviceProfileConfiguration _build() {
    final _$result =
        _$v ??
        _$$DeviceProfileConfiguration._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$DeviceProfileConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
