// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_device_rpc_request_snmp_communication_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ToDeviceRpcRequestSnmpCommunicationConfig
    extends ToDeviceRpcRequestSnmpCommunicationConfig {
  @override
  final BuiltList<SnmpMapping>? mappings;
  @override
  final SnmpCommunicationSpec spec;

  factory _$ToDeviceRpcRequestSnmpCommunicationConfig([
    void Function(ToDeviceRpcRequestSnmpCommunicationConfigBuilder)? updates,
  ]) => (ToDeviceRpcRequestSnmpCommunicationConfigBuilder()..update(updates))
      ._build();

  _$ToDeviceRpcRequestSnmpCommunicationConfig._({
    this.mappings,
    required this.spec,
  }) : super._();
  @override
  ToDeviceRpcRequestSnmpCommunicationConfig rebuild(
    void Function(ToDeviceRpcRequestSnmpCommunicationConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ToDeviceRpcRequestSnmpCommunicationConfigBuilder toBuilder() =>
      ToDeviceRpcRequestSnmpCommunicationConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ToDeviceRpcRequestSnmpCommunicationConfig &&
        mappings == other.mappings &&
        spec == other.spec;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mappings.hashCode);
    _$hash = $jc(_$hash, spec.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ToDeviceRpcRequestSnmpCommunicationConfig',
          )
          ..add('mappings', mappings)
          ..add('spec', spec))
        .toString();
  }
}

class ToDeviceRpcRequestSnmpCommunicationConfigBuilder
    implements
        Builder<
          ToDeviceRpcRequestSnmpCommunicationConfig,
          ToDeviceRpcRequestSnmpCommunicationConfigBuilder
        >,
        SnmpCommunicationConfigBuilder {
  _$ToDeviceRpcRequestSnmpCommunicationConfig? _$v;

  ListBuilder<SnmpMapping>? _mappings;
  ListBuilder<SnmpMapping> get mappings =>
      _$this._mappings ??= ListBuilder<SnmpMapping>();
  set mappings(covariant ListBuilder<SnmpMapping>? mappings) =>
      _$this._mappings = mappings;

  SnmpCommunicationSpec? _spec;
  SnmpCommunicationSpec? get spec => _$this._spec;
  set spec(covariant SnmpCommunicationSpec? spec) => _$this._spec = spec;

  ToDeviceRpcRequestSnmpCommunicationConfigBuilder() {
    ToDeviceRpcRequestSnmpCommunicationConfig._defaults(this);
  }

  ToDeviceRpcRequestSnmpCommunicationConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mappings = $v.mappings?.toBuilder();
      _spec = $v.spec;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ToDeviceRpcRequestSnmpCommunicationConfig other) {
    _$v = other as _$ToDeviceRpcRequestSnmpCommunicationConfig;
  }

  @override
  void update(
    void Function(ToDeviceRpcRequestSnmpCommunicationConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ToDeviceRpcRequestSnmpCommunicationConfig build() => _build();

  _$ToDeviceRpcRequestSnmpCommunicationConfig _build() {
    _$ToDeviceRpcRequestSnmpCommunicationConfig _$result;
    try {
      _$result =
          _$v ??
          _$ToDeviceRpcRequestSnmpCommunicationConfig._(
            mappings: _mappings?.build(),
            spec: BuiltValueNullFieldError.checkNotNull(
              spec,
              r'ToDeviceRpcRequestSnmpCommunicationConfig',
              'spec',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mappings';
        _mappings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ToDeviceRpcRequestSnmpCommunicationConfig',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
