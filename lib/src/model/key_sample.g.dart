// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_sample.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KeySample extends KeySample {
  @override
  final int ts;
  @override
  final JsonObject? value;

  factory _$KeySample([void Function(KeySampleBuilder)? updates]) =>
      (KeySampleBuilder()..update(updates))._build();

  _$KeySample._({required this.ts, this.value}) : super._();
  @override
  KeySample rebuild(void Function(KeySampleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeySampleBuilder toBuilder() => KeySampleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeySample && ts == other.ts && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ts.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KeySample')
          ..add('ts', ts)
          ..add('value', value))
        .toString();
  }
}

class KeySampleBuilder implements Builder<KeySample, KeySampleBuilder> {
  _$KeySample? _$v;

  int? _ts;
  int? get ts => _$this._ts;
  set ts(int? ts) => _$this._ts = ts;

  JsonObject? _value;
  JsonObject? get value => _$this._value;
  set value(JsonObject? value) => _$this._value = value;

  KeySampleBuilder() {
    KeySample._defaults(this);
  }

  KeySampleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ts = $v.ts;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeySample other) {
    _$v = other as _$KeySample;
  }

  @override
  void update(void Function(KeySampleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeySample build() => _build();

  _$KeySample _build() {
    final _$result =
        _$v ??
        _$KeySample._(
          ts: BuiltValueNullFieldError.checkNotNull(ts, r'KeySample', 'ts'),
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
