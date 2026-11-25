// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'palette_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaletteSettings extends PaletteSettings {
  @override
  final Palette? primaryPalette;
  @override
  final Palette? accentPalette;

  factory _$PaletteSettings([void Function(PaletteSettingsBuilder)? updates]) =>
      (PaletteSettingsBuilder()..update(updates))._build();

  _$PaletteSettings._({this.primaryPalette, this.accentPalette}) : super._();
  @override
  PaletteSettings rebuild(void Function(PaletteSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaletteSettingsBuilder toBuilder() => PaletteSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaletteSettings &&
        primaryPalette == other.primaryPalette &&
        accentPalette == other.accentPalette;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, primaryPalette.hashCode);
    _$hash = $jc(_$hash, accentPalette.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaletteSettings')
          ..add('primaryPalette', primaryPalette)
          ..add('accentPalette', accentPalette))
        .toString();
  }
}

class PaletteSettingsBuilder
    implements Builder<PaletteSettings, PaletteSettingsBuilder> {
  _$PaletteSettings? _$v;

  PaletteBuilder? _primaryPalette;
  PaletteBuilder get primaryPalette =>
      _$this._primaryPalette ??= PaletteBuilder();
  set primaryPalette(PaletteBuilder? primaryPalette) =>
      _$this._primaryPalette = primaryPalette;

  PaletteBuilder? _accentPalette;
  PaletteBuilder get accentPalette =>
      _$this._accentPalette ??= PaletteBuilder();
  set accentPalette(PaletteBuilder? accentPalette) =>
      _$this._accentPalette = accentPalette;

  PaletteSettingsBuilder() {
    PaletteSettings._defaults(this);
  }

  PaletteSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _primaryPalette = $v.primaryPalette?.toBuilder();
      _accentPalette = $v.accentPalette?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaletteSettings other) {
    _$v = other as _$PaletteSettings;
  }

  @override
  void update(void Function(PaletteSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaletteSettings build() => _build();

  _$PaletteSettings _build() {
    _$PaletteSettings _$result;
    try {
      _$result =
          _$v ??
          _$PaletteSettings._(
            primaryPalette: _primaryPalette?.build(),
            accentPalette: _accentPalette?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'primaryPalette';
        _primaryPalette?.build();
        _$failedField = 'accentPalette';
        _accentPalette?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PaletteSettings',
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
