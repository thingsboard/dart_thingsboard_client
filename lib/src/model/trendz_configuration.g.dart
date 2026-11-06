// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trendz_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrendzConfiguration extends TrendzConfiguration {
  @override
  final String? trendzUrl;
  @override
  final String? tbUrl;

  factory _$TrendzConfiguration([
    void Function(TrendzConfigurationBuilder)? updates,
  ]) => (TrendzConfigurationBuilder()..update(updates))._build();

  _$TrendzConfiguration._({this.trendzUrl, this.tbUrl}) : super._();
  @override
  TrendzConfiguration rebuild(
    void Function(TrendzConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TrendzConfigurationBuilder toBuilder() =>
      TrendzConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendzConfiguration &&
        trendzUrl == other.trendzUrl &&
        tbUrl == other.tbUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trendzUrl.hashCode);
    _$hash = $jc(_$hash, tbUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrendzConfiguration')
          ..add('trendzUrl', trendzUrl)
          ..add('tbUrl', tbUrl))
        .toString();
  }
}

class TrendzConfigurationBuilder
    implements Builder<TrendzConfiguration, TrendzConfigurationBuilder> {
  _$TrendzConfiguration? _$v;

  String? _trendzUrl;
  String? get trendzUrl => _$this._trendzUrl;
  set trendzUrl(String? trendzUrl) => _$this._trendzUrl = trendzUrl;

  String? _tbUrl;
  String? get tbUrl => _$this._tbUrl;
  set tbUrl(String? tbUrl) => _$this._tbUrl = tbUrl;

  TrendzConfigurationBuilder() {
    TrendzConfiguration._defaults(this);
  }

  TrendzConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trendzUrl = $v.trendzUrl;
      _tbUrl = $v.tbUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendzConfiguration other) {
    _$v = other as _$TrendzConfiguration;
  }

  @override
  void update(void Function(TrendzConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrendzConfiguration build() => _build();

  _$TrendzConfiguration _build() {
    final _$result =
        _$v ?? _$TrendzConfiguration._(trendzUrl: trendzUrl, tbUrl: tbUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
