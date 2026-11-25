// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_attributes_querying_snmp_communication_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientAttributesQueryingSnmpCommunicationConfig
    extends ClientAttributesQueryingSnmpCommunicationConfig {
  @override
  final BuiltList<SnmpMapping>? mappings;
  @override
  final int? queryingFrequencyMs;
  @override
  final SnmpCommunicationSpec spec;

  factory _$ClientAttributesQueryingSnmpCommunicationConfig([
    void Function(ClientAttributesQueryingSnmpCommunicationConfigBuilder)?
    updates,
  ]) =>
      (ClientAttributesQueryingSnmpCommunicationConfigBuilder()
            ..update(updates))
          ._build();

  _$ClientAttributesQueryingSnmpCommunicationConfig._({
    this.mappings,
    this.queryingFrequencyMs,
    required this.spec,
  }) : super._();
  @override
  ClientAttributesQueryingSnmpCommunicationConfig rebuild(
    void Function(ClientAttributesQueryingSnmpCommunicationConfigBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ClientAttributesQueryingSnmpCommunicationConfigBuilder toBuilder() =>
      ClientAttributesQueryingSnmpCommunicationConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientAttributesQueryingSnmpCommunicationConfig &&
        mappings == other.mappings &&
        queryingFrequencyMs == other.queryingFrequencyMs &&
        spec == other.spec;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mappings.hashCode);
    _$hash = $jc(_$hash, queryingFrequencyMs.hashCode);
    _$hash = $jc(_$hash, spec.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ClientAttributesQueryingSnmpCommunicationConfig',
          )
          ..add('mappings', mappings)
          ..add('queryingFrequencyMs', queryingFrequencyMs)
          ..add('spec', spec))
        .toString();
  }
}

class ClientAttributesQueryingSnmpCommunicationConfigBuilder
    implements
        Builder<
          ClientAttributesQueryingSnmpCommunicationConfig,
          ClientAttributesQueryingSnmpCommunicationConfigBuilder
        >,
        SnmpCommunicationConfigBuilder {
  _$ClientAttributesQueryingSnmpCommunicationConfig? _$v;

  ListBuilder<SnmpMapping>? _mappings;
  ListBuilder<SnmpMapping> get mappings =>
      _$this._mappings ??= ListBuilder<SnmpMapping>();
  set mappings(covariant ListBuilder<SnmpMapping>? mappings) =>
      _$this._mappings = mappings;

  int? _queryingFrequencyMs;
  int? get queryingFrequencyMs => _$this._queryingFrequencyMs;
  set queryingFrequencyMs(covariant int? queryingFrequencyMs) =>
      _$this._queryingFrequencyMs = queryingFrequencyMs;

  SnmpCommunicationSpec? _spec;
  SnmpCommunicationSpec? get spec => _$this._spec;
  set spec(covariant SnmpCommunicationSpec? spec) => _$this._spec = spec;

  ClientAttributesQueryingSnmpCommunicationConfigBuilder() {
    ClientAttributesQueryingSnmpCommunicationConfig._defaults(this);
  }

  ClientAttributesQueryingSnmpCommunicationConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mappings = $v.mappings?.toBuilder();
      _queryingFrequencyMs = $v.queryingFrequencyMs;
      _spec = $v.spec;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
    covariant ClientAttributesQueryingSnmpCommunicationConfig other,
  ) {
    _$v = other as _$ClientAttributesQueryingSnmpCommunicationConfig;
  }

  @override
  void update(
    void Function(ClientAttributesQueryingSnmpCommunicationConfigBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ClientAttributesQueryingSnmpCommunicationConfig build() => _build();

  _$ClientAttributesQueryingSnmpCommunicationConfig _build() {
    _$ClientAttributesQueryingSnmpCommunicationConfig _$result;
    try {
      _$result =
          _$v ??
          _$ClientAttributesQueryingSnmpCommunicationConfig._(
            mappings: _mappings?.build(),
            queryingFrequencyMs: queryingFrequencyMs,
            spec: BuiltValueNullFieldError.checkNotNull(
              spec,
              r'ClientAttributesQueryingSnmpCommunicationConfig',
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
          r'ClientAttributesQueryingSnmpCommunicationConfig',
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
