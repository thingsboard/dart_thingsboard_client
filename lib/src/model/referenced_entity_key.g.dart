// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referenced_entity_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReferencedEntityKey extends ReferencedEntityKey {
  @override
  final String? key;
  @override
  final ArgumentType? type;
  @override
  final AttributeScope? scope;

  factory _$ReferencedEntityKey([
    void Function(ReferencedEntityKeyBuilder)? updates,
  ]) => (ReferencedEntityKeyBuilder()..update(updates))._build();

  _$ReferencedEntityKey._({this.key, this.type, this.scope}) : super._();
  @override
  ReferencedEntityKey rebuild(
    void Function(ReferencedEntityKeyBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReferencedEntityKeyBuilder toBuilder() =>
      ReferencedEntityKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferencedEntityKey &&
        key == other.key &&
        type == other.type &&
        scope == other.scope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReferencedEntityKey')
          ..add('key', key)
          ..add('type', type)
          ..add('scope', scope))
        .toString();
  }
}

class ReferencedEntityKeyBuilder
    implements Builder<ReferencedEntityKey, ReferencedEntityKeyBuilder> {
  _$ReferencedEntityKey? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  ArgumentType? _type;
  ArgumentType? get type => _$this._type;
  set type(ArgumentType? type) => _$this._type = type;

  AttributeScope? _scope;
  AttributeScope? get scope => _$this._scope;
  set scope(AttributeScope? scope) => _$this._scope = scope;

  ReferencedEntityKeyBuilder() {
    ReferencedEntityKey._defaults(this);
  }

  ReferencedEntityKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _type = $v.type;
      _scope = $v.scope;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferencedEntityKey other) {
    _$v = other as _$ReferencedEntityKey;
  }

  @override
  void update(void Function(ReferencedEntityKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReferencedEntityKey build() => _build();

  _$ReferencedEntityKey _build() {
    final _$result =
        _$v ?? _$ReferencedEntityKey._(key: key, type: type, scope: scope);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
