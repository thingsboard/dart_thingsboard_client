// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trendz_view_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrendzViewConfig extends TrendzViewConfig {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final BuiltList<JsonObject?>? runtimeFilters;

  factory _$TrendzViewConfig([
    void Function(TrendzViewConfigBuilder)? updates,
  ]) => (TrendzViewConfigBuilder()..update(updates))._build();

  _$TrendzViewConfig._({this.id, this.name, this.runtimeFilters}) : super._();
  @override
  TrendzViewConfig rebuild(void Function(TrendzViewConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrendzViewConfigBuilder toBuilder() =>
      TrendzViewConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendzViewConfig &&
        id == other.id &&
        name == other.name &&
        runtimeFilters == other.runtimeFilters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, runtimeFilters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrendzViewConfig')
          ..add('id', id)
          ..add('name', name)
          ..add('runtimeFilters', runtimeFilters))
        .toString();
  }
}

class TrendzViewConfigBuilder
    implements Builder<TrendzViewConfig, TrendzViewConfigBuilder> {
  _$TrendzViewConfig? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<JsonObject?>? _runtimeFilters;
  ListBuilder<JsonObject?> get runtimeFilters =>
      _$this._runtimeFilters ??= ListBuilder<JsonObject?>();
  set runtimeFilters(ListBuilder<JsonObject?>? runtimeFilters) =>
      _$this._runtimeFilters = runtimeFilters;

  TrendzViewConfigBuilder() {
    TrendzViewConfig._defaults(this);
  }

  TrendzViewConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _runtimeFilters = $v.runtimeFilters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendzViewConfig other) {
    _$v = other as _$TrendzViewConfig;
  }

  @override
  void update(void Function(TrendzViewConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrendzViewConfig build() => _build();

  _$TrendzViewConfig _build() {
    _$TrendzViewConfig _$result;
    try {
      _$result =
          _$v ??
          _$TrendzViewConfig._(
            id: id,
            name: name,
            runtimeFilters: _runtimeFilters?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'runtimeFilters';
        _runtimeFilters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TrendzViewConfig',
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
