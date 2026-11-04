// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ts_kv_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TsKvEntry extends TsKvEntry {
  @override
  final int? ts;
  @override
  final JsonObject? value;
  @override
  final String? key;
  @override
  final double? doubleValue;
  @override
  final int? longValue;
  @override
  final bool? booleanValue;
  @override
  final String? valueAsString;
  @override
  final DataType? dataType;
  @override
  final String? jsonValue;
  @override
  final String? strValue;
  @override
  final int? version;

  factory _$TsKvEntry([void Function(TsKvEntryBuilder)? updates]) =>
      (TsKvEntryBuilder()..update(updates))._build();

  _$TsKvEntry._({
    this.ts,
    this.value,
    this.key,
    this.doubleValue,
    this.longValue,
    this.booleanValue,
    this.valueAsString,
    this.dataType,
    this.jsonValue,
    this.strValue,
    this.version,
  }) : super._();
  @override
  TsKvEntry rebuild(void Function(TsKvEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TsKvEntryBuilder toBuilder() => TsKvEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TsKvEntry &&
        ts == other.ts &&
        value == other.value &&
        key == other.key &&
        doubleValue == other.doubleValue &&
        longValue == other.longValue &&
        booleanValue == other.booleanValue &&
        valueAsString == other.valueAsString &&
        dataType == other.dataType &&
        jsonValue == other.jsonValue &&
        strValue == other.strValue &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ts.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, doubleValue.hashCode);
    _$hash = $jc(_$hash, longValue.hashCode);
    _$hash = $jc(_$hash, booleanValue.hashCode);
    _$hash = $jc(_$hash, valueAsString.hashCode);
    _$hash = $jc(_$hash, dataType.hashCode);
    _$hash = $jc(_$hash, jsonValue.hashCode);
    _$hash = $jc(_$hash, strValue.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TsKvEntry')
          ..add('ts', ts)
          ..add('value', value)
          ..add('key', key)
          ..add('doubleValue', doubleValue)
          ..add('longValue', longValue)
          ..add('booleanValue', booleanValue)
          ..add('valueAsString', valueAsString)
          ..add('dataType', dataType)
          ..add('jsonValue', jsonValue)
          ..add('strValue', strValue)
          ..add('version', version))
        .toString();
  }
}

class TsKvEntryBuilder implements Builder<TsKvEntry, TsKvEntryBuilder> {
  _$TsKvEntry? _$v;

  int? _ts;
  int? get ts => _$this._ts;
  set ts(int? ts) => _$this._ts = ts;

  JsonObject? _value;
  JsonObject? get value => _$this._value;
  set value(JsonObject? value) => _$this._value = value;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  double? _doubleValue;
  double? get doubleValue => _$this._doubleValue;
  set doubleValue(double? doubleValue) => _$this._doubleValue = doubleValue;

  int? _longValue;
  int? get longValue => _$this._longValue;
  set longValue(int? longValue) => _$this._longValue = longValue;

  bool? _booleanValue;
  bool? get booleanValue => _$this._booleanValue;
  set booleanValue(bool? booleanValue) => _$this._booleanValue = booleanValue;

  String? _valueAsString;
  String? get valueAsString => _$this._valueAsString;
  set valueAsString(String? valueAsString) =>
      _$this._valueAsString = valueAsString;

  DataType? _dataType;
  DataType? get dataType => _$this._dataType;
  set dataType(DataType? dataType) => _$this._dataType = dataType;

  String? _jsonValue;
  String? get jsonValue => _$this._jsonValue;
  set jsonValue(String? jsonValue) => _$this._jsonValue = jsonValue;

  String? _strValue;
  String? get strValue => _$this._strValue;
  set strValue(String? strValue) => _$this._strValue = strValue;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  TsKvEntryBuilder() {
    TsKvEntry._defaults(this);
  }

  TsKvEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ts = $v.ts;
      _value = $v.value;
      _key = $v.key;
      _doubleValue = $v.doubleValue;
      _longValue = $v.longValue;
      _booleanValue = $v.booleanValue;
      _valueAsString = $v.valueAsString;
      _dataType = $v.dataType;
      _jsonValue = $v.jsonValue;
      _strValue = $v.strValue;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TsKvEntry other) {
    _$v = other as _$TsKvEntry;
  }

  @override
  void update(void Function(TsKvEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TsKvEntry build() => _build();

  _$TsKvEntry _build() {
    final _$result =
        _$v ??
        _$TsKvEntry._(
          ts: ts,
          value: value,
          key: key,
          doubleValue: doubleValue,
          longValue: longValue,
          booleanValue: booleanValue,
          valueAsString: valueAsString,
          dataType: dataType,
          jsonValue: jsonValue,
          strValue: strValue,
          version: version,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
