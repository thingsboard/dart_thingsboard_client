// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_transport_payload_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonTransportPayloadConfiguration
    extends JsonTransportPayloadConfiguration {
  @override
  final String transportPayloadType;

  factory _$JsonTransportPayloadConfiguration([
    void Function(JsonTransportPayloadConfigurationBuilder)? updates,
  ]) => (JsonTransportPayloadConfigurationBuilder()..update(updates))._build();

  _$JsonTransportPayloadConfiguration._({required this.transportPayloadType})
    : super._();
  @override
  JsonTransportPayloadConfiguration rebuild(
    void Function(JsonTransportPayloadConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  JsonTransportPayloadConfigurationBuilder toBuilder() =>
      JsonTransportPayloadConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonTransportPayloadConfiguration &&
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
      r'JsonTransportPayloadConfiguration',
    )..add('transportPayloadType', transportPayloadType)).toString();
  }
}

class JsonTransportPayloadConfigurationBuilder
    implements
        Builder<
          JsonTransportPayloadConfiguration,
          JsonTransportPayloadConfigurationBuilder
        >,
        TransportPayloadTypeConfigurationBuilder {
  _$JsonTransportPayloadConfiguration? _$v;

  String? _transportPayloadType;
  String? get transportPayloadType => _$this._transportPayloadType;
  set transportPayloadType(covariant String? transportPayloadType) =>
      _$this._transportPayloadType = transportPayloadType;

  JsonTransportPayloadConfigurationBuilder() {
    JsonTransportPayloadConfiguration._defaults(this);
  }

  JsonTransportPayloadConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transportPayloadType = $v.transportPayloadType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant JsonTransportPayloadConfiguration other) {
    _$v = other as _$JsonTransportPayloadConfiguration;
  }

  @override
  void update(
    void Function(JsonTransportPayloadConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  JsonTransportPayloadConfiguration build() => _build();

  _$JsonTransportPayloadConfiguration _build() {
    final _$result =
        _$v ??
        _$JsonTransportPayloadConfiguration._(
          transportPayloadType: BuiltValueNullFieldError.checkNotNull(
            transportPayloadType,
            r'JsonTransportPayloadConfiguration',
            'transportPayloadType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
