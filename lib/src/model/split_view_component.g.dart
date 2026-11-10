// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'split_view_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SplitViewComponent extends SplitViewComponent {
  @override
  final VerticalAlignment? leftVerticalAlignment;
  @override
  final Insets? margins;
  @override
  final ReportComponent? leftView;
  @override
  final VerticalAlignment? rightVerticalAlignment;
  @override
  final String? borderColor;
  @override
  final int? borderRadius;
  @override
  final Insets? paddings;
  @override
  final int? splitGap;
  @override
  final String? background;
  @override
  final int? borderWidth;
  @override
  final ReportComponent? rightView;
  @override
  final double? splitPosition;
  @override
  final ReportComponentSubType? subType;
  @override
  final ReportComponentType type;

  factory _$SplitViewComponent([
    void Function(SplitViewComponentBuilder)? updates,
  ]) => (SplitViewComponentBuilder()..update(updates))._build();

  _$SplitViewComponent._({
    this.leftVerticalAlignment,
    this.margins,
    this.leftView,
    this.rightVerticalAlignment,
    this.borderColor,
    this.borderRadius,
    this.paddings,
    this.splitGap,
    this.background,
    this.borderWidth,
    this.rightView,
    this.splitPosition,
    this.subType,
    required this.type,
  }) : super._();
  @override
  SplitViewComponent rebuild(
    void Function(SplitViewComponentBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SplitViewComponentBuilder toBuilder() =>
      SplitViewComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SplitViewComponent &&
        leftVerticalAlignment == other.leftVerticalAlignment &&
        margins == other.margins &&
        leftView == other.leftView &&
        rightVerticalAlignment == other.rightVerticalAlignment &&
        borderColor == other.borderColor &&
        borderRadius == other.borderRadius &&
        paddings == other.paddings &&
        splitGap == other.splitGap &&
        background == other.background &&
        borderWidth == other.borderWidth &&
        rightView == other.rightView &&
        splitPosition == other.splitPosition &&
        subType == other.subType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, leftVerticalAlignment.hashCode);
    _$hash = $jc(_$hash, margins.hashCode);
    _$hash = $jc(_$hash, leftView.hashCode);
    _$hash = $jc(_$hash, rightVerticalAlignment.hashCode);
    _$hash = $jc(_$hash, borderColor.hashCode);
    _$hash = $jc(_$hash, borderRadius.hashCode);
    _$hash = $jc(_$hash, paddings.hashCode);
    _$hash = $jc(_$hash, splitGap.hashCode);
    _$hash = $jc(_$hash, background.hashCode);
    _$hash = $jc(_$hash, borderWidth.hashCode);
    _$hash = $jc(_$hash, rightView.hashCode);
    _$hash = $jc(_$hash, splitPosition.hashCode);
    _$hash = $jc(_$hash, subType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SplitViewComponent')
          ..add('leftVerticalAlignment', leftVerticalAlignment)
          ..add('margins', margins)
          ..add('leftView', leftView)
          ..add('rightVerticalAlignment', rightVerticalAlignment)
          ..add('borderColor', borderColor)
          ..add('borderRadius', borderRadius)
          ..add('paddings', paddings)
          ..add('splitGap', splitGap)
          ..add('background', background)
          ..add('borderWidth', borderWidth)
          ..add('rightView', rightView)
          ..add('splitPosition', splitPosition)
          ..add('subType', subType)
          ..add('type', type))
        .toString();
  }
}

class SplitViewComponentBuilder
    implements
        Builder<SplitViewComponent, SplitViewComponentBuilder>,
        ReportComponentBuilder {
  _$SplitViewComponent? _$v;

  VerticalAlignment? _leftVerticalAlignment;
  VerticalAlignment? get leftVerticalAlignment => _$this._leftVerticalAlignment;
  set leftVerticalAlignment(
    covariant VerticalAlignment? leftVerticalAlignment,
  ) => _$this._leftVerticalAlignment = leftVerticalAlignment;

  InsetsBuilder? _margins;
  InsetsBuilder get margins => _$this._margins ??= InsetsBuilder();
  set margins(covariant InsetsBuilder? margins) => _$this._margins = margins;

  ReportComponent? _leftView;
  ReportComponent? get leftView => _$this._leftView;
  set leftView(covariant ReportComponent? leftView) =>
      _$this._leftView = leftView;

  VerticalAlignment? _rightVerticalAlignment;
  VerticalAlignment? get rightVerticalAlignment =>
      _$this._rightVerticalAlignment;
  set rightVerticalAlignment(
    covariant VerticalAlignment? rightVerticalAlignment,
  ) => _$this._rightVerticalAlignment = rightVerticalAlignment;

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

  int? _splitGap;
  int? get splitGap => _$this._splitGap;
  set splitGap(covariant int? splitGap) => _$this._splitGap = splitGap;

  String? _background;
  String? get background => _$this._background;
  set background(covariant String? background) =>
      _$this._background = background;

  int? _borderWidth;
  int? get borderWidth => _$this._borderWidth;
  set borderWidth(covariant int? borderWidth) =>
      _$this._borderWidth = borderWidth;

  ReportComponent? _rightView;
  ReportComponent? get rightView => _$this._rightView;
  set rightView(covariant ReportComponent? rightView) =>
      _$this._rightView = rightView;

  double? _splitPosition;
  double? get splitPosition => _$this._splitPosition;
  set splitPosition(covariant double? splitPosition) =>
      _$this._splitPosition = splitPosition;

  ReportComponentSubType? _subType;
  ReportComponentSubType? get subType => _$this._subType;
  set subType(covariant ReportComponentSubType? subType) =>
      _$this._subType = subType;

  ReportComponentType? _type;
  ReportComponentType? get type => _$this._type;
  set type(covariant ReportComponentType? type) => _$this._type = type;

  SplitViewComponentBuilder() {
    SplitViewComponent._defaults(this);
  }

  SplitViewComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _leftVerticalAlignment = $v.leftVerticalAlignment;
      _margins = $v.margins?.toBuilder();
      _leftView = $v.leftView;
      _rightVerticalAlignment = $v.rightVerticalAlignment;
      _borderColor = $v.borderColor;
      _borderRadius = $v.borderRadius;
      _paddings = $v.paddings?.toBuilder();
      _splitGap = $v.splitGap;
      _background = $v.background;
      _borderWidth = $v.borderWidth;
      _rightView = $v.rightView;
      _splitPosition = $v.splitPosition;
      _subType = $v.subType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SplitViewComponent other) {
    _$v = other as _$SplitViewComponent;
  }

  @override
  void update(void Function(SplitViewComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SplitViewComponent build() => _build();

  _$SplitViewComponent _build() {
    _$SplitViewComponent _$result;
    try {
      _$result =
          _$v ??
          _$SplitViewComponent._(
            leftVerticalAlignment: leftVerticalAlignment,
            margins: _margins?.build(),
            leftView: leftView,
            rightVerticalAlignment: rightVerticalAlignment,
            borderColor: borderColor,
            borderRadius: borderRadius,
            paddings: _paddings?.build(),
            splitGap: splitGap,
            background: background,
            borderWidth: borderWidth,
            rightView: rightView,
            splitPosition: splitPosition,
            subType: subType,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'SplitViewComponent',
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
          r'SplitViewComponent',
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
