// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heading_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HeadingComponent extends HeadingComponent {
  @override
  final Insets? margins;
  @override
  final String? borderColor;
  @override
  final String? color;
  @override
  final int? borderRadius;
  @override
  final Insets? paddings;
  @override
  final String? background;
  @override
  final int? borderWidth;
  @override
  final TextAlignment? textAlignment;
  @override
  final BuiltList<DataSource>? dataSources;
  @override
  final String? value;
  @override
  final VerticalAlignment? verticalAlignment;
  @override
  final Font? font;
  @override
  final int? height;
  @override
  final ReportComponentSubType? subType;
  @override
  final ReportComponentType type;

  factory _$HeadingComponent([
    void Function(HeadingComponentBuilder)? updates,
  ]) => (HeadingComponentBuilder()..update(updates))._build();

  _$HeadingComponent._({
    this.margins,
    this.borderColor,
    this.color,
    this.borderRadius,
    this.paddings,
    this.background,
    this.borderWidth,
    this.textAlignment,
    this.dataSources,
    this.value,
    this.verticalAlignment,
    this.font,
    this.height,
    this.subType,
    required this.type,
  }) : super._();
  @override
  HeadingComponent rebuild(void Function(HeadingComponentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HeadingComponentBuilder toBuilder() =>
      HeadingComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HeadingComponent &&
        margins == other.margins &&
        borderColor == other.borderColor &&
        color == other.color &&
        borderRadius == other.borderRadius &&
        paddings == other.paddings &&
        background == other.background &&
        borderWidth == other.borderWidth &&
        textAlignment == other.textAlignment &&
        dataSources == other.dataSources &&
        value == other.value &&
        verticalAlignment == other.verticalAlignment &&
        font == other.font &&
        height == other.height &&
        subType == other.subType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, margins.hashCode);
    _$hash = $jc(_$hash, borderColor.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, borderRadius.hashCode);
    _$hash = $jc(_$hash, paddings.hashCode);
    _$hash = $jc(_$hash, background.hashCode);
    _$hash = $jc(_$hash, borderWidth.hashCode);
    _$hash = $jc(_$hash, textAlignment.hashCode);
    _$hash = $jc(_$hash, dataSources.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, verticalAlignment.hashCode);
    _$hash = $jc(_$hash, font.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, subType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HeadingComponent')
          ..add('margins', margins)
          ..add('borderColor', borderColor)
          ..add('color', color)
          ..add('borderRadius', borderRadius)
          ..add('paddings', paddings)
          ..add('background', background)
          ..add('borderWidth', borderWidth)
          ..add('textAlignment', textAlignment)
          ..add('dataSources', dataSources)
          ..add('value', value)
          ..add('verticalAlignment', verticalAlignment)
          ..add('font', font)
          ..add('height', height)
          ..add('subType', subType)
          ..add('type', type))
        .toString();
  }
}

class HeadingComponentBuilder
    implements
        Builder<HeadingComponent, HeadingComponentBuilder>,
        ReportComponentBuilder {
  _$HeadingComponent? _$v;

  InsetsBuilder? _margins;
  InsetsBuilder get margins => _$this._margins ??= InsetsBuilder();
  set margins(covariant InsetsBuilder? margins) => _$this._margins = margins;

  String? _borderColor;
  String? get borderColor => _$this._borderColor;
  set borderColor(covariant String? borderColor) =>
      _$this._borderColor = borderColor;

  String? _color;
  String? get color => _$this._color;
  set color(covariant String? color) => _$this._color = color;

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

  TextAlignment? _textAlignment;
  TextAlignment? get textAlignment => _$this._textAlignment;
  set textAlignment(covariant TextAlignment? textAlignment) =>
      _$this._textAlignment = textAlignment;

  ListBuilder<DataSource>? _dataSources;
  ListBuilder<DataSource> get dataSources =>
      _$this._dataSources ??= ListBuilder<DataSource>();
  set dataSources(covariant ListBuilder<DataSource>? dataSources) =>
      _$this._dataSources = dataSources;

  String? _value;
  String? get value => _$this._value;
  set value(covariant String? value) => _$this._value = value;

  VerticalAlignment? _verticalAlignment;
  VerticalAlignment? get verticalAlignment => _$this._verticalAlignment;
  set verticalAlignment(covariant VerticalAlignment? verticalAlignment) =>
      _$this._verticalAlignment = verticalAlignment;

  FontBuilder? _font;
  FontBuilder get font => _$this._font ??= FontBuilder();
  set font(covariant FontBuilder? font) => _$this._font = font;

  int? _height;
  int? get height => _$this._height;
  set height(covariant int? height) => _$this._height = height;

  ReportComponentSubType? _subType;
  ReportComponentSubType? get subType => _$this._subType;
  set subType(covariant ReportComponentSubType? subType) =>
      _$this._subType = subType;

  ReportComponentType? _type;
  ReportComponentType? get type => _$this._type;
  set type(covariant ReportComponentType? type) => _$this._type = type;

  HeadingComponentBuilder() {
    HeadingComponent._defaults(this);
  }

  HeadingComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _margins = $v.margins?.toBuilder();
      _borderColor = $v.borderColor;
      _color = $v.color;
      _borderRadius = $v.borderRadius;
      _paddings = $v.paddings?.toBuilder();
      _background = $v.background;
      _borderWidth = $v.borderWidth;
      _textAlignment = $v.textAlignment;
      _dataSources = $v.dataSources?.toBuilder();
      _value = $v.value;
      _verticalAlignment = $v.verticalAlignment;
      _font = $v.font?.toBuilder();
      _height = $v.height;
      _subType = $v.subType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant HeadingComponent other) {
    _$v = other as _$HeadingComponent;
  }

  @override
  void update(void Function(HeadingComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HeadingComponent build() => _build();

  _$HeadingComponent _build() {
    _$HeadingComponent _$result;
    try {
      _$result =
          _$v ??
          _$HeadingComponent._(
            margins: _margins?.build(),
            borderColor: borderColor,
            color: color,
            borderRadius: borderRadius,
            paddings: _paddings?.build(),
            background: background,
            borderWidth: borderWidth,
            textAlignment: textAlignment,
            dataSources: _dataSources?.build(),
            value: value,
            verticalAlignment: verticalAlignment,
            font: _font?.build(),
            height: height,
            subType: subType,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'HeadingComponent',
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

        _$failedField = 'font';
        _font?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HeadingComponent',
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
