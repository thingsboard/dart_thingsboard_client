// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportTemplate extends ReportTemplate {
  @override
  final ReportTemplateId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final String name;
  @override
  final TbReportFormat format;
  @override
  final ReportTemplateType type;
  @override
  final String? description;
  @override
  final int? version;
  @override
  final ReportTemplateConfig configuration;
  @override
  final EntityId? ownerId;

  factory _$ReportTemplate([void Function(ReportTemplateBuilder)? updates]) =>
      (ReportTemplateBuilder()..update(updates))._build();

  _$ReportTemplate._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.customerId,
    required this.name,
    required this.format,
    required this.type,
    this.description,
    this.version,
    required this.configuration,
    this.ownerId,
  }) : super._();
  @override
  ReportTemplate rebuild(void Function(ReportTemplateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportTemplateBuilder toBuilder() => ReportTemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportTemplate &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        name == other.name &&
        format == other.format &&
        type == other.type &&
        description == other.description &&
        version == other.version &&
        configuration == other.configuration &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportTemplate')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('name', name)
          ..add('format', format)
          ..add('type', type)
          ..add('description', description)
          ..add('version', version)
          ..add('configuration', configuration)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class ReportTemplateBuilder
    implements Builder<ReportTemplate, ReportTemplateBuilder> {
  _$ReportTemplate? _$v;

  ReportTemplateIdBuilder? _id;
  ReportTemplateIdBuilder get id => _$this._id ??= ReportTemplateIdBuilder();
  set id(ReportTemplateIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  TbReportFormat? _format;
  TbReportFormat? get format => _$this._format;
  set format(TbReportFormat? format) => _$this._format = format;

  ReportTemplateType? _type;
  ReportTemplateType? get type => _$this._type;
  set type(ReportTemplateType? type) => _$this._type = type;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  ReportTemplateConfig? _configuration;
  ReportTemplateConfig? get configuration => _$this._configuration;
  set configuration(ReportTemplateConfig? configuration) =>
      _$this._configuration = configuration;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  ReportTemplateBuilder() {
    ReportTemplate._defaults(this);
  }

  ReportTemplateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _name = $v.name;
      _format = $v.format;
      _type = $v.type;
      _description = $v.description;
      _version = $v.version;
      _configuration = $v.configuration;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportTemplate other) {
    _$v = other as _$ReportTemplate;
  }

  @override
  void update(void Function(ReportTemplateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportTemplate build() => _build();

  _$ReportTemplate _build() {
    _$ReportTemplate _$result;
    try {
      _$result =
          _$v ??
          _$ReportTemplate._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'ReportTemplate',
              'name',
            ),
            format: BuiltValueNullFieldError.checkNotNull(
              format,
              r'ReportTemplate',
              'format',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ReportTemplate',
              'type',
            ),
            description: description,
            version: version,
            configuration: BuiltValueNullFieldError.checkNotNull(
              configuration,
              r'ReportTemplate',
              'configuration',
            ),
            ownerId: ownerId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'customerId';
        _customerId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReportTemplate',
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
