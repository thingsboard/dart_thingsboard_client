// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_attributes_setting_snmp_communication_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SharedAttributesSettingSnmpCommunicationConfig
    extends SharedAttributesSettingSnmpCommunicationConfig {
  @override
  final BuiltList<SnmpMapping>? mappings;
  @override
  final SnmpCommunicationSpec spec;

  factory _$SharedAttributesSettingSnmpCommunicationConfig([
    void Function(SharedAttributesSettingSnmpCommunicationConfigBuilder)?
    updates,
  ]) =>
      (SharedAttributesSettingSnmpCommunicationConfigBuilder()..update(updates))
          ._build();

  _$SharedAttributesSettingSnmpCommunicationConfig._({
    this.mappings,
    required this.spec,
  }) : super._();
  @override
  SharedAttributesSettingSnmpCommunicationConfig rebuild(
    void Function(SharedAttributesSettingSnmpCommunicationConfigBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SharedAttributesSettingSnmpCommunicationConfigBuilder toBuilder() =>
      SharedAttributesSettingSnmpCommunicationConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SharedAttributesSettingSnmpCommunicationConfig &&
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
            r'SharedAttributesSettingSnmpCommunicationConfig',
          )
          ..add('mappings', mappings)
          ..add('spec', spec))
        .toString();
  }
}

class SharedAttributesSettingSnmpCommunicationConfigBuilder
    implements
        Builder<
          SharedAttributesSettingSnmpCommunicationConfig,
          SharedAttributesSettingSnmpCommunicationConfigBuilder
        >,
        SnmpCommunicationConfigBuilder {
  _$SharedAttributesSettingSnmpCommunicationConfig? _$v;

  ListBuilder<SnmpMapping>? _mappings;
  ListBuilder<SnmpMapping> get mappings =>
      _$this._mappings ??= ListBuilder<SnmpMapping>();
  set mappings(covariant ListBuilder<SnmpMapping>? mappings) =>
      _$this._mappings = mappings;

  SnmpCommunicationSpec? _spec;
  SnmpCommunicationSpec? get spec => _$this._spec;
  set spec(covariant SnmpCommunicationSpec? spec) => _$this._spec = spec;

  SharedAttributesSettingSnmpCommunicationConfigBuilder() {
    SharedAttributesSettingSnmpCommunicationConfig._defaults(this);
  }

  SharedAttributesSettingSnmpCommunicationConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mappings = $v.mappings?.toBuilder();
      _spec = $v.spec;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SharedAttributesSettingSnmpCommunicationConfig other) {
    _$v = other as _$SharedAttributesSettingSnmpCommunicationConfig;
  }

  @override
  void update(
    void Function(SharedAttributesSettingSnmpCommunicationConfigBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SharedAttributesSettingSnmpCommunicationConfig build() => _build();

  _$SharedAttributesSettingSnmpCommunicationConfig _build() {
    _$SharedAttributesSettingSnmpCommunicationConfig _$result;
    try {
      _$result =
          _$v ??
          _$SharedAttributesSettingSnmpCommunicationConfig._(
            mappings: _mappings?.build(),
            spec: BuiltValueNullFieldError.checkNotNull(
              spec,
              r'SharedAttributesSettingSnmpCommunicationConfig',
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
          r'SharedAttributesSettingSnmpCommunicationConfig',
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
