// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coap_device_type_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class CoapDeviceTypeConfigurationBuilder {
  void replace(CoapDeviceTypeConfiguration other);
  void update(void Function(CoapDeviceTypeConfigurationBuilder) updates);
  String? get coapDeviceType;
  set coapDeviceType(String? coapDeviceType);
}

class _$$CoapDeviceTypeConfiguration extends $CoapDeviceTypeConfiguration {
  @override
  final String coapDeviceType;

  factory _$$CoapDeviceTypeConfiguration([
    void Function($CoapDeviceTypeConfigurationBuilder)? updates,
  ]) => ($CoapDeviceTypeConfigurationBuilder()..update(updates))._build();

  _$$CoapDeviceTypeConfiguration._({required this.coapDeviceType}) : super._();
  @override
  $CoapDeviceTypeConfiguration rebuild(
    void Function($CoapDeviceTypeConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $CoapDeviceTypeConfigurationBuilder toBuilder() =>
      $CoapDeviceTypeConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $CoapDeviceTypeConfiguration &&
        coapDeviceType == other.coapDeviceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coapDeviceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'$CoapDeviceTypeConfiguration',
    )..add('coapDeviceType', coapDeviceType)).toString();
  }
}

class $CoapDeviceTypeConfigurationBuilder
    implements
        Builder<
          $CoapDeviceTypeConfiguration,
          $CoapDeviceTypeConfigurationBuilder
        >,
        CoapDeviceTypeConfigurationBuilder {
  _$$CoapDeviceTypeConfiguration? _$v;

  String? _coapDeviceType;
  String? get coapDeviceType => _$this._coapDeviceType;
  set coapDeviceType(covariant String? coapDeviceType) =>
      _$this._coapDeviceType = coapDeviceType;

  $CoapDeviceTypeConfigurationBuilder() {
    $CoapDeviceTypeConfiguration._defaults(this);
  }

  $CoapDeviceTypeConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coapDeviceType = $v.coapDeviceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $CoapDeviceTypeConfiguration other) {
    _$v = other as _$$CoapDeviceTypeConfiguration;
  }

  @override
  void update(void Function($CoapDeviceTypeConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $CoapDeviceTypeConfiguration build() => _build();

  _$$CoapDeviceTypeConfiguration _build() {
    final _$result =
        _$v ??
        _$$CoapDeviceTypeConfiguration._(
          coapDeviceType: BuiltValueNullFieldError.checkNotNull(
            coapDeviceType,
            r'$CoapDeviceTypeConfiguration',
            'coapDeviceType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
