// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdf_report_template_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PdfReportTemplateConfig extends PdfReportTemplateConfig {
  @override
  final PageOrientation? pageOrientation;
  @override
  final HeaderFooter? footer;
  @override
  final String? pageBackground;
  @override
  final Insets? pageMargins;
  @override
  final HeaderFooter? header;
  @override
  final PageSize? pageSize;
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

  factory _$PdfReportTemplateConfig([
    void Function(PdfReportTemplateConfigBuilder)? updates,
  ]) => (PdfReportTemplateConfigBuilder()..update(updates))._build();

  _$PdfReportTemplateConfig._({
    this.pageOrientation,
    this.footer,
    this.pageBackground,
    this.pageMargins,
    this.header,
    this.pageSize,
    this.namePattern,
    this.timeDataPattern,
    required this.format,
    this.entityAliases,
    this.filters,
    this.components,
  }) : super._();
  @override
  PdfReportTemplateConfig rebuild(
    void Function(PdfReportTemplateConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PdfReportTemplateConfigBuilder toBuilder() =>
      PdfReportTemplateConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PdfReportTemplateConfig &&
        pageOrientation == other.pageOrientation &&
        footer == other.footer &&
        pageBackground == other.pageBackground &&
        pageMargins == other.pageMargins &&
        header == other.header &&
        pageSize == other.pageSize &&
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
    _$hash = $jc(_$hash, pageOrientation.hashCode);
    _$hash = $jc(_$hash, footer.hashCode);
    _$hash = $jc(_$hash, pageBackground.hashCode);
    _$hash = $jc(_$hash, pageMargins.hashCode);
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
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
    return (newBuiltValueToStringHelper(r'PdfReportTemplateConfig')
          ..add('pageOrientation', pageOrientation)
          ..add('footer', footer)
          ..add('pageBackground', pageBackground)
          ..add('pageMargins', pageMargins)
          ..add('header', header)
          ..add('pageSize', pageSize)
          ..add('namePattern', namePattern)
          ..add('timeDataPattern', timeDataPattern)
          ..add('format', format)
          ..add('entityAliases', entityAliases)
          ..add('filters', filters)
          ..add('components', components))
        .toString();
  }
}

class PdfReportTemplateConfigBuilder
    implements
        Builder<PdfReportTemplateConfig, PdfReportTemplateConfigBuilder>,
        ReportTemplateConfigBuilder {
  _$PdfReportTemplateConfig? _$v;

  PageOrientation? _pageOrientation;
  PageOrientation? get pageOrientation => _$this._pageOrientation;
  set pageOrientation(covariant PageOrientation? pageOrientation) =>
      _$this._pageOrientation = pageOrientation;

  HeaderFooterBuilder? _footer;
  HeaderFooterBuilder get footer => _$this._footer ??= HeaderFooterBuilder();
  set footer(covariant HeaderFooterBuilder? footer) => _$this._footer = footer;

  String? _pageBackground;
  String? get pageBackground => _$this._pageBackground;
  set pageBackground(covariant String? pageBackground) =>
      _$this._pageBackground = pageBackground;

  InsetsBuilder? _pageMargins;
  InsetsBuilder get pageMargins => _$this._pageMargins ??= InsetsBuilder();
  set pageMargins(covariant InsetsBuilder? pageMargins) =>
      _$this._pageMargins = pageMargins;

  HeaderFooterBuilder? _header;
  HeaderFooterBuilder get header => _$this._header ??= HeaderFooterBuilder();
  set header(covariant HeaderFooterBuilder? header) => _$this._header = header;

  PageSize? _pageSize;
  PageSize? get pageSize => _$this._pageSize;
  set pageSize(covariant PageSize? pageSize) => _$this._pageSize = pageSize;

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

  PdfReportTemplateConfigBuilder() {
    PdfReportTemplateConfig._defaults(this);
  }

  PdfReportTemplateConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pageOrientation = $v.pageOrientation;
      _footer = $v.footer?.toBuilder();
      _pageBackground = $v.pageBackground;
      _pageMargins = $v.pageMargins?.toBuilder();
      _header = $v.header?.toBuilder();
      _pageSize = $v.pageSize;
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
  void replace(covariant PdfReportTemplateConfig other) {
    _$v = other as _$PdfReportTemplateConfig;
  }

  @override
  void update(void Function(PdfReportTemplateConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PdfReportTemplateConfig build() => _build();

  _$PdfReportTemplateConfig _build() {
    _$PdfReportTemplateConfig _$result;
    try {
      _$result =
          _$v ??
          _$PdfReportTemplateConfig._(
            pageOrientation: pageOrientation,
            footer: _footer?.build(),
            pageBackground: pageBackground,
            pageMargins: _pageMargins?.build(),
            header: _header?.build(),
            pageSize: pageSize,
            namePattern: namePattern,
            timeDataPattern: timeDataPattern,
            format: BuiltValueNullFieldError.checkNotNull(
              format,
              r'PdfReportTemplateConfig',
              'format',
            ),
            entityAliases: _entityAliases?.build(),
            filters: _filters?.build(),
            components: _components?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'footer';
        _footer?.build();

        _$failedField = 'pageMargins';
        _pageMargins?.build();
        _$failedField = 'header';
        _header?.build();

        _$failedField = 'entityAliases';
        _entityAliases?.build();
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'components';
        _components?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PdfReportTemplateConfig',
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
