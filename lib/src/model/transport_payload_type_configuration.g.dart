// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_payload_type_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class TransportPayloadTypeConfigurationBuilder {
  void replace(TransportPayloadTypeConfiguration other);
  void update(void Function(TransportPayloadTypeConfigurationBuilder) updates);
  String? get transportPayloadType;
  set transportPayloadType(String? transportPayloadType);
}

class _$$TransportPayloadTypeConfiguration
    extends $TransportPayloadTypeConfiguration {
  @override
  final String transportPayloadType;

  factory _$$TransportPayloadTypeConfiguration([
    void Function($TransportPayloadTypeConfigurationBuilder)? updates,
  ]) => ($TransportPayloadTypeConfigurationBuilder()..update(updates))._build();

  _$$TransportPayloadTypeConfiguration._({required this.transportPayloadType})
    : super._();
  @override
  $TransportPayloadTypeConfiguration rebuild(
    void Function($TransportPayloadTypeConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $TransportPayloadTypeConfigurationBuilder toBuilder() =>
      $TransportPayloadTypeConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $TransportPayloadTypeConfiguration &&
        transportPayloadType == other.transportPayloadType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transportPayloadType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'$TransportPayloadTypeConfiguration',
    )..add('transportPayloadType', transportPayloadType)).toString();
  }
}

class $TransportPayloadTypeConfigurationBuilder
    implements
        Builder<
          $TransportPayloadTypeConfiguration,
          $TransportPayloadTypeConfigurationBuilder
        >,
        TransportPayloadTypeConfigurationBuilder {
  _$$TransportPayloadTypeConfiguration? _$v;

  String? _transportPayloadType;
  String? get transportPayloadType => _$this._transportPayloadType;
  set transportPayloadType(covariant String? transportPayloadType) =>
      _$this._transportPayloadType = transportPayloadType;

  $TransportPayloadTypeConfigurationBuilder() {
    $TransportPayloadTypeConfiguration._defaults(this);
  }

  $TransportPayloadTypeConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transportPayloadType = $v.transportPayloadType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $TransportPayloadTypeConfiguration other) {
    _$v = other as _$$TransportPayloadTypeConfiguration;
  }

  @override
  void update(
    void Function($TransportPayloadTypeConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  $TransportPayloadTypeConfiguration build() => _build();

  _$$TransportPayloadTypeConfiguration _build() {
    final _$result =
        _$v ??
        _$$TransportPayloadTypeConfiguration._(
          transportPayloadType: BuiltValueNullFieldError.checkNotNull(
            transportPayloadType,
            r'$TransportPayloadTypeConfiguration',
            'transportPayloadType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
