// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_model_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AiModelInfo extends AiModelInfo {
  @override
  final AiModelId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final int? version;
  @override
  final String? name;
  @override
  final bool? customerAccessEnabled;
  @override
  final AiModelConfig? configuration;
  @override
  final AiModelId? externalId;

  factory _$AiModelInfo([void Function(AiModelInfoBuilder)? updates]) =>
      (AiModelInfoBuilder()..update(updates))._build();

  _$AiModelInfo._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.version,
    this.name,
    this.customerAccessEnabled,
    this.configuration,
    this.externalId,
  }) : super._();
  @override
  AiModelInfo rebuild(void Function(AiModelInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AiModelInfoBuilder toBuilder() => AiModelInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AiModelInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        version == other.version &&
        name == other.name &&
        customerAccessEnabled == other.customerAccessEnabled &&
        configuration == other.configuration &&
        externalId == other.externalId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, customerAccessEnabled.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AiModelInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('version', version)
          ..add('name', name)
          ..add('customerAccessEnabled', customerAccessEnabled)
          ..add('configuration', configuration)
          ..add('externalId', externalId))
        .toString();
  }
}

class AiModelInfoBuilder implements Builder<AiModelInfo, AiModelInfoBuilder> {
  _$AiModelInfo? _$v;

  AiModelIdBuilder? _id;
  AiModelIdBuilder get id => _$this._id ??= AiModelIdBuilder();
  set id(AiModelIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _customerAccessEnabled;
  bool? get customerAccessEnabled => _$this._customerAccessEnabled;
  set customerAccessEnabled(bool? customerAccessEnabled) =>
      _$this._customerAccessEnabled = customerAccessEnabled;

  AiModelConfig? _configuration;
  AiModelConfig? get configuration => _$this._configuration;
  set configuration(AiModelConfig? configuration) =>
      _$this._configuration = configuration;

  AiModelIdBuilder? _externalId;
  AiModelIdBuilder get externalId => _$this._externalId ??= AiModelIdBuilder();
  set externalId(AiModelIdBuilder? externalId) =>
      _$this._externalId = externalId;

  AiModelInfoBuilder() {
    AiModelInfo._defaults(this);
  }

  AiModelInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _version = $v.version;
      _name = $v.name;
      _customerAccessEnabled = $v.customerAccessEnabled;
      _configuration = $v.configuration;
      _externalId = $v.externalId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AiModelInfo other) {
    _$v = other as _$AiModelInfo;
  }

  @override
  void update(void Function(AiModelInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AiModelInfo build() => _build();

  _$AiModelInfo _build() {
    _$AiModelInfo _$result;
    try {
      _$result =
          _$v ??
          _$AiModelInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            version: version,
            name: name,
            customerAccessEnabled: customerAccessEnabled,
            configuration: configuration,
            externalId: _externalId?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'externalId';
        _externalId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AiModelInfo',
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
