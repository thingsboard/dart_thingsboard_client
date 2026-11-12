// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'font.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Font extends Font {
  @override
  final double? size;
  @override
  final TbFontWeight? weight;
  @override
  final TbFontStyle? style;
  @override
  final String? family;

  factory _$Font([void Function(FontBuilder)? updates]) =>
      (FontBuilder()..update(updates))._build();

  _$Font._({this.size, this.weight, this.style, this.family}) : super._();
  @override
  Font rebuild(void Function(FontBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FontBuilder toBuilder() => FontBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Font &&
        size == other.size &&
        weight == other.weight &&
        style == other.style &&
        family == other.family;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jc(_$hash, style.hashCode);
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Font')
          ..add('size', size)
          ..add('weight', weight)
          ..add('style', style)
          ..add('family', family))
        .toString();
  }
}

class FontBuilder implements Builder<Font, FontBuilder> {
  _$Font? _$v;

  double? _size;
  double? get size => _$this._size;
  set size(double? size) => _$this._size = size;

  TbFontWeight? _weight;
  TbFontWeight? get weight => _$this._weight;
  set weight(TbFontWeight? weight) => _$this._weight = weight;

  TbFontStyle? _style;
  TbFontStyle? get style => _$this._style;
  set style(TbFontStyle? style) => _$this._style = style;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  FontBuilder() {
    Font._defaults(this);
  }

  FontBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _size = $v.size;
      _weight = $v.weight;
      _style = $v.style;
      _family = $v.family;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Font other) {
    _$v = other as _$Font;
  }

  @override
  void update(void Function(FontBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Font build() => _build();

  _$Font _build() {
    final _$result =
        _$v ??
        _$Font._(size: size, weight: weight, style: style, family: family);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
