// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AiModel extends AiModel {
  @override
  final AiModelId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final int? version;
  @override
  final String name;
  @override
  final bool? customerAccessEnabled;
  @override
  final AiModelConfig? configuration;

  factory _$AiModel([void Function(AiModelBuilder)? updates]) =>
      (AiModelBuilder()..update(updates))._build();

  _$AiModel._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.version,
    required this.name,
    this.customerAccessEnabled,
    this.configuration,
  }) : super._();
  @override
  AiModel rebuild(void Function(AiModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AiModelBuilder toBuilder() => AiModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AiModel &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        version == other.version &&
        name == other.name &&
        customerAccessEnabled == other.customerAccessEnabled &&
        configuration == other.configuration;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AiModel')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('version', version)
          ..add('name', name)
          ..add('customerAccessEnabled', customerAccessEnabled)
          ..add('configuration', configuration))
        .toString();
  }
}

class AiModelBuilder implements Builder<AiModel, AiModelBuilder> {
  _$AiModel? _$v;

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

  AiModelBuilder() {
    AiModel._defaults(this);
  }

  AiModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _version = $v.version;
      _name = $v.name;
      _customerAccessEnabled = $v.customerAccessEnabled;
      _configuration = $v.configuration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AiModel other) {
    _$v = other as _$AiModel;
  }

  @override
  void update(void Function(AiModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AiModel build() => _build();

  _$AiModel _build() {
    _$AiModel _$result;
    try {
      _$result =
          _$v ??
          _$AiModel._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            version: version,
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'AiModel',
              'name',
            ),
            customerAccessEnabled: customerAccessEnabled,
            configuration: configuration,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AiModel',
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
