// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'efento_coap_device_type_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EfentoCoapDeviceTypeConfiguration
    extends EfentoCoapDeviceTypeConfiguration {
  @override
  final String coapDeviceType;

  factory _$EfentoCoapDeviceTypeConfiguration([
    void Function(EfentoCoapDeviceTypeConfigurationBuilder)? updates,
  ]) => (EfentoCoapDeviceTypeConfigurationBuilder()..update(updates))._build();

  _$EfentoCoapDeviceTypeConfiguration._({required this.coapDeviceType})
    : super._();
  @override
  EfentoCoapDeviceTypeConfiguration rebuild(
    void Function(EfentoCoapDeviceTypeConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EfentoCoapDeviceTypeConfigurationBuilder toBuilder() =>
      EfentoCoapDeviceTypeConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EfentoCoapDeviceTypeConfiguration &&
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
      r'EfentoCoapDeviceTypeConfiguration',
    )..add('coapDeviceType', coapDeviceType)).toString();
  }
}

class EfentoCoapDeviceTypeConfigurationBuilder
    implements
        Builder<
          EfentoCoapDeviceTypeConfiguration,
          EfentoCoapDeviceTypeConfigurationBuilder
        >,
        CoapDeviceTypeConfigurationBuilder {
  _$EfentoCoapDeviceTypeConfiguration? _$v;

  String? _coapDeviceType;
  String? get coapDeviceType => _$this._coapDeviceType;
  set coapDeviceType(covariant String? coapDeviceType) =>
      _$this._coapDeviceType = coapDeviceType;

  EfentoCoapDeviceTypeConfigurationBuilder() {
    EfentoCoapDeviceTypeConfiguration._defaults(this);
  }

  EfentoCoapDeviceTypeConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coapDeviceType = $v.coapDeviceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EfentoCoapDeviceTypeConfiguration other) {
    _$v = other as _$EfentoCoapDeviceTypeConfiguration;
  }

  @override
  void update(
    void Function(EfentoCoapDeviceTypeConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  EfentoCoapDeviceTypeConfiguration build() => _build();

  _$EfentoCoapDeviceTypeConfiguration _build() {
    final _$result =
        _$v ??
        _$EfentoCoapDeviceTypeConfiguration._(
          coapDeviceType: BuiltValueNullFieldError.checkNotNull(
            coapDeviceType,
            r'EfentoCoapDeviceTypeConfiguration',
            'coapDeviceType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
