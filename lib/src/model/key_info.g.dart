// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KeyInfo extends KeyInfo {
  @override
  final String key;
  @override
  final KeySample? sample;

  factory _$KeyInfo([void Function(KeyInfoBuilder)? updates]) =>
      (KeyInfoBuilder()..update(updates))._build();

  _$KeyInfo._({required this.key, this.sample}) : super._();
  @override
  KeyInfo rebuild(void Function(KeyInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeyInfoBuilder toBuilder() => KeyInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeyInfo && key == other.key && sample == other.sample;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, sample.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KeyInfo')
          ..add('key', key)
          ..add('sample', sample))
        .toString();
  }
}

class KeyInfoBuilder implements Builder<KeyInfo, KeyInfoBuilder> {
  _$KeyInfo? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  KeySampleBuilder? _sample;
  KeySampleBuilder get sample => _$this._sample ??= KeySampleBuilder();
  set sample(KeySampleBuilder? sample) => _$this._sample = sample;

  KeyInfoBuilder() {
    KeyInfo._defaults(this);
  }

  KeyInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _sample = $v.sample?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeyInfo other) {
    _$v = other as _$KeyInfo;
  }

  @override
  void update(void Function(KeyInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeyInfo build() => _build();

  _$KeyInfo _build() {
    _$KeyInfo _$result;
    try {
      _$result =
          _$v ??
          _$KeyInfo._(
            key: BuiltValueNullFieldError.checkNotNull(key, r'KeyInfo', 'key'),
            sample: _sample?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sample';
        _sample?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'KeyInfo',
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
