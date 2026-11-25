// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tb_text_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TbTextContent extends TbTextContent {
  @override
  final String text;
  @override
  final String contentType;

  factory _$TbTextContent([void Function(TbTextContentBuilder)? updates]) =>
      (TbTextContentBuilder()..update(updates))._build();

  _$TbTextContent._({required this.text, required this.contentType})
    : super._();
  @override
  TbTextContent rebuild(void Function(TbTextContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TbTextContentBuilder toBuilder() => TbTextContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TbTextContent &&
        text == other.text &&
        contentType == other.contentType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TbTextContent')
          ..add('text', text)
          ..add('contentType', contentType))
        .toString();
  }
}

class TbTextContentBuilder
    implements Builder<TbTextContent, TbTextContentBuilder>, TbContentBuilder {
  _$TbTextContent? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(covariant String? text) => _$this._text = text;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(covariant String? contentType) =>
      _$this._contentType = contentType;

  TbTextContentBuilder() {
    TbTextContent._defaults(this);
  }

  TbTextContentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _contentType = $v.contentType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TbTextContent other) {
    _$v = other as _$TbTextContent;
  }

  @override
  void update(void Function(TbTextContentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TbTextContent build() => _build();

  _$TbTextContent _build() {
    final _$result =
        _$v ??
        _$TbTextContent._(
          text: BuiltValueNullFieldError.checkNotNull(
            text,
            r'TbTextContent',
            'text',
          ),
          contentType: BuiltValueNullFieldError.checkNotNull(
            contentType,
            r'TbTextContent',
            'contentType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
