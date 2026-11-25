// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_redirect_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MobileRedirectParams extends MobileRedirectParams {
  @override
  final String? scheme;
  @override
  final String? host;

  factory _$MobileRedirectParams([
    void Function(MobileRedirectParamsBuilder)? updates,
  ]) => (MobileRedirectParamsBuilder()..update(updates))._build();

  _$MobileRedirectParams._({this.scheme, this.host}) : super._();
  @override
  MobileRedirectParams rebuild(
    void Function(MobileRedirectParamsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MobileRedirectParamsBuilder toBuilder() =>
      MobileRedirectParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MobileRedirectParams &&
        scheme == other.scheme &&
        host == other.host;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, scheme.hashCode);
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MobileRedirectParams')
          ..add('scheme', scheme)
          ..add('host', host))
        .toString();
  }
}

class MobileRedirectParamsBuilder
    implements Builder<MobileRedirectParams, MobileRedirectParamsBuilder> {
  _$MobileRedirectParams? _$v;

  String? _scheme;
  String? get scheme => _$this._scheme;
  set scheme(String? scheme) => _$this._scheme = scheme;

  String? _host;
  String? get host => _$this._host;
  set host(String? host) => _$this._host = host;

  MobileRedirectParamsBuilder() {
    MobileRedirectParams._defaults(this);
  }

  MobileRedirectParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scheme = $v.scheme;
      _host = $v.host;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MobileRedirectParams other) {
    _$v = other as _$MobileRedirectParams;
  }

  @override
  void update(void Function(MobileRedirectParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MobileRedirectParams build() => _build();

  _$MobileRedirectParams _build() {
    final _$result =
        _$v ?? _$MobileRedirectParams._(scheme: scheme, host: host);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
