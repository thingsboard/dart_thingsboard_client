// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ColorRange extends ColorRange {
  @override
  final double? from;
  @override
  final double? to;
  @override
  final String? color;

  factory _$ColorRange([void Function(ColorRangeBuilder)? updates]) =>
      (ColorRangeBuilder()..update(updates))._build();

  _$ColorRange._({this.from, this.to, this.color}) : super._();
  @override
  ColorRange rebuild(void Function(ColorRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ColorRangeBuilder toBuilder() => ColorRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ColorRange &&
        from == other.from &&
        to == other.to &&
        color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ColorRange')
          ..add('from', from)
          ..add('to', to)
          ..add('color', color))
        .toString();
  }
}

class ColorRangeBuilder implements Builder<ColorRange, ColorRangeBuilder> {
  _$ColorRange? _$v;

  double? _from;
  double? get from => _$this._from;
  set from(double? from) => _$this._from = from;

  double? _to;
  double? get to => _$this._to;
  set to(double? to) => _$this._to = to;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  ColorRangeBuilder() {
    ColorRange._defaults(this);
  }

  ColorRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ColorRange other) {
    _$v = other as _$ColorRange;
  }

  @override
  void update(void Function(ColorRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ColorRange build() => _build();

  _$ColorRange _build() {
    final _$result = _$v ?? _$ColorRange._(from: from, to: to, color: color);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
