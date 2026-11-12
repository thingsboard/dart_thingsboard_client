// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lw_m2m_version.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LwM2mVersion extends LwM2mVersion {
  @override
  final bool? supported;

  factory _$LwM2mVersion([void Function(LwM2mVersionBuilder)? updates]) =>
      (LwM2mVersionBuilder()..update(updates))._build();

  _$LwM2mVersion._({this.supported}) : super._();
  @override
  LwM2mVersion rebuild(void Function(LwM2mVersionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LwM2mVersionBuilder toBuilder() => LwM2mVersionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LwM2mVersion && supported == other.supported;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, supported.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'LwM2mVersion',
    )..add('supported', supported)).toString();
  }
}

class LwM2mVersionBuilder
    implements Builder<LwM2mVersion, LwM2mVersionBuilder> {
  _$LwM2mVersion? _$v;

  bool? _supported;
  bool? get supported => _$this._supported;
  set supported(bool? supported) => _$this._supported = supported;

  LwM2mVersionBuilder() {
    LwM2mVersion._defaults(this);
  }

  LwM2mVersionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _supported = $v.supported;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LwM2mVersion other) {
    _$v = other as _$LwM2mVersion;
  }

  @override
  void update(void Function(LwM2mVersionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LwM2mVersion build() => _build();

  _$LwM2mVersion _build() {
    final _$result = _$v ?? _$LwM2mVersion._(supported: supported);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
