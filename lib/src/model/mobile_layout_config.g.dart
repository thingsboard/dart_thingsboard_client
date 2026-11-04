// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_layout_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MobileLayoutConfig extends MobileLayoutConfig {
  @override
  final BuiltList<MobilePage>? pages;

  factory _$MobileLayoutConfig([
    void Function(MobileLayoutConfigBuilder)? updates,
  ]) => (MobileLayoutConfigBuilder()..update(updates))._build();

  _$MobileLayoutConfig._({this.pages}) : super._();
  @override
  MobileLayoutConfig rebuild(
    void Function(MobileLayoutConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MobileLayoutConfigBuilder toBuilder() =>
      MobileLayoutConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MobileLayoutConfig && pages == other.pages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'MobileLayoutConfig',
    )..add('pages', pages)).toString();
  }
}

class MobileLayoutConfigBuilder
    implements Builder<MobileLayoutConfig, MobileLayoutConfigBuilder> {
  _$MobileLayoutConfig? _$v;

  ListBuilder<MobilePage>? _pages;
  ListBuilder<MobilePage> get pages =>
      _$this._pages ??= ListBuilder<MobilePage>();
  set pages(ListBuilder<MobilePage>? pages) => _$this._pages = pages;

  MobileLayoutConfigBuilder() {
    MobileLayoutConfig._defaults(this);
  }

  MobileLayoutConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pages = $v.pages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MobileLayoutConfig other) {
    _$v = other as _$MobileLayoutConfig;
  }

  @override
  void update(void Function(MobileLayoutConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MobileLayoutConfig build() => _build();

  _$MobileLayoutConfig _build() {
    _$MobileLayoutConfig _$result;
    try {
      _$result = _$v ?? _$MobileLayoutConfig._(pages: _pages?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pages';
        _pages?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MobileLayoutConfig',
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
