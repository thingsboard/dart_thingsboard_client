// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tb_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class TbContentBuilder {
  void replace(TbContent other);
  void update(void Function(TbContentBuilder) updates);
  String? get contentType;
  set contentType(String? contentType);
}

class _$$TbContent extends $TbContent {
  @override
  final String contentType;

  factory _$$TbContent([void Function($TbContentBuilder)? updates]) =>
      ($TbContentBuilder()..update(updates))._build();

  _$$TbContent._({required this.contentType}) : super._();
  @override
  $TbContent rebuild(void Function($TbContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $TbContentBuilder toBuilder() => $TbContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $TbContent && contentType == other.contentType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'$TbContent',
    )..add('contentType', contentType)).toString();
  }
}

class $TbContentBuilder
    implements Builder<$TbContent, $TbContentBuilder>, TbContentBuilder {
  _$$TbContent? _$v;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(covariant String? contentType) =>
      _$this._contentType = contentType;

  $TbContentBuilder() {
    $TbContent._defaults(this);
  }

  $TbContentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contentType = $v.contentType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $TbContent other) {
    _$v = other as _$$TbContent;
  }

  @override
  void update(void Function($TbContentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $TbContent build() => _build();

  _$$TbContent _build() {
    final _$result =
        _$v ??
        _$$TbContent._(
          contentType: BuiltValueNullFieldError.checkNotNull(
            contentType,
            r'$TbContent',
            'contentType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
