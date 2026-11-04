// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_fill_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChartFillSettings extends ChartFillSettings {
  @override
  final ChartFillType? type;
  @override
  final double? opacity;
  @override
  final ChartFillSettingsGradient? gradient;

  factory _$ChartFillSettings([
    void Function(ChartFillSettingsBuilder)? updates,
  ]) => (ChartFillSettingsBuilder()..update(updates))._build();

  _$ChartFillSettings._({this.type, this.opacity, this.gradient}) : super._();
  @override
  ChartFillSettings rebuild(void Function(ChartFillSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChartFillSettingsBuilder toBuilder() =>
      ChartFillSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChartFillSettings &&
        type == other.type &&
        opacity == other.opacity &&
        gradient == other.gradient;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, opacity.hashCode);
    _$hash = $jc(_$hash, gradient.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChartFillSettings')
          ..add('type', type)
          ..add('opacity', opacity)
          ..add('gradient', gradient))
        .toString();
  }
}

class ChartFillSettingsBuilder
    implements Builder<ChartFillSettings, ChartFillSettingsBuilder> {
  _$ChartFillSettings? _$v;

  ChartFillType? _type;
  ChartFillType? get type => _$this._type;
  set type(ChartFillType? type) => _$this._type = type;

  double? _opacity;
  double? get opacity => _$this._opacity;
  set opacity(double? opacity) => _$this._opacity = opacity;

  ChartFillSettingsGradientBuilder? _gradient;
  ChartFillSettingsGradientBuilder get gradient =>
      _$this._gradient ??= ChartFillSettingsGradientBuilder();
  set gradient(ChartFillSettingsGradientBuilder? gradient) =>
      _$this._gradient = gradient;

  ChartFillSettingsBuilder() {
    ChartFillSettings._defaults(this);
  }

  ChartFillSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _opacity = $v.opacity;
      _gradient = $v.gradient?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChartFillSettings other) {
    _$v = other as _$ChartFillSettings;
  }

  @override
  void update(void Function(ChartFillSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChartFillSettings build() => _build();

  _$ChartFillSettings _build() {
    _$ChartFillSettings _$result;
    try {
      _$result =
          _$v ??
          _$ChartFillSettings._(
            type: type,
            opacity: opacity,
            gradient: _gradient?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'gradient';
        _gradient?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChartFillSettings',
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
