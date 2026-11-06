// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_chain_note.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleChainNote extends RuleChainNote {
  @override
  final String? id;
  @override
  final int? x;
  @override
  final int? y;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String? content;
  @override
  final String? backgroundColor;
  @override
  final String? borderColor;
  @override
  final int? borderWidth;
  @override
  final bool? applyDefaultMarkdownStyle;
  @override
  final String? markdownCss;

  factory _$RuleChainNote([void Function(RuleChainNoteBuilder)? updates]) =>
      (RuleChainNoteBuilder()..update(updates))._build();

  _$RuleChainNote._({
    this.id,
    this.x,
    this.y,
    this.width,
    this.height,
    this.content,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.applyDefaultMarkdownStyle,
    this.markdownCss,
  }) : super._();
  @override
  RuleChainNote rebuild(void Function(RuleChainNoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleChainNoteBuilder toBuilder() => RuleChainNoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleChainNote &&
        id == other.id &&
        x == other.x &&
        y == other.y &&
        width == other.width &&
        height == other.height &&
        content == other.content &&
        backgroundColor == other.backgroundColor &&
        borderColor == other.borderColor &&
        borderWidth == other.borderWidth &&
        applyDefaultMarkdownStyle == other.applyDefaultMarkdownStyle &&
        markdownCss == other.markdownCss;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, x.hashCode);
    _$hash = $jc(_$hash, y.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, backgroundColor.hashCode);
    _$hash = $jc(_$hash, borderColor.hashCode);
    _$hash = $jc(_$hash, borderWidth.hashCode);
    _$hash = $jc(_$hash, applyDefaultMarkdownStyle.hashCode);
    _$hash = $jc(_$hash, markdownCss.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleChainNote')
          ..add('id', id)
          ..add('x', x)
          ..add('y', y)
          ..add('width', width)
          ..add('height', height)
          ..add('content', content)
          ..add('backgroundColor', backgroundColor)
          ..add('borderColor', borderColor)
          ..add('borderWidth', borderWidth)
          ..add('applyDefaultMarkdownStyle', applyDefaultMarkdownStyle)
          ..add('markdownCss', markdownCss))
        .toString();
  }
}

class RuleChainNoteBuilder
    implements Builder<RuleChainNote, RuleChainNoteBuilder> {
  _$RuleChainNote? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _x;
  int? get x => _$this._x;
  set x(int? x) => _$this._x = x;

  int? _y;
  int? get y => _$this._y;
  set y(int? y) => _$this._y = y;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _backgroundColor;
  String? get backgroundColor => _$this._backgroundColor;
  set backgroundColor(String? backgroundColor) =>
      _$this._backgroundColor = backgroundColor;

  String? _borderColor;
  String? get borderColor => _$this._borderColor;
  set borderColor(String? borderColor) => _$this._borderColor = borderColor;

  int? _borderWidth;
  int? get borderWidth => _$this._borderWidth;
  set borderWidth(int? borderWidth) => _$this._borderWidth = borderWidth;

  bool? _applyDefaultMarkdownStyle;
  bool? get applyDefaultMarkdownStyle => _$this._applyDefaultMarkdownStyle;
  set applyDefaultMarkdownStyle(bool? applyDefaultMarkdownStyle) =>
      _$this._applyDefaultMarkdownStyle = applyDefaultMarkdownStyle;

  String? _markdownCss;
  String? get markdownCss => _$this._markdownCss;
  set markdownCss(String? markdownCss) => _$this._markdownCss = markdownCss;

  RuleChainNoteBuilder() {
    RuleChainNote._defaults(this);
  }

  RuleChainNoteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _x = $v.x;
      _y = $v.y;
      _width = $v.width;
      _height = $v.height;
      _content = $v.content;
      _backgroundColor = $v.backgroundColor;
      _borderColor = $v.borderColor;
      _borderWidth = $v.borderWidth;
      _applyDefaultMarkdownStyle = $v.applyDefaultMarkdownStyle;
      _markdownCss = $v.markdownCss;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleChainNote other) {
    _$v = other as _$RuleChainNote;
  }

  @override
  void update(void Function(RuleChainNoteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleChainNote build() => _build();

  _$RuleChainNote _build() {
    final _$result =
        _$v ??
        _$RuleChainNote._(
          id: id,
          x: x,
          y: y,
          width: width,
          height: height,
          content: content,
          backgroundColor: backgroundColor,
          borderColor: borderColor,
          borderWidth: borderWidth,
          applyDefaultMarkdownStyle: applyDefaultMarkdownStyle,
          markdownCss: markdownCss,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
