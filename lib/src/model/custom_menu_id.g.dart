// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_menu_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomMenuId extends CustomMenuId {
  @override
  final String id;

  factory _$CustomMenuId([void Function(CustomMenuIdBuilder)? updates]) =>
      (CustomMenuIdBuilder()..update(updates))._build();

  _$CustomMenuId._({required this.id}) : super._();
  @override
  CustomMenuId rebuild(void Function(CustomMenuIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomMenuIdBuilder toBuilder() => CustomMenuIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomMenuId && id == other.id;
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
      r'CustomMenuId',
    )..add('id', id)).toString();
  }
}

class CustomMenuIdBuilder
    implements Builder<CustomMenuId, CustomMenuIdBuilder> {
  _$CustomMenuId? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  CustomMenuIdBuilder() {
    CustomMenuId._defaults(this);
  }

  CustomMenuIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomMenuId other) {
    _$v = other as _$CustomMenuId;
  }

  @override
  void update(void Function(CustomMenuIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomMenuId build() => _build();

  _$CustomMenuId _build() {
    final _$result =
        _$v ??
        _$CustomMenuId._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'CustomMenuId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
