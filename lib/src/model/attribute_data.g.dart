// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributeData extends AttributeData {
  @override
  final int? lastUpdateTs;
  @override
  final String? key;
  @override
  final JsonObject? value;

  factory _$AttributeData([void Function(AttributeDataBuilder)? updates]) =>
      (AttributeDataBuilder()..update(updates))._build();

  _$AttributeData._({this.lastUpdateTs, this.key, this.value}) : super._();
  @override
  AttributeData rebuild(void Function(AttributeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttributeDataBuilder toBuilder() => AttributeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributeData &&
        lastUpdateTs == other.lastUpdateTs &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lastUpdateTs.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttributeData')
          ..add('lastUpdateTs', lastUpdateTs)
          ..add('key', key)
          ..add('value', value))
        .toString();
  }
}

class AttributeDataBuilder
    implements Builder<AttributeData, AttributeDataBuilder> {
  _$AttributeData? _$v;

  int? _lastUpdateTs;
  int? get lastUpdateTs => _$this._lastUpdateTs;
  set lastUpdateTs(int? lastUpdateTs) => _$this._lastUpdateTs = lastUpdateTs;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  JsonObject? _value;
  JsonObject? get value => _$this._value;
  set value(JsonObject? value) => _$this._value = value;

  AttributeDataBuilder() {
    AttributeData._defaults(this);
  }

  AttributeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastUpdateTs = $v.lastUpdateTs;
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributeData other) {
    _$v = other as _$AttributeData;
  }

  @override
  void update(void Function(AttributeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttributeData build() => _build();

  _$AttributeData _build() {
    final _$result =
        _$v ??
        _$AttributeData._(lastUpdateTs: lastUpdateTs, key: key, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
