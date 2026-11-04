// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heading.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Heading extends Heading {
  @override
  final String? text;
  @override
  final Font? font;
  @override
  final String? color;
  @override
  final TextAlignment? textAlignment;
  @override
  final VerticalAlignment? verticalAlignment;
  @override
  final int? height;

  factory _$Heading([void Function(HeadingBuilder)? updates]) =>
      (HeadingBuilder()..update(updates))._build();

  _$Heading._({
    this.text,
    this.font,
    this.color,
    this.textAlignment,
    this.verticalAlignment,
    this.height,
  }) : super._();
  @override
  Heading rebuild(void Function(HeadingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HeadingBuilder toBuilder() => HeadingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Heading &&
        text == other.text &&
        font == other.font &&
        color == other.color &&
        textAlignment == other.textAlignment &&
        verticalAlignment == other.verticalAlignment &&
        height == other.height;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, font.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, textAlignment.hashCode);
    _$hash = $jc(_$hash, verticalAlignment.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Heading')
          ..add('text', text)
          ..add('font', font)
          ..add('color', color)
          ..add('textAlignment', textAlignment)
          ..add('verticalAlignment', verticalAlignment)
          ..add('height', height))
        .toString();
  }
}

class HeadingBuilder implements Builder<Heading, HeadingBuilder> {
  _$Heading? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  FontBuilder? _font;
  FontBuilder get font => _$this._font ??= FontBuilder();
  set font(FontBuilder? font) => _$this._font = font;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  TextAlignment? _textAlignment;
  TextAlignment? get textAlignment => _$this._textAlignment;
  set textAlignment(TextAlignment? textAlignment) =>
      _$this._textAlignment = textAlignment;

  VerticalAlignment? _verticalAlignment;
  VerticalAlignment? get verticalAlignment => _$this._verticalAlignment;
  set verticalAlignment(VerticalAlignment? verticalAlignment) =>
      _$this._verticalAlignment = verticalAlignment;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  HeadingBuilder() {
    Heading._defaults(this);
  }

  HeadingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _font = $v.font?.toBuilder();
      _color = $v.color;
      _textAlignment = $v.textAlignment;
      _verticalAlignment = $v.verticalAlignment;
      _height = $v.height;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Heading other) {
    _$v = other as _$Heading;
  }

  @override
  void update(void Function(HeadingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Heading build() => _build();

  _$Heading _build() {
    _$Heading _$result;
    try {
      _$result =
          _$v ??
          _$Heading._(
            text: text,
            font: _font?.build(),
            color: color,
            textAlignment: textAlignment,
            verticalAlignment: verticalAlignment,
            height: height,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'font';
        _font?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Heading',
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
