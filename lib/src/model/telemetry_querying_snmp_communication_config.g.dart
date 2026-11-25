// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_querying_snmp_communication_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TelemetryQueryingSnmpCommunicationConfig
    extends TelemetryQueryingSnmpCommunicationConfig {
  @override
  final BuiltList<SnmpMapping>? mappings;
  @override
  final int? queryingFrequencyMs;
  @override
  final SnmpCommunicationSpec spec;

  factory _$TelemetryQueryingSnmpCommunicationConfig([
    void Function(TelemetryQueryingSnmpCommunicationConfigBuilder)? updates,
  ]) => (TelemetryQueryingSnmpCommunicationConfigBuilder()..update(updates))
      ._build();

  _$TelemetryQueryingSnmpCommunicationConfig._({
    this.mappings,
    this.queryingFrequencyMs,
    required this.spec,
  }) : super._();
  @override
  TelemetryQueryingSnmpCommunicationConfig rebuild(
    void Function(TelemetryQueryingSnmpCommunicationConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TelemetryQueryingSnmpCommunicationConfigBuilder toBuilder() =>
      TelemetryQueryingSnmpCommunicationConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TelemetryQueryingSnmpCommunicationConfig &&
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
            r'TelemetryQueryingSnmpCommunicationConfig',
          )
          ..add('mappings', mappings)
          ..add('queryingFrequencyMs', queryingFrequencyMs)
          ..add('spec', spec))
        .toString();
  }
}

class TelemetryQueryingSnmpCommunicationConfigBuilder
    implements
        Builder<
          TelemetryQueryingSnmpCommunicationConfig,
          TelemetryQueryingSnmpCommunicationConfigBuilder
        >,
        SnmpCommunicationConfigBuilder {
  _$TelemetryQueryingSnmpCommunicationConfig? _$v;

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

  TelemetryQueryingSnmpCommunicationConfigBuilder() {
    TelemetryQueryingSnmpCommunicationConfig._defaults(this);
  }

  TelemetryQueryingSnmpCommunicationConfigBuilder get _$this {
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
  void replace(covariant TelemetryQueryingSnmpCommunicationConfig other) {
    _$v = other as _$TelemetryQueryingSnmpCommunicationConfig;
  }

  @override
  void update(
    void Function(TelemetryQueryingSnmpCommunicationConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  TelemetryQueryingSnmpCommunicationConfig build() => _build();

  _$TelemetryQueryingSnmpCommunicationConfig _build() {
    _$TelemetryQueryingSnmpCommunicationConfig _$result;
    try {
      _$result =
          _$v ??
          _$TelemetryQueryingSnmpCommunicationConfig._(
            mappings: _mappings?.build(),
            queryingFrequencyMs: queryingFrequencyMs,
            spec: BuiltValueNullFieldError.checkNotNull(
              spec,
              r'TelemetryQueryingSnmpCommunicationConfig',
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
          r'TelemetryQueryingSnmpCommunicationConfig',
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
