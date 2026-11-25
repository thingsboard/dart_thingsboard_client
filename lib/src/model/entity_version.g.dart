// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_version.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityVersion extends EntityVersion {
  @override
  final int? timestamp;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? author;

  factory _$EntityVersion([void Function(EntityVersionBuilder)? updates]) =>
      (EntityVersionBuilder()..update(updates))._build();

  _$EntityVersion._({this.timestamp, this.id, this.name, this.author})
    : super._();
  @override
  EntityVersion rebuild(void Function(EntityVersionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityVersionBuilder toBuilder() => EntityVersionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityVersion &&
        timestamp == other.timestamp &&
        id == other.id &&
        name == other.name &&
        author == other.author;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityVersion')
          ..add('timestamp', timestamp)
          ..add('id', id)
          ..add('name', name)
          ..add('author', author))
        .toString();
  }
}

class EntityVersionBuilder
    implements Builder<EntityVersion, EntityVersionBuilder> {
  _$EntityVersion? _$v;

  int? _timestamp;
  int? get timestamp => _$this._timestamp;
  set timestamp(int? timestamp) => _$this._timestamp = timestamp;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  EntityVersionBuilder() {
    EntityVersion._defaults(this);
  }

  EntityVersionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _id = $v.id;
      _name = $v.name;
      _author = $v.author;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityVersion other) {
    _$v = other as _$EntityVersion;
  }

  @override
  void update(void Function(EntityVersionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityVersion build() => _build();

  _$EntityVersion _build() {
    final _$result =
        _$v ??
        _$EntityVersion._(
          timestamp: timestamp,
          id: id,
          name: name,
          author: author,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
