// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Model extends Model {
  @override
  final String? name;
  @override
  final JsonObject? info;
  @override
  final String? photo;

  factory _$Model([void Function(ModelBuilder)? updates]) =>
      (ModelBuilder()..update(updates))._build();

  _$Model._({this.name, this.info, this.photo}) : super._();
  @override
  Model rebuild(void Function(ModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelBuilder toBuilder() => ModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Model &&
        name == other.name &&
        info == other.info &&
        photo == other.photo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Model')
          ..add('name', name)
          ..add('info', info)
          ..add('photo', photo))
        .toString();
  }
}

class ModelBuilder implements Builder<Model, ModelBuilder> {
  _$Model? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  JsonObject? _info;
  JsonObject? get info => _$this._info;
  set info(JsonObject? info) => _$this._info = info;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  ModelBuilder() {
    Model._defaults(this);
  }

  ModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _info = $v.info;
      _photo = $v.photo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Model other) {
    _$v = other as _$Model;
  }

  @override
  void update(void Function(ModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Model build() => _build();

  _$Model _build() {
    final _$result = _$v ?? _$Model._(name: name, info: info, photo: photo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
