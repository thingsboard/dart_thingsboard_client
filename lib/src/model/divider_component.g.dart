// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'divider_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DividerComponent extends DividerComponent {
  @override
  final BorderType? borderType;
  @override
  final Insets? margins;
  @override
  final String? borderColor;
  @override
  final int? borderRadius;
  @override
  final String? color;
  @override
  final Insets? paddings;
  @override
  final String? background;
  @override
  final int? borderWidth;
  @override
  final int? widthPx;
  @override
  final BorderLength? length;
  @override
  final ReportComponentSubType subType;
  @override
  final ReportComponentType type;

  factory _$DividerComponent([
    void Function(DividerComponentBuilder)? updates,
  ]) => (DividerComponentBuilder()..update(updates))._build();

  _$DividerComponent._({
    this.borderType,
    this.margins,
    this.borderColor,
    this.borderRadius,
    this.color,
    this.paddings,
    this.background,
    this.borderWidth,
    this.widthPx,
    this.length,
    required this.subType,
    required this.type,
  }) : super._();
  @override
  DividerComponent rebuild(void Function(DividerComponentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DividerComponentBuilder toBuilder() =>
      DividerComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DividerComponent &&
        borderType == other.borderType &&
        margins == other.margins &&
        borderColor == other.borderColor &&
        borderRadius == other.borderRadius &&
        color == other.color &&
        paddings == other.paddings &&
        background == other.background &&
        borderWidth == other.borderWidth &&
        widthPx == other.widthPx &&
        length == other.length &&
        subType == other.subType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, borderType.hashCode);
    _$hash = $jc(_$hash, margins.hashCode);
    _$hash = $jc(_$hash, borderColor.hashCode);
    _$hash = $jc(_$hash, borderRadius.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, paddings.hashCode);
    _$hash = $jc(_$hash, background.hashCode);
    _$hash = $jc(_$hash, borderWidth.hashCode);
    _$hash = $jc(_$hash, widthPx.hashCode);
    _$hash = $jc(_$hash, length.hashCode);
    _$hash = $jc(_$hash, subType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DividerComponent')
          ..add('borderType', borderType)
          ..add('margins', margins)
          ..add('borderColor', borderColor)
          ..add('borderRadius', borderRadius)
          ..add('color', color)
          ..add('paddings', paddings)
          ..add('background', background)
          ..add('borderWidth', borderWidth)
          ..add('widthPx', widthPx)
          ..add('length', length)
          ..add('subType', subType)
          ..add('type', type))
        .toString();
  }
}

class DividerComponentBuilder
    implements
        Builder<DividerComponent, DividerComponentBuilder>,
        ReportComponentBuilder {
  _$DividerComponent? _$v;

  BorderType? _borderType;
  BorderType? get borderType => _$this._borderType;
  set borderType(covariant BorderType? borderType) =>
      _$this._borderType = borderType;

  InsetsBuilder? _margins;
  InsetsBuilder get margins => _$this._margins ??= InsetsBuilder();
  set margins(covariant InsetsBuilder? margins) => _$this._margins = margins;

  String? _borderColor;
  String? get borderColor => _$this._borderColor;
  set borderColor(covariant String? borderColor) =>
      _$this._borderColor = borderColor;

  int? _borderRadius;
  int? get borderRadius => _$this._borderRadius;
  set borderRadius(covariant int? borderRadius) =>
      _$this._borderRadius = borderRadius;

  String? _color;
  String? get color => _$this._color;
  set color(covariant String? color) => _$this._color = color;

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

  int? _widthPx;
  int? get widthPx => _$this._widthPx;
  set widthPx(covariant int? widthPx) => _$this._widthPx = widthPx;

  BorderLength? _length;
  BorderLength? get length => _$this._length;
  set length(covariant BorderLength? length) => _$this._length = length;

  ReportComponentSubType? _subType;
  ReportComponentSubType? get subType => _$this._subType;
  set subType(covariant ReportComponentSubType? subType) =>
      _$this._subType = subType;

  ReportComponentType? _type;
  ReportComponentType? get type => _$this._type;
  set type(covariant ReportComponentType? type) => _$this._type = type;

  DividerComponentBuilder() {
    DividerComponent._defaults(this);
  }

  DividerComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _borderType = $v.borderType;
      _margins = $v.margins?.toBuilder();
      _borderColor = $v.borderColor;
      _borderRadius = $v.borderRadius;
      _color = $v.color;
      _paddings = $v.paddings?.toBuilder();
      _background = $v.background;
      _borderWidth = $v.borderWidth;
      _widthPx = $v.widthPx;
      _length = $v.length;
      _subType = $v.subType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DividerComponent other) {
    _$v = other as _$DividerComponent;
  }

  @override
  void update(void Function(DividerComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DividerComponent build() => _build();

  _$DividerComponent _build() {
    _$DividerComponent _$result;
    try {
      _$result =
          _$v ??
          _$DividerComponent._(
            borderType: borderType,
            margins: _margins?.build(),
            borderColor: borderColor,
            borderRadius: borderRadius,
            color: color,
            paddings: _paddings?.build(),
            background: background,
            borderWidth: borderWidth,
            widthPx: widthPx,
            length: length,
            subType: BuiltValueNullFieldError.checkNotNull(
              subType,
              r'DividerComponent',
              'subType',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'DividerComponent',
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DividerComponent',
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
