// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rich_text_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RichTextComponent extends RichTextComponent {
  @override
  final Insets? margins;
  @override
  final String? borderColor;
  @override
  final int? borderRadius;
  @override
  final Insets? paddings;
  @override
  final String? background;
  @override
  final int? borderWidth;
  @override
  final BuiltList<DataSource>? dataSources;
  @override
  final String? value;
  @override
  final ReportComponentSubType subType;
  @override
  final ReportComponentType type;

  factory _$RichTextComponent([
    void Function(RichTextComponentBuilder)? updates,
  ]) => (RichTextComponentBuilder()..update(updates))._build();

  _$RichTextComponent._({
    this.margins,
    this.borderColor,
    this.borderRadius,
    this.paddings,
    this.background,
    this.borderWidth,
    this.dataSources,
    this.value,
    required this.subType,
    required this.type,
  }) : super._();
  @override
  RichTextComponent rebuild(void Function(RichTextComponentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RichTextComponentBuilder toBuilder() =>
      RichTextComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RichTextComponent &&
        margins == other.margins &&
        borderColor == other.borderColor &&
        borderRadius == other.borderRadius &&
        paddings == other.paddings &&
        background == other.background &&
        borderWidth == other.borderWidth &&
        dataSources == other.dataSources &&
        value == other.value &&
        subType == other.subType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, margins.hashCode);
    _$hash = $jc(_$hash, borderColor.hashCode);
    _$hash = $jc(_$hash, borderRadius.hashCode);
    _$hash = $jc(_$hash, paddings.hashCode);
    _$hash = $jc(_$hash, background.hashCode);
    _$hash = $jc(_$hash, borderWidth.hashCode);
    _$hash = $jc(_$hash, dataSources.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, subType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RichTextComponent')
          ..add('margins', margins)
          ..add('borderColor', borderColor)
          ..add('borderRadius', borderRadius)
          ..add('paddings', paddings)
          ..add('background', background)
          ..add('borderWidth', borderWidth)
          ..add('dataSources', dataSources)
          ..add('value', value)
          ..add('subType', subType)
          ..add('type', type))
        .toString();
  }
}

class RichTextComponentBuilder
    implements
        Builder<RichTextComponent, RichTextComponentBuilder>,
        ReportComponentBuilder {
  _$RichTextComponent? _$v;

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

  ListBuilder<DataSource>? _dataSources;
  ListBuilder<DataSource> get dataSources =>
      _$this._dataSources ??= ListBuilder<DataSource>();
  set dataSources(covariant ListBuilder<DataSource>? dataSources) =>
      _$this._dataSources = dataSources;

  String? _value;
  String? get value => _$this._value;
  set value(covariant String? value) => _$this._value = value;

  ReportComponentSubType? _subType;
  ReportComponentSubType? get subType => _$this._subType;
  set subType(covariant ReportComponentSubType? subType) =>
      _$this._subType = subType;

  ReportComponentType? _type;
  ReportComponentType? get type => _$this._type;
  set type(covariant ReportComponentType? type) => _$this._type = type;

  RichTextComponentBuilder() {
    RichTextComponent._defaults(this);
  }

  RichTextComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _margins = $v.margins?.toBuilder();
      _borderColor = $v.borderColor;
      _borderRadius = $v.borderRadius;
      _paddings = $v.paddings?.toBuilder();
      _background = $v.background;
      _borderWidth = $v.borderWidth;
      _dataSources = $v.dataSources?.toBuilder();
      _value = $v.value;
      _subType = $v.subType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RichTextComponent other) {
    _$v = other as _$RichTextComponent;
  }

  @override
  void update(void Function(RichTextComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RichTextComponent build() => _build();

  _$RichTextComponent _build() {
    _$RichTextComponent _$result;
    try {
      _$result =
          _$v ??
          _$RichTextComponent._(
            margins: _margins?.build(),
            borderColor: borderColor,
            borderRadius: borderRadius,
            paddings: _paddings?.build(),
            background: background,
            borderWidth: borderWidth,
            dataSources: _dataSources?.build(),
            value: value,
            subType: BuiltValueNullFieldError.checkNotNull(
              subType,
              r'RichTextComponent',
              'subType',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'RichTextComponent',
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RichTextComponent',
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
