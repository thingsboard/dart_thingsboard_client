// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_template_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class ReportTemplateConfigBuilder {
  void replace(ReportTemplateConfig other);
  void update(void Function(ReportTemplateConfigBuilder) updates);
  String? get namePattern;
  set namePattern(String? namePattern);

  String? get timeDataPattern;
  set timeDataPattern(String? timeDataPattern);

  TbReportFormat? get format;
  set format(TbReportFormat? format);

  ListBuilder<EntityAlias> get entityAliases;
  set entityAliases(ListBuilder<EntityAlias>? entityAliases);

  ListBuilder<Filter> get filters;
  set filters(ListBuilder<Filter>? filters);

  ListBuilder<ReportComponent> get components;
  set components(ListBuilder<ReportComponent>? components);
}

class _$$ReportTemplateConfig extends $ReportTemplateConfig {
  @override
  final String? namePattern;
  @override
  final String? timeDataPattern;
  @override
  final TbReportFormat format;
  @override
  final BuiltList<EntityAlias>? entityAliases;
  @override
  final BuiltList<Filter>? filters;
  @override
  final BuiltList<ReportComponent>? components;

  factory _$$ReportTemplateConfig([
    void Function($ReportTemplateConfigBuilder)? updates,
  ]) => ($ReportTemplateConfigBuilder()..update(updates))._build();

  _$$ReportTemplateConfig._({
    this.namePattern,
    this.timeDataPattern,
    required this.format,
    this.entityAliases,
    this.filters,
    this.components,
  }) : super._();
  @override
  $ReportTemplateConfig rebuild(
    void Function($ReportTemplateConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $ReportTemplateConfigBuilder toBuilder() =>
      $ReportTemplateConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $ReportTemplateConfig &&
        namePattern == other.namePattern &&
        timeDataPattern == other.timeDataPattern &&
        format == other.format &&
        entityAliases == other.entityAliases &&
        filters == other.filters &&
        components == other.components;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, namePattern.hashCode);
    _$hash = $jc(_$hash, timeDataPattern.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, entityAliases.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$ReportTemplateConfig')
          ..add('namePattern', namePattern)
          ..add('timeDataPattern', timeDataPattern)
          ..add('format', format)
          ..add('entityAliases', entityAliases)
          ..add('filters', filters)
          ..add('components', components))
        .toString();
  }
}

class $ReportTemplateConfigBuilder
    implements
        Builder<$ReportTemplateConfig, $ReportTemplateConfigBuilder>,
        ReportTemplateConfigBuilder {
  _$$ReportTemplateConfig? _$v;

  String? _namePattern;
  String? get namePattern => _$this._namePattern;
  set namePattern(covariant String? namePattern) =>
      _$this._namePattern = namePattern;

  String? _timeDataPattern;
  String? get timeDataPattern => _$this._timeDataPattern;
  set timeDataPattern(covariant String? timeDataPattern) =>
      _$this._timeDataPattern = timeDataPattern;

  TbReportFormat? _format;
  TbReportFormat? get format => _$this._format;
  set format(covariant TbReportFormat? format) => _$this._format = format;

  ListBuilder<EntityAlias>? _entityAliases;
  ListBuilder<EntityAlias> get entityAliases =>
      _$this._entityAliases ??= ListBuilder<EntityAlias>();
  set entityAliases(covariant ListBuilder<EntityAlias>? entityAliases) =>
      _$this._entityAliases = entityAliases;

  ListBuilder<Filter>? _filters;
  ListBuilder<Filter> get filters => _$this._filters ??= ListBuilder<Filter>();
  set filters(covariant ListBuilder<Filter>? filters) =>
      _$this._filters = filters;

  ListBuilder<ReportComponent>? _components;
  ListBuilder<ReportComponent> get components =>
      _$this._components ??= ListBuilder<ReportComponent>();
  set components(covariant ListBuilder<ReportComponent>? components) =>
      _$this._components = components;

  $ReportTemplateConfigBuilder() {
    $ReportTemplateConfig._defaults(this);
  }

  $ReportTemplateConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _namePattern = $v.namePattern;
      _timeDataPattern = $v.timeDataPattern;
      _format = $v.format;
      _entityAliases = $v.entityAliases?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _components = $v.components?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $ReportTemplateConfig other) {
    _$v = other as _$$ReportTemplateConfig;
  }

  @override
  void update(void Function($ReportTemplateConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $ReportTemplateConfig build() => _build();

  _$$ReportTemplateConfig _build() {
    _$$ReportTemplateConfig _$result;
    try {
      _$result =
          _$v ??
          _$$ReportTemplateConfig._(
            namePattern: namePattern,
            timeDataPattern: timeDataPattern,
            format: BuiltValueNullFieldError.checkNotNull(
              format,
              r'$ReportTemplateConfig',
              'format',
            ),
            entityAliases: _entityAliases?.build(),
            filters: _filters?.build(),
            components: _components?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entityAliases';
        _entityAliases?.build();
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'components';
        _components?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'$ReportTemplateConfig',
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
