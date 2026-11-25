// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'converter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Converter extends Converter {
  @override
  final ConverterId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String name;
  @override
  final ConverterType type;
  @override
  final IntegrationType? integrationType;
  @override
  final bool? debugMode;
  @override
  final DebugSettings? debugSettings;
  @override
  final JsonObject? configuration;
  @override
  final JsonObject? additionalInfo;
  @override
  final bool? edgeTemplate;
  @override
  final int? converterVersion;
  @override
  final int? version;

  factory _$Converter([void Function(ConverterBuilder)? updates]) =>
      (ConverterBuilder()..update(updates))._build();

  _$Converter._({
    this.id,
    this.createdTime,
    this.tenantId,
    required this.name,
    required this.type,
    this.integrationType,
    this.debugMode,
    this.debugSettings,
    this.configuration,
    this.additionalInfo,
    this.edgeTemplate,
    this.converterVersion,
    this.version,
  }) : super._();
  @override
  Converter rebuild(void Function(ConverterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConverterBuilder toBuilder() => ConverterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Converter &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        name == other.name &&
        type == other.type &&
        integrationType == other.integrationType &&
        debugMode == other.debugMode &&
        debugSettings == other.debugSettings &&
        configuration == other.configuration &&
        additionalInfo == other.additionalInfo &&
        edgeTemplate == other.edgeTemplate &&
        converterVersion == other.converterVersion &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, integrationType.hashCode);
    _$hash = $jc(_$hash, debugMode.hashCode);
    _$hash = $jc(_$hash, debugSettings.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, edgeTemplate.hashCode);
    _$hash = $jc(_$hash, converterVersion.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Converter')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('type', type)
          ..add('integrationType', integrationType)
          ..add('debugMode', debugMode)
          ..add('debugSettings', debugSettings)
          ..add('configuration', configuration)
          ..add('additionalInfo', additionalInfo)
          ..add('edgeTemplate', edgeTemplate)
          ..add('converterVersion', converterVersion)
          ..add('version', version))
        .toString();
  }
}

class ConverterBuilder implements Builder<Converter, ConverterBuilder> {
  _$Converter? _$v;

  ConverterIdBuilder? _id;
  ConverterIdBuilder get id => _$this._id ??= ConverterIdBuilder();
  set id(ConverterIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ConverterType? _type;
  ConverterType? get type => _$this._type;
  set type(ConverterType? type) => _$this._type = type;

  IntegrationType? _integrationType;
  IntegrationType? get integrationType => _$this._integrationType;
  set integrationType(IntegrationType? integrationType) =>
      _$this._integrationType = integrationType;

  bool? _debugMode;
  bool? get debugMode => _$this._debugMode;
  set debugMode(bool? debugMode) => _$this._debugMode = debugMode;

  DebugSettingsBuilder? _debugSettings;
  DebugSettingsBuilder get debugSettings =>
      _$this._debugSettings ??= DebugSettingsBuilder();
  set debugSettings(DebugSettingsBuilder? debugSettings) =>
      _$this._debugSettings = debugSettings;

  JsonObject? _configuration;
  JsonObject? get configuration => _$this._configuration;
  set configuration(JsonObject? configuration) =>
      _$this._configuration = configuration;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  bool? _edgeTemplate;
  bool? get edgeTemplate => _$this._edgeTemplate;
  set edgeTemplate(bool? edgeTemplate) => _$this._edgeTemplate = edgeTemplate;

  int? _converterVersion;
  int? get converterVersion => _$this._converterVersion;
  set converterVersion(int? converterVersion) =>
      _$this._converterVersion = converterVersion;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  ConverterBuilder() {
    Converter._defaults(this);
  }

  ConverterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _name = $v.name;
      _type = $v.type;
      _integrationType = $v.integrationType;
      _debugMode = $v.debugMode;
      _debugSettings = $v.debugSettings?.toBuilder();
      _configuration = $v.configuration;
      _additionalInfo = $v.additionalInfo;
      _edgeTemplate = $v.edgeTemplate;
      _converterVersion = $v.converterVersion;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Converter other) {
    _$v = other as _$Converter;
  }

  @override
  void update(void Function(ConverterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Converter build() => _build();

  _$Converter _build() {
    _$Converter _$result;
    try {
      _$result =
          _$v ??
          _$Converter._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'Converter',
              'name',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'Converter',
              'type',
            ),
            integrationType: integrationType,
            debugMode: debugMode,
            debugSettings: _debugSettings?.build(),
            configuration: configuration,
            additionalInfo: additionalInfo,
            edgeTemplate: edgeTemplate,
            converterVersion: converterVersion,
            version: version,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'debugSettings';
        _debugSettings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Converter',
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
