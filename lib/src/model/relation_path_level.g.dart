// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relation_path_level.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RelationPathLevel extends RelationPathLevel {
  @override
  final EntitySearchDirection direction;
  @override
  final String relationType;

  factory _$RelationPathLevel([
    void Function(RelationPathLevelBuilder)? updates,
  ]) => (RelationPathLevelBuilder()..update(updates))._build();

  _$RelationPathLevel._({required this.direction, required this.relationType})
    : super._();
  @override
  RelationPathLevel rebuild(void Function(RelationPathLevelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationPathLevelBuilder toBuilder() =>
      RelationPathLevelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationPathLevel &&
        direction == other.direction &&
        relationType == other.relationType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, relationType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RelationPathLevel')
          ..add('direction', direction)
          ..add('relationType', relationType))
        .toString();
  }
}

class RelationPathLevelBuilder
    implements Builder<RelationPathLevel, RelationPathLevelBuilder> {
  _$RelationPathLevel? _$v;

  EntitySearchDirection? _direction;
  EntitySearchDirection? get direction => _$this._direction;
  set direction(EntitySearchDirection? direction) =>
      _$this._direction = direction;

  String? _relationType;
  String? get relationType => _$this._relationType;
  set relationType(String? relationType) => _$this._relationType = relationType;

  RelationPathLevelBuilder() {
    RelationPathLevel._defaults(this);
  }

  RelationPathLevelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _direction = $v.direction;
      _relationType = $v.relationType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationPathLevel other) {
    _$v = other as _$RelationPathLevel;
  }

  @override
  void update(void Function(RelationPathLevelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelationPathLevel build() => _build();

  _$RelationPathLevel _build() {
    final _$result =
        _$v ??
        _$RelationPathLevel._(
          direction: BuiltValueNullFieldError.checkNotNull(
            direction,
            r'RelationPathLevel',
            'direction',
          ),
          relationType: BuiltValueNullFieldError.checkNotNull(
            relationType,
            r'RelationPathLevel',
            'relationType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
