// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ts_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TsData extends TsData {
  @override
  final int? ts;
  @override
  final JsonObject? value;

  factory _$TsData([void Function(TsDataBuilder)? updates]) =>
      (TsDataBuilder()..update(updates))._build();

  _$TsData._({this.ts, this.value}) : super._();
  @override
  TsData rebuild(void Function(TsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TsDataBuilder toBuilder() => TsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TsData && ts == other.ts && value == other.value;
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
    return (newBuiltValueToStringHelper(r'TsData')
          ..add('ts', ts)
          ..add('value', value))
        .toString();
  }
}

class TsDataBuilder implements Builder<TsData, TsDataBuilder> {
  _$TsData? _$v;

  int? _ts;
  int? get ts => _$this._ts;
  set ts(int? ts) => _$this._ts = ts;

  JsonObject? _value;
  JsonObject? get value => _$this._value;
  set value(JsonObject? value) => _$this._value = value;

  TsDataBuilder() {
    TsData._defaults(this);
  }

  TsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ts = $v.ts;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TsData other) {
    _$v = other as _$TsData;
  }

  @override
  void update(void Function(TsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TsData build() => _build();

  _$TsData _build() {
    final _$result = _$v ?? _$TsData._(ts: ts, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
