// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_value_source_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleValueSourceConfig extends SimpleValueSourceConfig {
  @override
  final ValueSourceType? type;
  @override
  final double? value;
  @override
  final String? latestKeyType;
  @override
  final String? latestKey;
  @override
  final String? entityKeyType;
  @override
  final String? entityAlias;
  @override
  final String? entityKey;

  factory _$SimpleValueSourceConfig([
    void Function(SimpleValueSourceConfigBuilder)? updates,
  ]) => (SimpleValueSourceConfigBuilder()..update(updates))._build();

  _$SimpleValueSourceConfig._({
    this.type,
    this.value,
    this.latestKeyType,
    this.latestKey,
    this.entityKeyType,
    this.entityAlias,
    this.entityKey,
  }) : super._();
  @override
  SimpleValueSourceConfig rebuild(
    void Function(SimpleValueSourceConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SimpleValueSourceConfigBuilder toBuilder() =>
      SimpleValueSourceConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleValueSourceConfig &&
        type == other.type &&
        value == other.value &&
        latestKeyType == other.latestKeyType &&
        latestKey == other.latestKey &&
        entityKeyType == other.entityKeyType &&
        entityAlias == other.entityAlias &&
        entityKey == other.entityKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, latestKeyType.hashCode);
    _$hash = $jc(_$hash, latestKey.hashCode);
    _$hash = $jc(_$hash, entityKeyType.hashCode);
    _$hash = $jc(_$hash, entityAlias.hashCode);
    _$hash = $jc(_$hash, entityKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SimpleValueSourceConfig')
          ..add('type', type)
          ..add('value', value)
          ..add('latestKeyType', latestKeyType)
          ..add('latestKey', latestKey)
          ..add('entityKeyType', entityKeyType)
          ..add('entityAlias', entityAlias)
          ..add('entityKey', entityKey))
        .toString();
  }
}

class SimpleValueSourceConfigBuilder
    implements
        Builder<SimpleValueSourceConfig, SimpleValueSourceConfigBuilder> {
  _$SimpleValueSourceConfig? _$v;

  ValueSourceType? _type;
  ValueSourceType? get type => _$this._type;
  set type(ValueSourceType? type) => _$this._type = type;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  String? _latestKeyType;
  String? get latestKeyType => _$this._latestKeyType;
  set latestKeyType(String? latestKeyType) =>
      _$this._latestKeyType = latestKeyType;

  String? _latestKey;
  String? get latestKey => _$this._latestKey;
  set latestKey(String? latestKey) => _$this._latestKey = latestKey;

  String? _entityKeyType;
  String? get entityKeyType => _$this._entityKeyType;
  set entityKeyType(String? entityKeyType) =>
      _$this._entityKeyType = entityKeyType;

  String? _entityAlias;
  String? get entityAlias => _$this._entityAlias;
  set entityAlias(String? entityAlias) => _$this._entityAlias = entityAlias;

  String? _entityKey;
  String? get entityKey => _$this._entityKey;
  set entityKey(String? entityKey) => _$this._entityKey = entityKey;

  SimpleValueSourceConfigBuilder() {
    SimpleValueSourceConfig._defaults(this);
  }

  SimpleValueSourceConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _value = $v.value;
      _latestKeyType = $v.latestKeyType;
      _latestKey = $v.latestKey;
      _entityKeyType = $v.entityKeyType;
      _entityAlias = $v.entityAlias;
      _entityKey = $v.entityKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleValueSourceConfig other) {
    _$v = other as _$SimpleValueSourceConfig;
  }

  @override
  void update(void Function(SimpleValueSourceConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SimpleValueSourceConfig build() => _build();

  _$SimpleValueSourceConfig _build() {
    final _$result =
        _$v ??
        _$SimpleValueSourceConfig._(
          type: type,
          value: value,
          latestKeyType: latestKeyType,
          latestKey: latestKey,
          entityKeyType: entityKeyType,
          entityAlias: entityAlias,
          entityKey: entityKey,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
