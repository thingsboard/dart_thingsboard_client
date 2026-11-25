// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cell_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CellSettings extends CellSettings {
  @override
  final Font? font;
  @override
  final String? color;
  @override
  final String? backgroundColor;
  @override
  final TextAlignment? textAlignment;
  @override
  final VerticalAlignment? verticalAlignment;
  @override
  final BorderType? borderType;
  @override
  final int? borderWidth;
  @override
  final String? borderColor;

  factory _$CellSettings([void Function(CellSettingsBuilder)? updates]) =>
      (CellSettingsBuilder()..update(updates))._build();

  _$CellSettings._({
    this.font,
    this.color,
    this.backgroundColor,
    this.textAlignment,
    this.verticalAlignment,
    this.borderType,
    this.borderWidth,
    this.borderColor,
  }) : super._();
  @override
  CellSettings rebuild(void Function(CellSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CellSettingsBuilder toBuilder() => CellSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CellSettings &&
        font == other.font &&
        color == other.color &&
        backgroundColor == other.backgroundColor &&
        textAlignment == other.textAlignment &&
        verticalAlignment == other.verticalAlignment &&
        borderType == other.borderType &&
        borderWidth == other.borderWidth &&
        borderColor == other.borderColor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, font.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, backgroundColor.hashCode);
    _$hash = $jc(_$hash, textAlignment.hashCode);
    _$hash = $jc(_$hash, verticalAlignment.hashCode);
    _$hash = $jc(_$hash, borderType.hashCode);
    _$hash = $jc(_$hash, borderWidth.hashCode);
    _$hash = $jc(_$hash, borderColor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CellSettings')
          ..add('font', font)
          ..add('color', color)
          ..add('backgroundColor', backgroundColor)
          ..add('textAlignment', textAlignment)
          ..add('verticalAlignment', verticalAlignment)
          ..add('borderType', borderType)
          ..add('borderWidth', borderWidth)
          ..add('borderColor', borderColor))
        .toString();
  }
}

class CellSettingsBuilder
    implements Builder<CellSettings, CellSettingsBuilder> {
  _$CellSettings? _$v;

  FontBuilder? _font;
  FontBuilder get font => _$this._font ??= FontBuilder();
  set font(FontBuilder? font) => _$this._font = font;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _backgroundColor;
  String? get backgroundColor => _$this._backgroundColor;
  set backgroundColor(String? backgroundColor) =>
      _$this._backgroundColor = backgroundColor;

  TextAlignment? _textAlignment;
  TextAlignment? get textAlignment => _$this._textAlignment;
  set textAlignment(TextAlignment? textAlignment) =>
      _$this._textAlignment = textAlignment;

  VerticalAlignment? _verticalAlignment;
  VerticalAlignment? get verticalAlignment => _$this._verticalAlignment;
  set verticalAlignment(VerticalAlignment? verticalAlignment) =>
      _$this._verticalAlignment = verticalAlignment;

  BorderType? _borderType;
  BorderType? get borderType => _$this._borderType;
  set borderType(BorderType? borderType) => _$this._borderType = borderType;

  int? _borderWidth;
  int? get borderWidth => _$this._borderWidth;
  set borderWidth(int? borderWidth) => _$this._borderWidth = borderWidth;

  String? _borderColor;
  String? get borderColor => _$this._borderColor;
  set borderColor(String? borderColor) => _$this._borderColor = borderColor;

  CellSettingsBuilder() {
    CellSettings._defaults(this);
  }

  CellSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _font = $v.font?.toBuilder();
      _color = $v.color;
      _backgroundColor = $v.backgroundColor;
      _textAlignment = $v.textAlignment;
      _verticalAlignment = $v.verticalAlignment;
      _borderType = $v.borderType;
      _borderWidth = $v.borderWidth;
      _borderColor = $v.borderColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CellSettings other) {
    _$v = other as _$CellSettings;
  }

  @override
  void update(void Function(CellSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CellSettings build() => _build();

  _$CellSettings _build() {
    _$CellSettings _$result;
    try {
      _$result =
          _$v ??
          _$CellSettings._(
            font: _font?.build(),
            color: color,
            backgroundColor: backgroundColor,
            textAlignment: textAlignment,
            verticalAlignment: verticalAlignment,
            borderType: borderType,
            borderWidth: borderWidth,
            borderColor: borderColor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'font';
        _font?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CellSettings',
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
