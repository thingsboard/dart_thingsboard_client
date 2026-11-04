// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'has_id_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HasIdObject extends HasIdObject {
  @override
  final JsonObject? id;

  factory _$HasIdObject([void Function(HasIdObjectBuilder)? updates]) =>
      (HasIdObjectBuilder()..update(updates))._build();

  _$HasIdObject._({this.id}) : super._();
  @override
  HasIdObject rebuild(void Function(HasIdObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HasIdObjectBuilder toBuilder() => HasIdObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasIdObject && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'HasIdObject',
    )..add('id', id)).toString();
  }
}

class HasIdObjectBuilder implements Builder<HasIdObject, HasIdObjectBuilder> {
  _$HasIdObject? _$v;

  JsonObject? _id;
  JsonObject? get id => _$this._id;
  set id(JsonObject? id) => _$this._id = id;

  HasIdObjectBuilder() {
    HasIdObject._defaults(this);
  }

  HasIdObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HasIdObject other) {
    _$v = other as _$HasIdObject;
  }

  @override
  void update(void Function(HasIdObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HasIdObject build() => _build();

  _$HasIdObject _build() {
    final _$result = _$v ?? _$HasIdObject._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
