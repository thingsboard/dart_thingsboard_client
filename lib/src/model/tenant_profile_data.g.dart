// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_profile_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantProfileData extends TenantProfileData {
  @override
  final TenantProfileConfiguration? configuration;
  @override
  final BuiltList<TenantProfileQueueConfiguration>? queueConfiguration;

  factory _$TenantProfileData([
    void Function(TenantProfileDataBuilder)? updates,
  ]) => (TenantProfileDataBuilder()..update(updates))._build();

  _$TenantProfileData._({this.configuration, this.queueConfiguration})
    : super._();
  @override
  TenantProfileData rebuild(void Function(TenantProfileDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantProfileDataBuilder toBuilder() =>
      TenantProfileDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantProfileData &&
        configuration == other.configuration &&
        queueConfiguration == other.queueConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, queueConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TenantProfileData')
          ..add('configuration', configuration)
          ..add('queueConfiguration', queueConfiguration))
        .toString();
  }
}

class TenantProfileDataBuilder
    implements Builder<TenantProfileData, TenantProfileDataBuilder> {
  _$TenantProfileData? _$v;

  TenantProfileConfiguration? _configuration;
  TenantProfileConfiguration? get configuration => _$this._configuration;
  set configuration(TenantProfileConfiguration? configuration) =>
      _$this._configuration = configuration;

  ListBuilder<TenantProfileQueueConfiguration>? _queueConfiguration;
  ListBuilder<TenantProfileQueueConfiguration> get queueConfiguration =>
      _$this._queueConfiguration ??=
          ListBuilder<TenantProfileQueueConfiguration>();
  set queueConfiguration(
    ListBuilder<TenantProfileQueueConfiguration>? queueConfiguration,
  ) => _$this._queueConfiguration = queueConfiguration;

  TenantProfileDataBuilder() {
    TenantProfileData._defaults(this);
  }

  TenantProfileDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configuration = $v.configuration;
      _queueConfiguration = $v.queueConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TenantProfileData other) {
    _$v = other as _$TenantProfileData;
  }

  @override
  void update(void Function(TenantProfileDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantProfileData build() => _build();

  _$TenantProfileData _build() {
    _$TenantProfileData _$result;
    try {
      _$result =
          _$v ??
          _$TenantProfileData._(
            configuration: configuration,
            queueConfiguration: _queueConfiguration?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'queueConfiguration';
        _queueConfiguration?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TenantProfileData',
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
