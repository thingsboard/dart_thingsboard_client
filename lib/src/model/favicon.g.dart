// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favicon.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Favicon extends Favicon {
  @override
  final String? url;

  factory _$Favicon([void Function(FaviconBuilder)? updates]) =>
      (FaviconBuilder()..update(updates))._build();

  _$Favicon._({this.url}) : super._();
  @override
  Favicon rebuild(void Function(FaviconBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FaviconBuilder toBuilder() => FaviconBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Favicon && url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'Favicon',
    )..add('url', url)).toString();
  }
}

class FaviconBuilder implements Builder<Favicon, FaviconBuilder> {
  _$Favicon? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  FaviconBuilder() {
    Favicon._defaults(this);
  }

  FaviconBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Favicon other) {
    _$v = other as _$Favicon;
  }

  @override
  void update(void Function(FaviconBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Favicon build() => _build();

  _$Favicon _build() {
    final _$result = _$v ?? _$Favicon._(url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
