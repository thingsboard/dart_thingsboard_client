// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardComponent extends DashboardComponent {
  @override
  final Insets? margins;
  @override
  final String? borderColor;
  @override
  final int? customWidth;
  @override
  final int? borderRadius;
  @override
  final Insets? paddings;
  @override
  final String? background;
  @override
  final int? borderWidth;
  @override
  final ImageAlignment? alignment;
  @override
  final BuiltList<DataSource>? dataSources;
  @override
  final ImageWidthType? widthType;
  @override
  final DashboardReportConfig config;
  @override
  final ReportComponentSubType? subType;
  @override
  final ReportComponentType type;

  factory _$DashboardComponent([
    void Function(DashboardComponentBuilder)? updates,
  ]) => (DashboardComponentBuilder()..update(updates))._build();

  _$DashboardComponent._({
    this.margins,
    this.borderColor,
    this.customWidth,
    this.borderRadius,
    this.paddings,
    this.background,
    this.borderWidth,
    this.alignment,
    this.dataSources,
    this.widthType,
    required this.config,
    this.subType,
    required this.type,
  }) : super._();
  @override
  DashboardComponent rebuild(
    void Function(DashboardComponentBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DashboardComponentBuilder toBuilder() =>
      DashboardComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardComponent &&
        margins == other.margins &&
        borderColor == other.borderColor &&
        customWidth == other.customWidth &&
        borderRadius == other.borderRadius &&
        paddings == other.paddings &&
        background == other.background &&
        borderWidth == other.borderWidth &&
        alignment == other.alignment &&
        dataSources == other.dataSources &&
        widthType == other.widthType &&
        config == other.config &&
        subType == other.subType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, margins.hashCode);
    _$hash = $jc(_$hash, borderColor.hashCode);
    _$hash = $jc(_$hash, customWidth.hashCode);
    _$hash = $jc(_$hash, borderRadius.hashCode);
    _$hash = $jc(_$hash, paddings.hashCode);
    _$hash = $jc(_$hash, background.hashCode);
    _$hash = $jc(_$hash, borderWidth.hashCode);
    _$hash = $jc(_$hash, alignment.hashCode);
    _$hash = $jc(_$hash, dataSources.hashCode);
    _$hash = $jc(_$hash, widthType.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, subType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardComponent')
          ..add('margins', margins)
          ..add('borderColor', borderColor)
          ..add('customWidth', customWidth)
          ..add('borderRadius', borderRadius)
          ..add('paddings', paddings)
          ..add('background', background)
          ..add('borderWidth', borderWidth)
          ..add('alignment', alignment)
          ..add('dataSources', dataSources)
          ..add('widthType', widthType)
          ..add('config', config)
          ..add('subType', subType)
          ..add('type', type))
        .toString();
  }
}

class DashboardComponentBuilder
    implements
        Builder<DashboardComponent, DashboardComponentBuilder>,
        ReportComponentBuilder {
  _$DashboardComponent? _$v;

  InsetsBuilder? _margins;
  InsetsBuilder get margins => _$this._margins ??= InsetsBuilder();
  set margins(covariant InsetsBuilder? margins) => _$this._margins = margins;

  String? _borderColor;
  String? get borderColor => _$this._borderColor;
  set borderColor(covariant String? borderColor) =>
      _$this._borderColor = borderColor;

  int? _customWidth;
  int? get customWidth => _$this._customWidth;
  set customWidth(covariant int? customWidth) =>
      _$this._customWidth = customWidth;

  int? _borderRadius;
  int? get borderRadius => _$this._borderRadius;
  set borderRadius(covariant int? borderRadius) =>
      _$this._borderRadius = borderRadius;

  InsetsBuilder? _paddings;
  InsetsBuilder get paddings => _$this._paddings ??= InsetsBuilder();
  set paddings(covariant InsetsBuilder? paddings) =>
      _$this._paddings = paddings;

  String? _background;
  String? get background => _$this._background;
  set background(covariant String? background) =>
      _$this._background = background;

  int? _borderWidth;
  int? get borderWidth => _$this._borderWidth;
  set borderWidth(covariant int? borderWidth) =>
      _$this._borderWidth = borderWidth;

  ImageAlignment? _alignment;
  ImageAlignment? get alignment => _$this._alignment;
  set alignment(covariant ImageAlignment? alignment) =>
      _$this._alignment = alignment;

  ListBuilder<DataSource>? _dataSources;
  ListBuilder<DataSource> get dataSources =>
      _$this._dataSources ??= ListBuilder<DataSource>();
  set dataSources(covariant ListBuilder<DataSource>? dataSources) =>
      _$this._dataSources = dataSources;

  ImageWidthType? _widthType;
  ImageWidthType? get widthType => _$this._widthType;
  set widthType(covariant ImageWidthType? widthType) =>
      _$this._widthType = widthType;

  DashboardReportConfigBuilder? _config;
  DashboardReportConfigBuilder get config =>
      _$this._config ??= DashboardReportConfigBuilder();
  set config(covariant DashboardReportConfigBuilder? config) =>
      _$this._config = config;

  ReportComponentSubType? _subType;
  ReportComponentSubType? get subType => _$this._subType;
  set subType(covariant ReportComponentSubType? subType) =>
      _$this._subType = subType;

  ReportComponentType? _type;
  ReportComponentType? get type => _$this._type;
  set type(covariant ReportComponentType? type) => _$this._type = type;

  DashboardComponentBuilder() {
    DashboardComponent._defaults(this);
  }

  DashboardComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _margins = $v.margins?.toBuilder();
      _borderColor = $v.borderColor;
      _customWidth = $v.customWidth;
      _borderRadius = $v.borderRadius;
      _paddings = $v.paddings?.toBuilder();
      _background = $v.background;
      _borderWidth = $v.borderWidth;
      _alignment = $v.alignment;
      _dataSources = $v.dataSources?.toBuilder();
      _widthType = $v.widthType;
      _config = $v.config.toBuilder();
      _subType = $v.subType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DashboardComponent other) {
    _$v = other as _$DashboardComponent;
  }

  @override
  void update(void Function(DashboardComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardComponent build() => _build();

  _$DashboardComponent _build() {
    _$DashboardComponent _$result;
    try {
      _$result =
          _$v ??
          _$DashboardComponent._(
            margins: _margins?.build(),
            borderColor: borderColor,
            customWidth: customWidth,
            borderRadius: borderRadius,
            paddings: _paddings?.build(),
            background: background,
            borderWidth: borderWidth,
            alignment: alignment,
            dataSources: _dataSources?.build(),
            widthType: widthType,
            config: config.build(),
            subType: subType,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'DashboardComponent',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'margins';
        _margins?.build();

        _$failedField = 'paddings';
        _paddings?.build();

        _$failedField = 'dataSources';
        _dataSources?.build();

        _$failedField = 'config';
        config.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DashboardComponent',
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
