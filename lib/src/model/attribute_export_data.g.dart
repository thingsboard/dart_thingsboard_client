// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_export_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributeExportData extends AttributeExportData {
  @override
  final String? key;
  @override
  final int? lastUpdateTs;
  @override
  final bool? booleanValue;
  @override
  final String? strValue;
  @override
  final int? longValue;
  @override
  final double? doubleValue;
  @override
  final String? jsonValue;

  factory _$AttributeExportData([
    void Function(AttributeExportDataBuilder)? updates,
  ]) => (AttributeExportDataBuilder()..update(updates))._build();

  _$AttributeExportData._({
    this.key,
    this.lastUpdateTs,
    this.booleanValue,
    this.strValue,
    this.longValue,
    this.doubleValue,
    this.jsonValue,
  }) : super._();
  @override
  AttributeExportData rebuild(
    void Function(AttributeExportDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AttributeExportDataBuilder toBuilder() =>
      AttributeExportDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributeExportData &&
        key == other.key &&
        lastUpdateTs == other.lastUpdateTs &&
        booleanValue == other.booleanValue &&
        strValue == other.strValue &&
        longValue == other.longValue &&
        doubleValue == other.doubleValue &&
        jsonValue == other.jsonValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, lastUpdateTs.hashCode);
    _$hash = $jc(_$hash, booleanValue.hashCode);
    _$hash = $jc(_$hash, strValue.hashCode);
    _$hash = $jc(_$hash, longValue.hashCode);
    _$hash = $jc(_$hash, doubleValue.hashCode);
    _$hash = $jc(_$hash, jsonValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttributeExportData')
          ..add('key', key)
          ..add('lastUpdateTs', lastUpdateTs)
          ..add('booleanValue', booleanValue)
          ..add('strValue', strValue)
          ..add('longValue', longValue)
          ..add('doubleValue', doubleValue)
          ..add('jsonValue', jsonValue))
        .toString();
  }
}

class AttributeExportDataBuilder
    implements Builder<AttributeExportData, AttributeExportDataBuilder> {
  _$AttributeExportData? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  int? _lastUpdateTs;
  int? get lastUpdateTs => _$this._lastUpdateTs;
  set lastUpdateTs(int? lastUpdateTs) => _$this._lastUpdateTs = lastUpdateTs;

  bool? _booleanValue;
  bool? get booleanValue => _$this._booleanValue;
  set booleanValue(bool? booleanValue) => _$this._booleanValue = booleanValue;

  String? _strValue;
  String? get strValue => _$this._strValue;
  set strValue(String? strValue) => _$this._strValue = strValue;

  int? _longValue;
  int? get longValue => _$this._longValue;
  set longValue(int? longValue) => _$this._longValue = longValue;

  double? _doubleValue;
  double? get doubleValue => _$this._doubleValue;
  set doubleValue(double? doubleValue) => _$this._doubleValue = doubleValue;

  String? _jsonValue;
  String? get jsonValue => _$this._jsonValue;
  set jsonValue(String? jsonValue) => _$this._jsonValue = jsonValue;

  AttributeExportDataBuilder() {
    AttributeExportData._defaults(this);
  }

  AttributeExportDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _lastUpdateTs = $v.lastUpdateTs;
      _booleanValue = $v.booleanValue;
      _strValue = $v.strValue;
      _longValue = $v.longValue;
      _doubleValue = $v.doubleValue;
      _jsonValue = $v.jsonValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributeExportData other) {
    _$v = other as _$AttributeExportData;
  }

  @override
  void update(void Function(AttributeExportDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttributeExportData build() => _build();

  _$AttributeExportData _build() {
    final _$result =
        _$v ??
        _$AttributeExportData._(
          key: key,
          lastUpdateTs: lastUpdateTs,
          booleanValue: booleanValue,
          strValue: strValue,
          longValue: longValue,
          doubleValue: doubleValue,
          jsonValue: jsonValue,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
