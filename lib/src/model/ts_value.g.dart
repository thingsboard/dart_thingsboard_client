// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ts_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TsValue extends TsValue {
  @override
  final int? ts;
  @override
  final String? value;
  @override
  final int? count;

  factory _$TsValue([void Function(TsValueBuilder)? updates]) =>
      (TsValueBuilder()..update(updates))._build();

  _$TsValue._({this.ts, this.value, this.count}) : super._();
  @override
  TsValue rebuild(void Function(TsValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TsValueBuilder toBuilder() => TsValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TsValue &&
        ts == other.ts &&
        value == other.value &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ts.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TsValue')
          ..add('ts', ts)
          ..add('value', value)
          ..add('count', count))
        .toString();
  }
}

class TsValueBuilder implements Builder<TsValue, TsValueBuilder> {
  _$TsValue? _$v;

  int? _ts;
  int? get ts => _$this._ts;
  set ts(int? ts) => _$this._ts = ts;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  TsValueBuilder() {
    TsValue._defaults(this);
  }

  TsValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ts = $v.ts;
      _value = $v.value;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TsValue other) {
    _$v = other as _$TsValue;
  }

  @override
  void update(void Function(TsValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TsValue build() => _build();

  _$TsValue _build() {
    final _$result = _$v ?? _$TsValue._(ts: ts, value: value, count: count);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
