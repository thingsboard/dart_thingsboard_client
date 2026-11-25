// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'palette.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Palette extends Palette {
  @override
  final String? type;
  @override
  final String? extends_;
  @override
  final BuiltMap<String, String>? colors;

  factory _$Palette([void Function(PaletteBuilder)? updates]) =>
      (PaletteBuilder()..update(updates))._build();

  _$Palette._({this.type, this.extends_, this.colors}) : super._();
  @override
  Palette rebuild(void Function(PaletteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaletteBuilder toBuilder() => PaletteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Palette &&
        type == other.type &&
        extends_ == other.extends_ &&
        colors == other.colors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, extends_.hashCode);
    _$hash = $jc(_$hash, colors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Palette')
          ..add('type', type)
          ..add('extends_', extends_)
          ..add('colors', colors))
        .toString();
  }
}

class PaletteBuilder implements Builder<Palette, PaletteBuilder> {
  _$Palette? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _extends_;
  String? get extends_ => _$this._extends_;
  set extends_(String? extends_) => _$this._extends_ = extends_;

  MapBuilder<String, String>? _colors;
  MapBuilder<String, String> get colors =>
      _$this._colors ??= MapBuilder<String, String>();
  set colors(MapBuilder<String, String>? colors) => _$this._colors = colors;

  PaletteBuilder() {
    Palette._defaults(this);
  }

  PaletteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _extends_ = $v.extends_;
      _colors = $v.colors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Palette other) {
    _$v = other as _$Palette;
  }

  @override
  void update(void Function(PaletteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Palette build() => _build();

  _$Palette _build() {
    _$Palette _$result;
    try {
      _$result =
          _$v ??
          _$Palette._(type: type, extends_: extends_, colors: _colors?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'colors';
        _colors?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Palette',
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
