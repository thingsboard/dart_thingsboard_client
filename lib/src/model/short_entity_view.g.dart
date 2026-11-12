// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_entity_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShortEntityView extends ShortEntityView {
  @override
  final EntityId id;
  @override
  final String? name;

  factory _$ShortEntityView([void Function(ShortEntityViewBuilder)? updates]) =>
      (ShortEntityViewBuilder()..update(updates))._build();

  _$ShortEntityView._({required this.id, this.name}) : super._();
  @override
  ShortEntityView rebuild(void Function(ShortEntityViewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShortEntityViewBuilder toBuilder() => ShortEntityViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShortEntityView && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShortEntityView')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ShortEntityViewBuilder
    implements Builder<ShortEntityView, ShortEntityViewBuilder> {
  _$ShortEntityView? _$v;

  EntityId? _id;
  EntityId? get id => _$this._id;
  set id(EntityId? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ShortEntityViewBuilder() {
    ShortEntityView._defaults(this);
  }

  ShortEntityViewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShortEntityView other) {
    _$v = other as _$ShortEntityView;
  }

  @override
  void update(void Function(ShortEntityViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShortEntityView build() => _build();

  _$ShortEntityView _build() {
    final _$result =
        _$v ??
        _$ShortEntityView._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'ShortEntityView',
            'id',
          ),
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
