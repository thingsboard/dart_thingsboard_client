// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proto_transport_payload_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProtoTransportPayloadConfiguration
    extends ProtoTransportPayloadConfiguration {
  @override
  final bool? enableCompatibilityWithJsonPayloadFormat;
  @override
  final String? deviceAttributesProtoSchema;
  @override
  final String? deviceRpcRequestProtoSchema;
  @override
  final String? deviceRpcResponseProtoSchema;
  @override
  final bool? useJsonPayloadFormatForDefaultDownlinkTopics;
  @override
  final String? deviceTelemetryProtoSchema;
  @override
  final String transportPayloadType;

  factory _$ProtoTransportPayloadConfiguration([
    void Function(ProtoTransportPayloadConfigurationBuilder)? updates,
  ]) => (ProtoTransportPayloadConfigurationBuilder()..update(updates))._build();

  _$ProtoTransportPayloadConfiguration._({
    this.enableCompatibilityWithJsonPayloadFormat,
    this.deviceAttributesProtoSchema,
    this.deviceRpcRequestProtoSchema,
    this.deviceRpcResponseProtoSchema,
    this.useJsonPayloadFormatForDefaultDownlinkTopics,
    this.deviceTelemetryProtoSchema,
    required this.transportPayloadType,
  }) : super._();
  @override
  ProtoTransportPayloadConfiguration rebuild(
    void Function(ProtoTransportPayloadConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProtoTransportPayloadConfigurationBuilder toBuilder() =>
      ProtoTransportPayloadConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProtoTransportPayloadConfiguration &&
        enableCompatibilityWithJsonPayloadFormat ==
            other.enableCompatibilityWithJsonPayloadFormat &&
        deviceAttributesProtoSchema == other.deviceAttributesProtoSchema &&
        deviceRpcRequestProtoSchema == other.deviceRpcRequestProtoSchema &&
        deviceRpcResponseProtoSchema == other.deviceRpcResponseProtoSchema &&
        useJsonPayloadFormatForDefaultDownlinkTopics ==
            other.useJsonPayloadFormatForDefaultDownlinkTopics &&
        deviceTelemetryProtoSchema == other.deviceTelemetryProtoSchema &&
        transportPayloadType == other.transportPayloadType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enableCompatibilityWithJsonPayloadFormat.hashCode);
    _$hash = $jc(_$hash, deviceAttributesProtoSchema.hashCode);
    _$hash = $jc(_$hash, deviceRpcRequestProtoSchema.hashCode);
    _$hash = $jc(_$hash, deviceRpcResponseProtoSchema.hashCode);
    _$hash = $jc(_$hash, useJsonPayloadFormatForDefaultDownlinkTopics.hashCode);
    _$hash = $jc(_$hash, deviceTelemetryProtoSchema.hashCode);
    _$hash = $jc(_$hash, transportPayloadType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProtoTransportPayloadConfiguration')
          ..add(
            'enableCompatibilityWithJsonPayloadFormat',
            enableCompatibilityWithJsonPayloadFormat,
          )
          ..add('deviceAttributesProtoSchema', deviceAttributesProtoSchema)
          ..add('deviceRpcRequestProtoSchema', deviceRpcRequestProtoSchema)
          ..add('deviceRpcResponseProtoSchema', deviceRpcResponseProtoSchema)
          ..add(
            'useJsonPayloadFormatForDefaultDownlinkTopics',
            useJsonPayloadFormatForDefaultDownlinkTopics,
          )
          ..add('deviceTelemetryProtoSchema', deviceTelemetryProtoSchema)
          ..add('transportPayloadType', transportPayloadType))
        .toString();
  }
}

class ProtoTransportPayloadConfigurationBuilder
    implements
        Builder<
          ProtoTransportPayloadConfiguration,
          ProtoTransportPayloadConfigurationBuilder
        >,
        TransportPayloadTypeConfigurationBuilder {
  _$ProtoTransportPayloadConfiguration? _$v;

  bool? _enableCompatibilityWithJsonPayloadFormat;
  bool? get enableCompatibilityWithJsonPayloadFormat =>
      _$this._enableCompatibilityWithJsonPayloadFormat;
  set enableCompatibilityWithJsonPayloadFormat(
    covariant bool? enableCompatibilityWithJsonPayloadFormat,
  ) => _$this._enableCompatibilityWithJsonPayloadFormat =
      enableCompatibilityWithJsonPayloadFormat;

  String? _deviceAttributesProtoSchema;
  String? get deviceAttributesProtoSchema =>
      _$this._deviceAttributesProtoSchema;
  set deviceAttributesProtoSchema(
    covariant String? deviceAttributesProtoSchema,
  ) => _$this._deviceAttributesProtoSchema = deviceAttributesProtoSchema;

  String? _deviceRpcRequestProtoSchema;
  String? get deviceRpcRequestProtoSchema =>
      _$this._deviceRpcRequestProtoSchema;
  set deviceRpcRequestProtoSchema(
    covariant String? deviceRpcRequestProtoSchema,
  ) => _$this._deviceRpcRequestProtoSchema = deviceRpcRequestProtoSchema;

  String? _deviceRpcResponseProtoSchema;
  String? get deviceRpcResponseProtoSchema =>
      _$this._deviceRpcResponseProtoSchema;
  set deviceRpcResponseProtoSchema(
    covariant String? deviceRpcResponseProtoSchema,
  ) => _$this._deviceRpcResponseProtoSchema = deviceRpcResponseProtoSchema;

  bool? _useJsonPayloadFormatForDefaultDownlinkTopics;
  bool? get useJsonPayloadFormatForDefaultDownlinkTopics =>
      _$this._useJsonPayloadFormatForDefaultDownlinkTopics;
  set useJsonPayloadFormatForDefaultDownlinkTopics(
    covariant bool? useJsonPayloadFormatForDefaultDownlinkTopics,
  ) => _$this._useJsonPayloadFormatForDefaultDownlinkTopics =
      useJsonPayloadFormatForDefaultDownlinkTopics;

  String? _deviceTelemetryProtoSchema;
  String? get deviceTelemetryProtoSchema => _$this._deviceTelemetryProtoSchema;
  set deviceTelemetryProtoSchema(
    covariant String? deviceTelemetryProtoSchema,
  ) => _$this._deviceTelemetryProtoSchema = deviceTelemetryProtoSchema;

  String? _transportPayloadType;
  String? get transportPayloadType => _$this._transportPayloadType;
  set transportPayloadType(covariant String? transportPayloadType) =>
      _$this._transportPayloadType = transportPayloadType;

  ProtoTransportPayloadConfigurationBuilder() {
    ProtoTransportPayloadConfiguration._defaults(this);
  }

  ProtoTransportPayloadConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enableCompatibilityWithJsonPayloadFormat =
          $v.enableCompatibilityWithJsonPayloadFormat;
      _deviceAttributesProtoSchema = $v.deviceAttributesProtoSchema;
      _deviceRpcRequestProtoSchema = $v.deviceRpcRequestProtoSchema;
      _deviceRpcResponseProtoSchema = $v.deviceRpcResponseProtoSchema;
      _useJsonPayloadFormatForDefaultDownlinkTopics =
          $v.useJsonPayloadFormatForDefaultDownlinkTopics;
      _deviceTelemetryProtoSchema = $v.deviceTelemetryProtoSchema;
      _transportPayloadType = $v.transportPayloadType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ProtoTransportPayloadConfiguration other) {
    _$v = other as _$ProtoTransportPayloadConfiguration;
  }

  @override
  void update(
    void Function(ProtoTransportPayloadConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ProtoTransportPayloadConfiguration build() => _build();

  _$ProtoTransportPayloadConfiguration _build() {
    final _$result =
        _$v ??
        _$ProtoTransportPayloadConfiguration._(
          enableCompatibilityWithJsonPayloadFormat:
              enableCompatibilityWithJsonPayloadFormat,
          deviceAttributesProtoSchema: deviceAttributesProtoSchema,
          deviceRpcRequestProtoSchema: deviceRpcRequestProtoSchema,
          deviceRpcResponseProtoSchema: deviceRpcResponseProtoSchema,
          useJsonPayloadFormatForDefaultDownlinkTopics:
              useJsonPayloadFormatForDefaultDownlinkTopics,
          deviceTelemetryProtoSchema: deviceTelemetryProtoSchema,
          transportPayloadType: BuiltValueNullFieldError.checkNotNull(
            transportPayloadType,
            r'ProtoTransportPayloadConfiguration',
            'transportPayloadType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
